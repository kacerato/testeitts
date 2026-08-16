package com.itsmagic.engine.Engines.Utils;

public class InvalidFileFormat extends RuntimeException {
    public InvalidFileFormat() {
    }

    public InvalidFileFormat(String message) {
        super(message);
    }

    public InvalidFileFormat(String message, Throwable cause) {
        super(message, cause);
    }

    public InvalidFileFormat(Throwable cause) {
        super(cause);
    }

    public InvalidFileFormat(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
