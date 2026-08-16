package com.itsmagic.engine.Core.Components.JCompiler;

public class TooManyErrorsException extends RuntimeException {
    public TooManyErrorsException() {
    }

    public TooManyErrorsException(String message) {
        super(message);
    }

    public TooManyErrorsException(String message, Throwable cause) {
        super(message, cause);
    }

    public TooManyErrorsException(Throwable cause) {
        super(cause);
    }
}
