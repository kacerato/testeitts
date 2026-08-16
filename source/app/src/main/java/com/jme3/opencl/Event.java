package com.jme3.opencl;

import com.jme3.opencl.OpenCLObject;

public abstract class Event extends AbstractOpenCLObject {
    public Event(OpenCLObject.ObjectReleaser objectReleaser) {
        super(objectReleaser);
    }

    public abstract boolean isCompleted();

    public abstract void waitForFinished();

    @Override
    public Event register() {
        super.register();
        return this;
    }
}
