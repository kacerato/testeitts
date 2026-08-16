package com.ardor3d.input;

public class ControllerEvent {
    private final String componentName;
    private final String controllerName;
    private final long nanos;
    private final float value;

    public ControllerEvent(long j10, String str, String str2, float f10) {
        this.nanos = j10;
        this.controllerName = str;
        this.componentName = str2;
        this.value = f10;
    }

    public String getComponentName() {
        return this.componentName;
    }

    public String getControllerName() {
        return this.controllerName;
    }

    public long getNanos() {
        return this.nanos;
    }

    public float getValue() {
        return this.value;
    }

    public String toString() {
        return "ControllerEvent: " + this.controllerName + ", " + this.componentName + ", " + this.value + ", " + this.nanos;
    }
}
