package com.ardor3d.input.logical;

import com.ardor3d.input.MouseButton;
import w2.I;

public final class MouseButtonClickedCondition implements I<TwoInputStates> {
    private final MouseButton _button;

    public MouseButtonClickedCondition(MouseButton mouseButton) {
        mouseButton.getClass();
        this._button = mouseButton;
    }

    @Override
    public boolean apply(TwoInputStates twoInputStates) {
        return twoInputStates.getCurrent().getMouseState().getButtonsClicked().contains(this._button);
    }
}
