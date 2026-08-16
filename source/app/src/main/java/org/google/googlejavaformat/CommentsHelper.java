package org.google.googlejavaformat;

import org.google.googlejavaformat.Input;

public interface CommentsHelper {
    String rewrite(Input.Tok tok, int maxWidth, int column0);
}
