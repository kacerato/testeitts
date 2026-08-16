package com.ardor3d.input;

import com.google.common.collect.Q1;
import ga.m;
import java.util.EnumMap;

public enum MouseButton {
    LEFT,
    RIGHT,
    MIDDLE;

    public static EnumMap<MouseButton, ButtonState> makeMap(ButtonState buttonState, ButtonState buttonState2, ButtonState buttonState3) {
        if (buttonState == null) {
            throw new NullPointerException(m.f88234c);
        }
        if (buttonState2 == null) {
            throw new NullPointerException("right");
        }
        if (buttonState3 == null) {
            throw new NullPointerException("middle");
        }
        EnumMap<MouseButton, ButtonState> W10 = Q1.W(MouseButton.class);
        W10.put((EnumMap<MouseButton, ButtonState>) LEFT, (MouseButton) buttonState);
        W10.put((EnumMap<MouseButton, ButtonState>) RIGHT, (MouseButton) buttonState2);
        W10.put((EnumMap<MouseButton, ButtonState>) MIDDLE, (MouseButton) buttonState3);
        return W10;
    }
}
