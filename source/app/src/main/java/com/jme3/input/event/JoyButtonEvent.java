package com.jme3.input.event;

import com.jme3.input.JoystickButton;

public class JoyButtonEvent extends InputEvent {
    private final JoystickButton button;
    private final boolean pressed;

    public JoyButtonEvent(JoystickButton joystickButton, boolean z10) {
        this.button = joystickButton;
        this.pressed = z10;
    }

    public JoystickButton getButton() {
        return this.button;
    }

    public int getButtonIndex() {
        return this.button.getButtonId();
    }

    public int getJoyIndex() {
        return this.button.getJoystick().getJoyId();
    }

    public boolean isPressed() {
        return this.pressed;
    }
}
