package com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions;

public class FailedToBindTexture extends TextureException {
    public FailedToBindTexture() {
    }

    public FailedToBindTexture(String message) {
        super(message);
    }

    public FailedToBindTexture(String message, Throwable cause) {
        super(message, cause);
    }

    public FailedToBindTexture(Throwable cause) {
        super(cause);
    }
}
