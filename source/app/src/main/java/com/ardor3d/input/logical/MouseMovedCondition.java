package com.ardor3d.input.logical;

import com.ardor3d.input.InputState;
import w2.I;

public final class MouseMovedCondition implements I<TwoInputStates> {
    @Override
    public boolean apply(TwoInputStates twoInputStates) {
        InputState current = twoInputStates.getCurrent();
        InputState previous = twoInputStates.getPrevious();
        if (current == null || current.equals(previous)) {
            return false;
        }
        return (current.getMouseState().getDx() == 0 && current.getMouseState().getDy() == 0) ? false : true;
    }
}
