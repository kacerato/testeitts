package com.jme3.input;

public interface TouchInput extends Input {
    public static final int ALL = 0;
    public static final int KEYCODE_BACK = 4;
    public static final int KEYCODE_HOME = 3;
    public static final int KEYCODE_MENU = 82;
    public static final int KEYCODE_SEARCH = 84;
    public static final int KEYCODE_VOLUME_DOWN = 25;
    public static final int KEYCODE_VOLUME_UP = 24;

    boolean isSimulateKeyboard();

    boolean isSimulateMouse();

    void setOmitHistoricEvents(boolean z10);

    void setSimulateKeyboard(boolean z10);

    void setSimulateMouse(boolean z10);
}
