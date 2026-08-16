package com.jme3.input;

public interface JoystickButton {
    public static final String BUTTON_0 = "0";
    public static final String BUTTON_1 = "1";
    public static final String BUTTON_10 = "10";
    public static final String BUTTON_11 = "11";
    public static final String BUTTON_12 = "12";
    public static final String BUTTON_13 = "13";
    public static final String BUTTON_14 = "14";
    public static final String BUTTON_15 = "15";
    public static final String BUTTON_2 = "2";
    public static final String BUTTON_3 = "3";
    public static final String BUTTON_4 = "4";
    public static final String BUTTON_5 = "5";
    public static final String BUTTON_6 = "6";
    public static final String BUTTON_7 = "7";
    public static final String BUTTON_8 = "8";
    public static final String BUTTON_9 = "9";
    public static final String BUTTON_XBOX_A = "2";
    public static final String BUTTON_XBOX_B = "1";
    public static final String BUTTON_XBOX_BACK = "8";
    public static final String BUTTON_XBOX_DPAD_DOWN = "13";
    public static final String BUTTON_XBOX_DPAD_LEFT = "14";
    public static final String BUTTON_XBOX_DPAD_RIGHT = "15";
    public static final String BUTTON_XBOX_DPAD_UP = "12";
    public static final String BUTTON_XBOX_L3 = "10";
    public static final String BUTTON_XBOX_LB = "4";
    public static final String BUTTON_XBOX_LT = "6";
    public static final String BUTTON_XBOX_R3 = "11";
    public static final String BUTTON_XBOX_RB = "5";
    public static final String BUTTON_XBOX_RT = "7";
    public static final String BUTTON_XBOX_START = "9";
    public static final String BUTTON_XBOX_X = "3";
    public static final String BUTTON_XBOX_Y = "0";

    void assignButton(String str);

    int getButtonId();

    Joystick getJoystick();

    String getLogicalId();

    String getName();
}
