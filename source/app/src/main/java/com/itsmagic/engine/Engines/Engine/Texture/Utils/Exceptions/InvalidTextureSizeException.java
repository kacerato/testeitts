package com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions;

public class InvalidTextureSizeException extends TextureException {
    public InvalidTextureSizeException() {
    }

    public InvalidTextureSizeException(String message) {
        super(message);
    }

    public InvalidTextureSizeException(String message, Throwable cause) {
        super(message, cause);
    }

    public InvalidTextureSizeException(Throwable cause) {
        super(cause);
    }

    public InvalidTextureSizeException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
