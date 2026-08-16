package com.jme3.opencl;

public class OpenCLException extends RuntimeException {
    private static final long serialVersionUID = 8471229972153694848L;
    private final int errorCode;

    public OpenCLException() {
        this.errorCode = 0;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public OpenCLException(String str) {
        super(str);
        this.errorCode = 0;
    }

    public OpenCLException(String str, int i10) {
        super(str);
        this.errorCode = i10;
    }
}
