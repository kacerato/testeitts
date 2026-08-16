package com.ardor3d.input.logical;

import com.ardor3d.framework.Canvas;
import java.util.Iterator;
import java.util.Set;

public class BasicTriggersApplier implements LogicalTriggersApplier {
    @Override
    public void checkAndPerformTriggers(Set<InputTrigger> set, Canvas canvas, TwoInputStates twoInputStates, double d10) {
        Iterator<InputTrigger> it = set.iterator();
        while (it.hasNext()) {
            it.next().performIfValid(canvas, twoInputStates, d10);
        }
    }
}
