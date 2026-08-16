package com.jme3.input.controls;

public class JoyButtonTrigger implements Trigger {
    static final boolean $assertionsDisabled = false;
    private final int buttonId;
    private final int joyId;

    public JoyButtonTrigger(int i10, int i11) {
        this.joyId = i10;
        this.buttonId = i11;
    }

    public static int joyButtonHash(int i10, int i11) {
        return (i10 * 2048) | 1536 | (i11 & 255);
    }

    public int getAxisId() {
        return this.buttonId;
    }

    public int getJoyId() {
        return this.joyId;
    }

    @Override
    public String getName() {
        return "JoyButton[joyId=" + this.joyId + ", axisId=" + this.buttonId + "]";
    }

    @Override
    public int triggerHashCode() {
        return joyButtonHash(this.joyId, this.buttonId);
    }
}
