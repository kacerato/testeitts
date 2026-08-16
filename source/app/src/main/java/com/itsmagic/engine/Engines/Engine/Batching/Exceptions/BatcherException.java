package com.itsmagic.engine.Engines.Engine.Batching.Exceptions;

public class BatcherException extends RuntimeException {
    public BatcherException() {
    }

    public BatcherException(String message) {
        super(message);
    }

    public BatcherException(String message, Throwable cause) {
        super(message, cause);
    }

    public BatcherException(Throwable cause) {
        super(cause);
    }

    public BatcherException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
