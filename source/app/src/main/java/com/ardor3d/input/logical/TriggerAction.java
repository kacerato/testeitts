package com.ardor3d.input.logical;

import com.ardor3d.annotation.MainThread;
import com.ardor3d.framework.Canvas;

public interface TriggerAction {
    @MainThread
    void perform(Canvas canvas, TwoInputStates twoInputStates, double d10);
}
