package com.ardor3d.input.logical;

import com.ardor3d.framework.Canvas;
import w2.I;

public final class InputTrigger {
    private final TriggerAction _action;
    private final I<TwoInputStates> _condition;
    private String _id;

    public InputTrigger(I<TwoInputStates> i10, TriggerAction triggerAction) {
        this._condition = i10;
        this._action = triggerAction;
    }

    public String getId() {
        return this._id;
    }

    public void performIfValid(Canvas canvas, TwoInputStates twoInputStates, double d10) {
        if (this._condition.apply(twoInputStates)) {
            this._action.perform(canvas, twoInputStates, d10);
        }
    }

    public void setId(String str) {
        this._id = str;
    }

    public InputTrigger(I<TwoInputStates> i10, TriggerAction triggerAction, String str) {
        this._condition = i10;
        this._action = triggerAction;
        this._id = str;
    }
}
