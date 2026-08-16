package com.ardor3d.util;

public class Ardor3dException extends RuntimeException {
    private static final long serialVersionUID = 1;

    public Ardor3dException() {
    }

    public Ardor3dException(String str) {
        super(str);
    }

    public Ardor3dException(Throwable th2) {
        super(th2);
    }

    public Ardor3dException(String str, Throwable th2) {
        super(str, th2);
    }
}
