package com.jme3.collision;

public class UnsupportedCollisionException extends UnsupportedOperationException {
    public UnsupportedCollisionException(Throwable th2) {
        super(th2);
    }

    public UnsupportedCollisionException(String str, Throwable th2) {
        super(str, th2);
    }

    public UnsupportedCollisionException(String str) {
        super(str);
    }

    public UnsupportedCollisionException() {
    }
}
