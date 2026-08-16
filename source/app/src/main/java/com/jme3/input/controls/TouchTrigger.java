package com.jme3.input.controls;

public class TouchTrigger implements Trigger {
    private final int keyCode;

    public TouchTrigger(int i10) {
        this.keyCode = i10;
    }

    public static int touchHash(int i10) {
        return i10 - 19088744;
    }

    public int getKeyCode() {
        return this.keyCode;
    }

    @Override
    public String getName() {
        if (this.keyCode != 0) {
            return "TouchInput";
        }
        return "TouchInput KeyCode " + this.keyCode;
    }

    @Override
    public int triggerHashCode() {
        return touchHash(this.keyCode);
    }
}
