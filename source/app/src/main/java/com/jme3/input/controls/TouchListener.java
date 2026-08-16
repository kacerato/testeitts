package com.jme3.input.controls;

import com.jme3.input.event.TouchEvent;

public interface TouchListener extends InputListener {
    void onTouch(String str, TouchEvent touchEvent, float f10);
}
