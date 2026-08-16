package com.jme3.opencl;

import com.jme3.opencl.OpenCLObject;

public abstract class AbstractOpenCLObject implements OpenCLObject {
    protected final OpenCLObject.ObjectReleaser releaser;

    public AbstractOpenCLObject(OpenCLObject.ObjectReleaser objectReleaser) {
        this.releaser = objectReleaser;
    }

    public void finalize() throws Throwable {
        release();
    }

    @Override
    public OpenCLObject.ObjectReleaser getReleaser() {
        return this.releaser;
    }

    @Override
    public void release() {
        this.releaser.release();
    }

    @Override
    public AbstractOpenCLObject register() {
        OpenCLObjectManager.getInstance().registerObject(this);
        return this;
    }
}
