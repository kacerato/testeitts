package com.ardor3d.input;

import org.eclipse.jdt.internal.core.JavaElement;

public class InputState {
    public static final InputState EMPTY;
    public static final InputState LOST_FOCUS;
    private final ControllerState controllerState;
    private final KeyboardState keyboardState;
    private final MouseState mouseState;

    static {
        KeyboardState keyboardState = KeyboardState.NOTHING;
        MouseState mouseState = MouseState.NOTHING;
        ControllerState controllerState = ControllerState.NOTHING;
        LOST_FOCUS = new InputState(keyboardState, mouseState, controllerState);
        EMPTY = new InputState(keyboardState, mouseState, controllerState);
    }

    public InputState(KeyboardState keyboardState, MouseState mouseState, ControllerState controllerState) {
        if (keyboardState == null) {
            throw new NullPointerException("Keyboard state");
        }
        if (mouseState == null) {
            throw new NullPointerException("Mouse state");
        }
        if (controllerState == null) {
            throw new NullPointerException("Controller state");
        }
        this.keyboardState = keyboardState;
        this.mouseState = mouseState;
        this.controllerState = controllerState;
    }

    public ControllerState getControllerState() {
        return this.controllerState;
    }

    public KeyboardState getKeyboardState() {
        return this.keyboardState;
    }

    public MouseState getMouseState() {
        return this.mouseState;
    }

    public String toString() {
        return "InputState{keyboardState=" + ((Object) this.keyboardState) + ", mouseState=" + ((Object) this.mouseState) + ", controllerState=" + ((Object) this.controllerState) + JavaElement.JEM_ANNOTATION;
    }
}
