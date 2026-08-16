package com.itsmagic.engine.Engines.Engine.Curve.graphkit;

public class NoPointSelected extends RuntimeException {
    public NoPointSelected() {
    }

    public NoPointSelected(String message) {
        super(message);
    }

    public NoPointSelected(String message, Throwable cause) {
        super(message, cause);
    }

    public NoPointSelected(Throwable cause) {
        super(cause);
    }
}
