package com.jme3.input;

import com.jme3.input.event.JoyAxisEvent;
import com.jme3.input.event.JoyButtonEvent;
import com.jme3.input.event.KeyInputEvent;
import com.jme3.input.event.MouseButtonEvent;
import com.jme3.input.event.MouseMotionEvent;
import com.jme3.input.event.TouchEvent;

public abstract class RawInputListenerAdapter implements RawInputListener {
    @Override
    public void beginInput() {
    }

    @Override
    public void endInput() {
    }

    @Override
    public void onJoyAxisEvent(JoyAxisEvent joyAxisEvent) {
    }

    @Override
    public void onJoyButtonEvent(JoyButtonEvent joyButtonEvent) {
    }

    @Override
    public void onKeyEvent(KeyInputEvent keyInputEvent) {
    }

    @Override
    public void onMouseButtonEvent(MouseButtonEvent mouseButtonEvent) {
    }

    @Override
    public void onMouseMotionEvent(MouseMotionEvent mouseMotionEvent) {
    }

    @Override
    public void onTouchEvent(TouchEvent touchEvent) {
    }
}
