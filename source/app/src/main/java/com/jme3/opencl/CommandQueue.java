package com.jme3.opencl;

import com.jme3.opencl.OpenCLObject;

public abstract class CommandQueue extends AbstractOpenCLObject {
    protected Device device;

    public CommandQueue(OpenCLObject.ObjectReleaser objectReleaser, Device device) {
        super(objectReleaser);
        this.device = device;
    }

    public abstract void finish();

    public abstract void flush();

    public Device getDevice() {
        return this.device;
    }

    @Override
    public CommandQueue register() {
        super.register();
        return this;
    }
}
