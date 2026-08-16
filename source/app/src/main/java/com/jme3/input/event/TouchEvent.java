package com.jme3.input.event;

public class TouchEvent extends InputEvent {
    private String characters;
    private float deltaScaleSpan;
    private float deltaX;
    private float deltaY;
    private int keyCode;
    private int pointerId;
    private float posX;
    private float posY;
    private float pressure;
    private float scaleFactor;
    private float scaleSpan;
    private boolean scaleSpanInProgress;
    private Type type;

    public enum Type {
        DOWN,
        MOVE,
        UP,
        KEY_DOWN,
        KEY_UP,
        FLING,
        TAP,
        DOUBLETAP,
        LONGPRESSED,
        HOVER_START,
        HOVER_MOVE,
        HOVER_END,
        SCALE_START,
        SCALE_MOVE,
        SCALE_END,
        SCROLL,
        SHOWPRESS,
        OUTSIDE,
        IDLE,
        KEY_MULTIPLE
    }

    public TouchEvent() {
        Type type = Type.IDLE;
        this.type = type;
        set(type, 0.0f, 0.0f, 0.0f, 0.0f);
    }

    public String getCharacters() {
        return this.characters;
    }

    public float getDeltaScaleSpan() {
        return this.deltaScaleSpan;
    }

    public float getDeltaX() {
        return this.deltaX;
    }

    public float getDeltaY() {
        return this.deltaY;
    }

    public int getKeyCode() {
        return this.keyCode;
    }

    public int getPointerId() {
        return this.pointerId;
    }

    public float getPressure() {
        return this.pressure;
    }

    public float getScaleFactor() {
        return this.scaleFactor;
    }

    public float getScaleSpan() {
        return this.scaleSpan;
    }

    public Type getType() {
        return this.type;
    }

    public float getX() {
        return this.posX;
    }

    public float getY() {
        return this.posY;
    }

    public boolean isScaleSpanInProgress() {
        return this.scaleSpanInProgress;
    }

    public void set(Type type) {
        set(type, 0.0f, 0.0f, 0.0f, 0.0f);
    }

    public void setCharacters(String str) {
        this.characters = str;
    }

    public void setDeltaScaleSpan(float f10) {
        this.deltaScaleSpan = f10;
    }

    public void setKeyCode(int i10) {
        this.keyCode = i10;
    }

    public void setPointerId(int i10) {
        this.pointerId = i10;
    }

    public void setPressure(float f10) {
        this.pressure = f10;
    }

    public void setScaleFactor(float f10) {
        this.scaleFactor = f10;
    }

    public void setScaleSpan(float f10) {
        this.scaleSpan = f10;
    }

    public void setScaleSpanInProgress(boolean z10) {
        this.scaleSpanInProgress = z10;
    }

    public String toString() {
        return "TouchEvent(PointerId=" + this.pointerId + ", Type=" + ((Object) this.type) + ", X=" + this.posX + ", Y=" + this.posY + ", DX=" + this.deltaX + ", DY=" + this.deltaY + ", ScaleSpan=" + this.scaleSpan + ", dScaleSpan=" + this.deltaScaleSpan + ")";
    }

    public void set(Type type, float f10, float f11, float f12, float f13) {
        this.type = type;
        this.posX = f10;
        this.posY = f11;
        this.deltaX = f12;
        this.deltaY = f13;
        this.pointerId = 0;
        this.pressure = 0.0f;
        this.keyCode = 0;
        this.scaleFactor = 0.0f;
        this.scaleSpan = 0.0f;
        this.deltaScaleSpan = 0.0f;
        this.scaleSpanInProgress = false;
        this.characters = "";
        this.consumed = false;
    }

    public TouchEvent(Type type, float f10, float f11, float f12, float f13) {
        this.type = Type.IDLE;
        set(type, f10, f11, f12, f13);
    }
}
