package com.jme3.input;

public interface JoystickAxis {
    public static final String AXIS_XBOX_LEFT_THUMB_STICK_X = "x";
    public static final String AXIS_XBOX_LEFT_THUMB_STICK_Y = "y";
    public static final String AXIS_XBOX_LEFT_TRIGGER = "rx";
    public static final String AXIS_XBOX_RIGHT_THUMB_STICK_X = "z";
    public static final String AXIS_XBOX_RIGHT_THUMB_STICK_Y = "rz";
    public static final String AXIS_XBOX_RIGHT_TRIGGER = "ry";
    public static final String LEFT_TRIGGER = "rx";
    public static final String POV_X = "pov_x";
    public static final String POV_Y = "pov_y";
    public static final String RIGHT_TRIGGER = "ry";
    public static final String X_AXIS = "x";
    public static final String Y_AXIS = "y";
    public static final String Z_AXIS = "z";
    public static final String Z_ROTATION = "rz";

    void assignAxis(String str, String str2);

    int getAxisId();

    float getDeadZone();

    default float getJitterThreshold() {
        return 0.0f;
    }

    Joystick getJoystick();

    String getLogicalId();

    String getName();

    boolean isAnalog();

    boolean isRelative();
}
