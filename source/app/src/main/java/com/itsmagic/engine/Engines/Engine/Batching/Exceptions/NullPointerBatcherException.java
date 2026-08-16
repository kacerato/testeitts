package com.itsmagic.engine.Engines.Engine.Batching.Exceptions;

public class NullPointerBatcherException extends BatcherException {
    public NullPointerBatcherException() {
    }

    public NullPointerBatcherException(String message) {
        super(message);
    }

    public NullPointerBatcherException(String message, Throwable cause) {
        super(message, cause);
    }

    public NullPointerBatcherException(Throwable cause) {
        super(cause);
    }

    public NullPointerBatcherException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
