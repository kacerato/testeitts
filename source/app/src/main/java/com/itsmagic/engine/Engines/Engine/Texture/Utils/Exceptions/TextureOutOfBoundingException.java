package com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions;

public class TextureOutOfBoundingException extends TextureException {
    public TextureOutOfBoundingException() {
    }

    public TextureOutOfBoundingException(String message) {
        super(message);
    }

    public TextureOutOfBoundingException(String message, Throwable cause) {
        super(message, cause);
    }

    public TextureOutOfBoundingException(Throwable cause) {
        super(cause);
    }

    public TextureOutOfBoundingException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
