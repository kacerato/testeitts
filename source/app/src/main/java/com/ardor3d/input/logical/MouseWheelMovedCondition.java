package com.ardor3d.input.logical;

import com.ardor3d.input.InputState;
import w2.I;

public final class MouseWheelMovedCondition implements I<TwoInputStates> {
    @Override
    public boolean apply(TwoInputStates twoInputStates) {
        InputState current = twoInputStates.getCurrent();
        return (current == null || current.equals(twoInputStates.getPrevious()) || current.getMouseState().getDwheel() == 0) ? false : true;
    }
}
