package com.aptech.library.management.utils;

import java.awt.event.ActionEvent;
import java.util.Collections;
import java.util.List;

import javax.swing.AbstractAction;
import javax.swing.JTextField;
import javax.swing.SwingUtilities;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.text.BadLocationException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Autocomplete implements DocumentListener {
  private static enum Mode {
    INSERT,
    COMPLETION
  }

  private static final Logger LOGGER = LogManager.getLogger();
  private JTextField textField;
  private final List<String> keywords;
  private Mode mode = Mode.INSERT;

  public Autocomplete(JTextField textField, List<String> keywords) {
    this.textField = textField;
    this.keywords = keywords;
    Collections.sort(keywords);
  }

  @Override
  public void changedUpdate(DocumentEvent event) {

  }

  @Override
  public void removeUpdate(DocumentEvent event) {

  }

  @Override
  public void insertUpdate(DocumentEvent event) {
    if (event.getLength() != 1) {
      return;
    }

    int pos = event.getOffset();
    String content = null;

    try {
      content = textField.getText(0, pos + 1);
    } catch (BadLocationException e) {
      LOGGER.error("Error handling autocomplete.", e);
    }

    int w;
    for (w = pos; w >= 0; w--) {
      if (!Character.isLetter(content.charAt(w))) {
        break;
      }
    }

    if (pos - w < 2) {
      return;
    }

    String prefix = content.substring(w + 1);
    int n = Collections.binarySearch(keywords, prefix);

    if (n < 0 && -n <= keywords.size()) {
      String match = keywords.get(-n - 1);

      if (match.startsWith(prefix)) {
        String completion = match.substring(pos - w);

        SwingUtilities.invokeLater(new CompletionTask(completion, pos + 1));
      }
    } else {
      mode = Mode.INSERT;
    }
  }

  public class CommitAction extends AbstractAction {
    private static final long serialVersionUID = 5794543109646743416L;

    @Override
    public void actionPerformed(ActionEvent event) {
      if (mode == Mode.COMPLETION) {
        int pos = textField.getSelectionEnd();
        StringBuffer stringBuffer = new StringBuffer(textField.getText());

        stringBuffer.insert(pos, " ");
        textField.setText(stringBuffer.toString());
        textField.setCaretPosition(pos + 1);
        mode = Mode.INSERT;
      } else {
        textField.replaceSelection("\t");
      }
    }
  }

  private class CompletionTask implements Runnable {
    private String completion;
    private int position;

    CompletionTask(String completion, int position) {
      this.completion = completion;
      this.position = position;
    }

    public void run() {
      StringBuffer stringBuffer = new StringBuffer(textField.getText());

      stringBuffer.insert(position, completion);
      textField.setText(stringBuffer.toString());
      textField.setCaretPosition(position + completion.length());
      textField.moveCaretPosition(position);
      mode = Mode.COMPLETION;
    }
  }
}
