package com.jme3.input.event;

public class KeyInputEvent extends InputEvent {
    private final char keyChar;
    private final int keyCode;
    private final boolean pressed;
    private final boolean repeating;

    public KeyInputEvent(int i10, char c10, boolean z10, boolean z11) {
        this.keyCode = i10;
        this.keyChar = c10;
        this.pressed = z10;
        this.repeating = z11;
    }

    public char getKeyChar() {
        return this.keyChar;
    }

    public int getKeyCode() {
        return this.keyCode;
    }

    public boolean isPressed() {
        return this.pressed;
    }

    public boolean isReleased() {
        return !this.pressed;
    }

    public boolean isRepeating() {
        return this.repeating;
    }

    public String toString() {
        String str = "Key(CODE=" + this.keyCode;
        if (this.keyChar != 0) {
            str = str + ", CHAR=" + this.keyChar;
        }
        if (this.repeating) {
            return str + ", REPEATING)";
        }
        if (this.pressed) {
            return str + ", PRESSED)";
        }
        return str + ", RELEASED)";
    }
}
