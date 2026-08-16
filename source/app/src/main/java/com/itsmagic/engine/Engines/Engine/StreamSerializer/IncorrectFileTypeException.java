package com.itsmagic.engine.Engines.Engine.StreamSerializer;

public class IncorrectFileTypeException extends StreamException {
    public IncorrectFileTypeException() {
    }

    public IncorrectFileTypeException(String message) {
        super(message);
    }

    public IncorrectFileTypeException(String message, Throwable cause) {
        super(message, cause);
    }

    public IncorrectFileTypeException(Throwable cause) {
        super(cause);
    }

    public IncorrectFileTypeException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
