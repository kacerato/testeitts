package com.ardor3d.input.logical;

import com.ardor3d.framework.Canvas;
import java.util.Set;

public interface LogicalTriggersApplier {
    void checkAndPerformTriggers(Set<InputTrigger> set, Canvas canvas, TwoInputStates twoInputStates, double d10);
}
