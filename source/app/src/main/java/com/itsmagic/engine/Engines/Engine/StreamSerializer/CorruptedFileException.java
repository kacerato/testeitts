package com.itsmagic.engine.Engines.Engine.StreamSerializer;

public class CorruptedFileException extends StreamException {
    public CorruptedFileException() {
    }

    public CorruptedFileException(String message) {
        super(message);
    }

    public CorruptedFileException(String message, Throwable cause) {
        super(message, cause);
    }

    public CorruptedFileException(Throwable cause) {
        super(cause);
    }

    public CorruptedFileException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
