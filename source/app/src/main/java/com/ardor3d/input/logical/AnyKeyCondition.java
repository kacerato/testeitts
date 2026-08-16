package com.ardor3d.input.logical;

import w2.I;

public class AnyKeyCondition implements I<TwoInputStates> {
    @Override
    public boolean apply(TwoInputStates twoInputStates) {
        return !twoInputStates.getCurrent().getKeyboardState().getKeysPressedSince(twoInputStates.getPrevious().getKeyboardState()).isEmpty();
    }
}
