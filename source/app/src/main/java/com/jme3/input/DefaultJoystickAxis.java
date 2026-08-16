package com.jme3.input;

import com.jme3.input.controls.JoyAxisTrigger;

public class DefaultJoystickAxis implements JoystickAxis {
    private final int axisIndex;
    private float deadZone;
    private final InputManager inputManager;
    private final boolean isAnalog;
    private final boolean isRelative;
    private float jitterThreshold = 0.0f;
    private final String logicalId;
    private final String name;
    private final Joystick parent;

    public DefaultJoystickAxis(InputManager inputManager, Joystick joystick, int i10, String str, String str2, boolean z10, boolean z11, float f10) {
        this.inputManager = inputManager;
        this.parent = joystick;
        this.axisIndex = i10;
        this.name = str;
        this.logicalId = str2;
        this.isAnalog = z10;
        this.isRelative = z11;
        this.deadZone = f10;
    }

    @Override
    public void assignAxis(String str, String str2) {
        if (this.axisIndex != -1) {
            this.inputManager.addMapping(str, new JoyAxisTrigger(this.parent.getJoyId(), this.axisIndex, false));
            this.inputManager.addMapping(str2, new JoyAxisTrigger(this.parent.getJoyId(), this.axisIndex, true));
        }
    }

    @Override
    public int getAxisId() {
        return this.axisIndex;
    }

    @Override
    public float getDeadZone() {
        return this.deadZone;
    }

    @Override
    public float getJitterThreshold() {
        return this.jitterThreshold;
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

    @Override
    public boolean isAnalog() {
        return this.isAnalog;
    }

    @Override
    public boolean isRelative() {
        return this.isRelative;
    }

    public void setDeadZone(float f10) {
        this.deadZone = f10;
    }

    public String toString() {
        return "JoystickAxis[name=" + this.name + ", parent=" + this.parent.getName() + ", id=" + this.axisIndex + ", logicalId=" + this.logicalId + ", isAnalog=" + this.isAnalog + ", isRelative=" + this.isRelative + ", deadZone=" + this.deadZone + ", jitterThreshold=" + this.jitterThreshold + "]";
    }
}
