package com.ardor3d.input.logical;

import com.ardor3d.input.ButtonState;
import com.ardor3d.input.InputState;
import com.ardor3d.input.MouseButton;
import w2.I;

public final class MouseButtonReleasedCondition implements I<TwoInputStates> {
    private final MouseButton _button;

    public MouseButtonReleasedCondition(MouseButton mouseButton) {
        mouseButton.getClass();
        this._button = mouseButton;
    }

    @Override
    public boolean apply(TwoInputStates twoInputStates) {
        InputState current = twoInputStates.getCurrent();
        InputState previous = twoInputStates.getPrevious();
        if (current == null || previous == null || !previous.getMouseState().hasButtonState(ButtonState.DOWN)) {
            return false;
        }
        return current.getMouseState().getButtonsReleasedSince(previous.getMouseState()).contains(this._button);
    }
}
