package com.jme3.input;

import com.jme3.input.controls.JoyButtonTrigger;

public class DefaultJoystickButton implements JoystickButton {
    private final int buttonIndex;
    private final InputManager inputManager;
    private final String logicalId;
    private final String name;
    private final Joystick parent;

    public DefaultJoystickButton(InputManager inputManager, Joystick joystick, int i10, String str, String str2) {
        this.inputManager = inputManager;
        this.parent = joystick;
        this.buttonIndex = i10;
        this.name = str;
        this.logicalId = str2;
    }

    @Override
    public void assignButton(String str) {
        this.inputManager.addMapping(str, new JoyButtonTrigger(this.parent.getJoyId(), this.buttonIndex));
    }

    @Override
    public int getButtonId() {
        return this.buttonIndex;
    }

    @Override
    public Joystick getJoystick() {
        return this.parent;
    }

    @Override
    public String getLogicalId() {
        return this.logicalId;
    }

    @Override
    public String getName() {
        return this.name;
    }

    public String toString() {
        return "JoystickButton[name=" + getName() + ", parent=" + this.parent.getName() + ", id=" + getButtonId() + ", logicalId=" + getLogicalId() + "]";
    }
}
