package com.ardor3d.input.logical;

import com.ardor3d.input.ButtonState;
import com.ardor3d.input.InputState;
import com.ardor3d.input.MouseButton;
import com.google.common.collect.Q1;
import java.util.EnumMap;
import w2.I;

public final class MouseButtonCondition implements I<TwoInputStates> {
    private final EnumMap<MouseButton, ButtonState> _states;

    public MouseButtonCondition(EnumMap<MouseButton, ButtonState> enumMap) {
        EnumMap<MouseButton, ButtonState> W10 = Q1.W(MouseButton.class);
        this._states = W10;
        W10.putAll(enumMap);
    }

    @Override
    public boolean apply(TwoInputStates twoInputStates) {
        InputState current = twoInputStates.getCurrent();
        if (current == null) {
            return false;
        }
        for (MouseButton mouseButton : this._states.o()) {
            ButtonState buttonState = this._states.get(mouseButton);
            if (buttonState != ButtonState.UNDEFINED && current.getMouseState().getButtonState(mouseButton) != buttonState) {
                return false;
            }
        }
        return true;
    }

    public MouseButtonCondition(ButtonState buttonState, ButtonState buttonState2, ButtonState buttonState3) {
        EnumMap<MouseButton, ButtonState> W10 = Q1.W(MouseButton.class);
        this._states = W10;
        ButtonState buttonState4 = ButtonState.UNDEFINED;
        if (buttonState != buttonState4) {
            W10.put((EnumMap<MouseButton, ButtonState>) MouseButton.LEFT, (MouseButton) buttonState);
        }
        if (buttonState != buttonState4) {
            W10.put((EnumMap<MouseButton, ButtonState>) MouseButton.RIGHT, (MouseButton) buttonState2);
        }
        if (buttonState != buttonState4) {
            W10.put((EnumMap<MouseButton, ButtonState>) MouseButton.MIDDLE, (MouseButton) buttonState3);
        }
    }
}
