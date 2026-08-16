package com.ardor3d.input;

import org.eclipse.jdt.internal.core.JavaElement;

public class KeyEvent {
    public static final KeyEvent NOTHING = new KeyEvent(Key.UNKNOWN, KeyState.UP, 0);
    private final Key _key;
    private final char _keyChar;
    private final KeyState _state;

    public KeyEvent(Key key, KeyState keyState, char c10) {
        this._key = key;
        this._state = keyState;
        this._keyChar = c10;
    }

    public Key getKey() {
        return this._key;
    }

    public char getKeyChar() {
        return this._keyChar;
    }

    public KeyState getState() {
        return this._state;
    }

    public String toString() {
        return "KeyEvent{_key=" + ((Object) this._key) + ", _state=" + ((Object) this._state) + ", _keyChar=" + this._keyChar + JavaElement.JEM_ANNOTATION;
    }
}
