package com.ardor3d.input.logical;

import w2.I;

public final class AnyControllerCondition implements I<TwoInputStates> {
    @Override
    public boolean apply(TwoInputStates twoInputStates) {
        return !twoInputStates.getPrevious().getControllerState().equals(twoInputStates.getCurrent().getControllerState());
    }
}
