package com.jme3.input;

public interface SensorJoystickAxis {
    public static final String ORIENTATION_X = "Orientation_X";
    public static final String ORIENTATION_Y = "Orientation_Y";
    public static final String ORIENTATION_Z = "Orientation_Z";

    void calibrateCenter();

    float getMaxRawValue();

    void setMaxRawValue(float f10);
}
