package com.itsmagic.engine.Core.Components.JCompiler;

public class UnknownError extends RuntimeException {
    public UnknownError() {
    }

    public UnknownError(String message) {
        super(message);
    }

    public UnknownError(String message, Throwable cause) {
        super(message, cause);
    }

    public UnknownError(Throwable cause) {
        super(cause);
    }
}
