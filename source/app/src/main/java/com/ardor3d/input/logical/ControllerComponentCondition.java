package com.ardor3d.input.logical;

import com.ardor3d.input.ControllerEvent;
import com.ardor3d.input.ControllerState;
import w2.I;

public final class ControllerComponentCondition implements I<TwoInputStates> {
    private int componentIndex;
    private String componentName;
    private int controllerIndex;
    private String controllerName;

    public ControllerComponentCondition(int i10, int i11) {
        this.controllerName = null;
        this.componentName = null;
        this.controllerIndex = i10;
        this.componentIndex = i11;
    }

    @Override
    public boolean apply(TwoInputStates twoInputStates) {
        ControllerState controllerState = twoInputStates.getCurrent().getControllerState();
        boolean z10 = false;
        if (!twoInputStates.getPrevious().getControllerState().equals(controllerState)) {
            if (this.controllerName == null) {
                this.controllerName = controllerState.getControllerNames().get(this.controllerIndex);
            }
            if (this.componentName == null) {
                this.componentName = controllerState.getControllerComponentNames(this.controllerName).get(this.componentIndex);
            }
            for (ControllerEvent controllerEvent : controllerState.getEvents()) {
                if (controllerEvent.getControllerName().equals(this.controllerName) && controllerEvent.getComponentName().equals(this.componentName)) {
                    z10 = true;
                }
            }
        }
        return z10;
    }

    public ControllerComponentCondition(String str, String str2) {
        this.controllerIndex = -1;
        this.componentIndex = -1;
        this.controllerName = str;
        this.componentName = str2;
    }
}
