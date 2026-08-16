package org.blacksquircle.ui.editorkit.utils;

import F6.c;
import android.view.View;

@c
public interface OnTextChangeListener {
    void afterTextChange(View v10, int line, int selectionStart, int selectionEnd, int x10, int y10);
}
