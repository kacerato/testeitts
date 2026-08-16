package com.itsmagic.engine.Engines.Graphics.Filament.Exceptions;

public class BeginFrameIsRequiredException extends RuntimeException {
    public BeginFrameIsRequiredException() {
    }

    public BeginFrameIsRequiredException(String message) {
        super(message);
    }
}
