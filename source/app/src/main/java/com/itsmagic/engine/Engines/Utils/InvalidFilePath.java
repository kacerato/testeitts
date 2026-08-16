package com.itsmagic.engine.Engines.Utils;

public class InvalidFilePath extends RuntimeException {
    public InvalidFilePath() {
    }

    public InvalidFilePath(String message) {
        super(message);
    }

    public InvalidFilePath(String message, Throwable cause) {
        super(message, cause);
    }

    public InvalidFilePath(Throwable cause) {
        super(cause);
    }

    public InvalidFilePath(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
