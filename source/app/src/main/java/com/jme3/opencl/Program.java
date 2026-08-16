package com.jme3.opencl;

import com.jme3.opencl.OpenCLObject;
import java.nio.ByteBuffer;

public abstract class Program extends AbstractOpenCLObject {
    public Program(OpenCLObject.ObjectReleaser objectReleaser) {
        super(objectReleaser);
    }

    public void build() throws KernelCompilationException {
        build("", null);
    }

    public abstract void build(String str, Device... deviceArr) throws KernelCompilationException;

    public abstract Kernel[] createAllKernels();

    public abstract Kernel createKernel(String str);

    public abstract ByteBuffer getBinary(Device device);

    @Override
    public Program register() {
        super.register();
        return this;
    }
}
