package com.ardor3d.input.logical;

import com.ardor3d.input.ControllerEvent;
import com.ardor3d.input.ControllerState;
import java.util.Iterator;
import w2.I;

public final class ControllerCondition implements I<TwoInputStates> {
    private int controllerIndex;
    private String controllerName;

    public ControllerCondition(int i10) {
        this.controllerName = null;
        this.controllerIndex = i10;
    }

    @Override
    public boolean apply(TwoInputStates twoInputStates) {
        ControllerState controllerState = twoInputStates.getCurrent().getControllerState();
        boolean z10 = false;
        if (!twoInputStates.getPrevious().getControllerState().equals(controllerState)) {
            if (this.controllerName == null) {
                this.controllerName = controllerState.getControllerNames().get(this.controllerIndex);
            }
            Iterator<ControllerEvent> it = controllerState.getEvents().iterator();
            while (it.hasNext()) {
                if (it.next().getControllerName().equals(this.controllerName)) {
                    z10 = true;
                }
            }
        }
        return z10;
    }

    public ControllerCondition(String str) {
        this.controllerIndex = -1;
        this.controllerName = str;
    }
}
