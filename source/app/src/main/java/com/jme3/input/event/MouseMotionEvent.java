package com.jme3.input.event;

public class MouseMotionEvent extends InputEvent {
    private final int deltaWheel;
    private final int dx;
    private final int dy;
    private final int wheel;

    private final int f81592x;

    private final int f81593y;

    public MouseMotionEvent(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f81592x = i10;
        this.f81593y = i11;
        this.dx = i12;
        this.dy = i13;
        this.wheel = i14;
        this.deltaWheel = i15;
    }

    public int getDX() {
        return this.dx;
    }

    public int getDY() {
        return this.dy;
    }

    public int getDeltaWheel() {
        return this.deltaWheel;
    }

    public int getWheel() {
        return this.wheel;
    }

    public int getX() {
        return this.f81592x;
    }

    public int getY() {
        return this.f81593y;
    }

    public String toString() {
        return "MouseMotion(X=" + this.f81592x + ", Y=" + this.f81593y + ", DX=" + this.dx + ", DY=" + this.dy + ", Wheel=" + this.wheel + ", dWheel=" + this.deltaWheel + ")";
    }
}
