package com.jme3.input.controls;

public class MouseAxisTrigger implements Trigger {
    static final boolean $assertionsDisabled = false;
    private int mouseAxis;
    private boolean negative;

    public MouseAxisTrigger(int i10, boolean z10) {
        if (i10 < 0 || i10 > 2) {
            throw new IllegalArgumentException("Mouse Axis must be between 0 and 2");
        }
        this.mouseAxis = i10;
        this.negative = z10;
    }

    public static int mouseAxisHash(int i10, boolean z10) {
        return (i10 & 255) | (z10 ? 768 : 512);
    }

    public int getMouseAxis() {
        return this.mouseAxis;
    }

    @Override
    public String getName() {
        String str = this.negative ? "Negative" : "Positive";
        int i10 = this.mouseAxis;
        if (i10 == 0) {
            return "Mouse X Axis " + str;
        }
        if (i10 == 1) {
            return "Mouse Y Axis " + str;
        }
        if (i10 != 2) {
            throw new AssertionError();
        }
        return "Mouse Wheel " + str;
    }

    public boolean isNegative() {
        return this.negative;
    }

    @Override
    public int triggerHashCode() {
        return mouseAxisHash(this.mouseAxis, this.negative);
    }
}
