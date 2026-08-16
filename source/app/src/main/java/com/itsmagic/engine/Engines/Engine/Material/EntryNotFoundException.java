package com.itsmagic.engine.Engines.Engine.Material;

public class EntryNotFoundException extends RuntimeException {
    public EntryNotFoundException() {
    }

    public EntryNotFoundException(String message) {
        super(message);
    }

    public EntryNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }

    public EntryNotFoundException(Throwable cause) {
        super(cause);
    }
}
