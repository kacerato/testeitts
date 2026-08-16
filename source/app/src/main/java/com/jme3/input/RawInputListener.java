package com.jme3.input;

import com.jme3.input.event.JoyAxisEvent;
import com.jme3.input.event.JoyButtonEvent;
import com.jme3.input.event.KeyInputEvent;
import com.jme3.input.event.MouseButtonEvent;
import com.jme3.input.event.MouseMotionEvent;
import com.jme3.input.event.TouchEvent;

public interface RawInputListener {
    void beginInput();

    void endInput();

    void onJoyAxisEvent(JoyAxisEvent joyAxisEvent);

    void onJoyButtonEvent(JoyButtonEvent joyButtonEvent);

    void onKeyEvent(KeyInputEvent keyInputEvent);

    void onMouseButtonEvent(MouseButtonEvent mouseButtonEvent);

    void onMouseMotionEvent(MouseMotionEvent mouseMotionEvent);

    void onTouchEvent(TouchEvent touchEvent);
}
