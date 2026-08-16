package com.ardor3d.input.logical;

import com.ardor3d.input.Key;
import w2.I;

public final class KeyHeldCondition implements I<TwoInputStates> {
    private final Key key;

    public KeyHeldCondition(Key key) {
        key.getClass();
        this.key = key;
    }

    @Override
    public boolean apply(TwoInputStates twoInputStates) {
        return twoInputStates.getCurrent().getKeyboardState().isDown(this.key);
    }
}
