package com.jme3.input;

import com.jme3.cursors.plugins.JmeCursor;

public interface MouseInput extends Input {
    public static final int AXIS_WHEEL = 2;
    public static final int AXIS_X = 0;
    public static final int AXIS_Y = 1;
    public static final int BUTTON_LEFT = 0;
    public static final int BUTTON_MIDDLE = 2;
    public static final int BUTTON_RIGHT = 1;

    int getButtonCount();

    void setCursorVisible(boolean z10);

    void setNativeCursor(JmeCursor jmeCursor);
}
