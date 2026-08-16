package com.itsmagic.engine.Engines.Native;

public class OutOfNativeMemoryError extends Error {
    public OutOfNativeMemoryError() {
    }

    public OutOfNativeMemoryError(String message) {
        super(message);
    }
}
