package com.itsmagic.engine.Engines.Engine.Curve.graphkit;

public class MinimalRequiredException extends RuntimeException {
    public MinimalRequiredException() {
    }

    public MinimalRequiredException(String message) {
        super(message);
    }

    public MinimalRequiredException(String message, Throwable cause) {
        super(message, cause);
    }

    public MinimalRequiredException(Throwable cause) {
        super(cause);
    }
}
