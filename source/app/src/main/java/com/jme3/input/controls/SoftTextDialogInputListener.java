package com.jme3.input.controls;

public interface SoftTextDialogInputListener {
    public static final int CANCEL = 1;
    public static final int COMPLETE = 0;

    void onSoftText(int i10, String str);
}
