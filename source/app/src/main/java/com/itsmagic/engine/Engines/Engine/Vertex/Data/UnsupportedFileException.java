package com.itsmagic.engine.Engines.Engine.Vertex.Data;

public class UnsupportedFileException extends RuntimeException {
    public UnsupportedFileException() {
    }

    public UnsupportedFileException(String message) {
        super(message);
    }

    public UnsupportedFileException(String message, Throwable cause) {
        super(message, cause);
    }

    public UnsupportedFileException(Throwable cause) {
        super(cause);
    }
}
