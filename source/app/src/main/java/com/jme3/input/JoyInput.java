package com.jme3.input;

public interface JoyInput extends Input {
    public static final int AXIS_POV_X = 254;
    public static final int AXIS_POV_Y = 255;

    Joystick[] loadJoysticks(InputManager inputManager);

    void setJoyRumble(int i10, float f10);
}
