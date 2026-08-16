package com.jme3.opencl;

public interface OpenCLObject {

    public interface ObjectReleaser {
        void release();
    }

    ObjectReleaser getReleaser();

    OpenCLObject register();

    void release();
}
