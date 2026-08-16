package com.ardor3d.input.logical;

import com.ardor3d.input.Key;
import w2.I;

public final class KeyPressedCondition implements I<TwoInputStates> {
    private final Key key;

    public KeyPressedCondition(Key key) {
        key.getClass();
        this.key = key;
    }

    @Override
    public boolean apply(TwoInputStates twoInputStates) {
        return twoInputStates.getCurrent().getKeyboardState().getKeysPressedSince(twoInputStates.getPrevious().getKeyboardState()).contains(this.key);
    }
}
