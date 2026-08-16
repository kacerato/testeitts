package com.jme3.input.controls;

public class MouseButtonTrigger implements Trigger {
    static final boolean $assertionsDisabled = false;
    private final int mouseButton;

    public MouseButtonTrigger(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Mouse Button cannot be negative");
        }
        this.mouseButton = i10;
    }

    public static int mouseButtonHash(int i10) {
        return (i10 & 255) | 256;
    }

    public int getMouseButton() {
        return this.mouseButton;
    }

    @Override
    public String getName() {
        return "Mouse Button " + this.mouseButton;
    }

    @Override
    public int triggerHashCode() {
        return mouseButtonHash(this.mouseButton);
    }
}
