package com.jme3.input.controls;

public class KeyTrigger implements Trigger {
    static final boolean $assertionsDisabled = false;
    private final int keyCode;

    public KeyTrigger(int i10) {
        this.keyCode = i10;
    }

    public static int keyHash(int i10) {
        return i10 & 255;
    }

    public int getKeyCode() {
        return this.keyCode;
    }

    @Override
    public String getName() {
        return "KeyCode " + this.keyCode;
    }

    @Override
    public int triggerHashCode() {
        return keyHash(this.keyCode);
    }
}
