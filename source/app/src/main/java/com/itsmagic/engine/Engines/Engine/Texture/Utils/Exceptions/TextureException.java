package com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions;

public class TextureException extends RuntimeException {
    public TextureException() {
    }

    public TextureException(String message) {
        super(message);
    }

    public TextureException(String message, Throwable cause) {
        super(message, cause);
    }

    public TextureException(Throwable cause) {
        super(cause);
    }

    public TextureException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
