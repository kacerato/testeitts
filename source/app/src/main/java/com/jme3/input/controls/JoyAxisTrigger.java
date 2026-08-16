package com.jme3.input.controls;

public class JoyAxisTrigger implements Trigger {
    static final boolean $assertionsDisabled = false;
    private final int axisId;
    private final int joyId;
    private final boolean negative;

    public JoyAxisTrigger(int i10, int i11, boolean z10) {
        this.joyId = i10;
        this.axisId = i11;
        this.negative = z10;
    }

    public static int joyAxisHash(int i10, int i11, boolean z10) {
        return (i10 * 2048) | (z10 ? 1280 : 1024) | (i11 & 255);
    }

    public int getAxisId() {
        return this.axisId;
    }

    public int getJoyId() {
        return this.joyId;
    }

    @Override
    public String getName() {
        return "JoyAxis[joyId=" + this.joyId + ", axisId=" + this.axisId + ", neg=" + this.negative + "]";
    }

    public boolean isNegative() {
        return this.negative;
    }

    @Override
    public int triggerHashCode() {
        return joyAxisHash(this.joyId, this.axisId, this.negative);
    }
}
