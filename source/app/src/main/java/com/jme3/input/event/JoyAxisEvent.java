package com.jme3.input.event;

import com.jme3.input.JoystickAxis;

public class JoyAxisEvent extends InputEvent {
    private JoystickAxis axis;
    private float rawValue;
    private float value;

    public JoyAxisEvent(JoystickAxis joystickAxis, float f10) {
        this(joystickAxis, f10, f10);
    }

    public JoystickAxis getAxis() {
        return this.axis;
    }

    public int getAxisIndex() {
        return this.axis.getAxisId();
    }

    public int getJoyIndex() {
        return this.axis.getJoystick().getJoyId();
    }

    public float getRawValue() {
        return this.rawValue;
    }

    public float getValue() {
        return this.value;
    }

    public JoyAxisEvent(JoystickAxis joystickAxis, float f10, float f11) {
        this.axis = joystickAxis;
        this.value = f10;
        this.rawValue = f11;
    }
}
