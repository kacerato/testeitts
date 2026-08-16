package com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions;

public class FailedToLoadTexture extends TextureException {
    public FailedToLoadTexture() {
    }

    public FailedToLoadTexture(String message) {
        super(message);
    }

    public FailedToLoadTexture(String message, Throwable cause) {
        super(message, cause);
    }

    public FailedToLoadTexture(Throwable cause) {
        super(cause);
    }
}
