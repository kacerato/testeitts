package com.jme3.opencl;

public class KernelCompilationException extends OpenCLException {
    private final String log;

    public KernelCompilationException(String str, int i10, String str2) {
        super(str, i10);
        this.log = str2;
    }

    public String getLog() {
        return this.log;
    }
}
