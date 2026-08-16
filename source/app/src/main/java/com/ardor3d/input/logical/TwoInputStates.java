package com.ardor3d.input.logical;

import com.ardor3d.input.InputState;
import w2.H;

public final class TwoInputStates {
    private final InputState _current;
    private final InputState _previous;

    public TwoInputStates(InputState inputState, InputState inputState2) {
        this._previous = (InputState) H.F(inputState, "previous");
        this._current = (InputState) H.F(inputState2, "current");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TwoInputStates)) {
            return false;
        }
        TwoInputStates twoInputStates = (TwoInputStates) obj;
        return this._previous == twoInputStates._previous && this._current == twoInputStates._current;
    }

    public InputState getCurrent() {
        return this._current;
    }

    public InputState getPrevious() {
        return this._previous;
    }
}
