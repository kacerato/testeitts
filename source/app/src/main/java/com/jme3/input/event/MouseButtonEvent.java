package com.jme3.input.event;

public class MouseButtonEvent extends InputEvent {
    private final int btnIndex;
    private final boolean pressed;

    private final int f81590x;

    private final int f81591y;

    public MouseButtonEvent(int i10, boolean z10, int i11, int i12) {
        this.btnIndex = i10;
        this.pressed = z10;
        this.f81590x = i11;
        this.f81591y = i12;
    }

    public int getButtonIndex() {
        return this.btnIndex;
    }

    public int getX() {
        return this.f81590x;
    }

    public int getY() {
        return this.f81591y;
    }

    public boolean isPressed() {
        return this.pressed;
    }

    public boolean isReleased() {
        return !this.pressed;
    }

    public String toString() {
        String str = "MouseButton(BTN=" + this.btnIndex;
        if (this.pressed) {
            return str + ", PRESSED)";
        }
        return str + ", RELEASED)";
    }
}
