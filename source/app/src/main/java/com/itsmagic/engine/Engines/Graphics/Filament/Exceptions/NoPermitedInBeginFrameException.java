package com.itsmagic.engine.Engines.Graphics.Filament.Exceptions;

public class NoPermitedInBeginFrameException extends RuntimeException {
    public NoPermitedInBeginFrameException() {
    }

    public NoPermitedInBeginFrameException(String message) {
        super(message);
    }
}
