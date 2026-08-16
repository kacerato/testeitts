package com.jme3.input;

import com.jme3.input.controls.SoftTextDialogInputListener;

public interface SoftTextDialogInput {
    public static final int NUMERIC_ENTRY_DIALOG = 1;
    public static final int NUMERIC_KEYPAD_DIALOG = 2;
    public static final int TEXT_ENTRY_DIALOG = 0;

    void requestDialog(int i10, String str, String str2, SoftTextDialogInputListener softTextDialogInputListener);
}
