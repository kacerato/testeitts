package com.itsmagic.engine.Engines.Engine.StreamSerializer;

public class UnknowStepException extends StreamException {
    public UnknowStepException() {
    }

    public UnknowStepException(String message) {
        super(message);
    }

    public UnknowStepException(String message, Throwable cause) {
        super(message, cause);
    }

    public UnknowStepException(Throwable cause) {
        super(cause);
    }

    public UnknowStepException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
