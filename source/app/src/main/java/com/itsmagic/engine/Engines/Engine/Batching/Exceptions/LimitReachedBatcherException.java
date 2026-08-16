package com.itsmagic.engine.Engines.Engine.Batching.Exceptions;

public class LimitReachedBatcherException extends BatcherException {
    public LimitReachedBatcherException() {
    }

    public LimitReachedBatcherException(String message) {
        super(message);
    }

    public LimitReachedBatcherException(String message, Throwable cause) {
        super(message, cause);
    }

    public LimitReachedBatcherException(Throwable cause) {
        super(cause);
    }

    public LimitReachedBatcherException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
