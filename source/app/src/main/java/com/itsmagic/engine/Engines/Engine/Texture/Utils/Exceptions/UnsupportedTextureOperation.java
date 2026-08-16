package com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions;

public class UnsupportedTextureOperation extends TextureException {
    public UnsupportedTextureOperation() {
    }

    public UnsupportedTextureOperation(String message) {
        super(message);
    }

    public UnsupportedTextureOperation(String message, Throwable cause) {
        super(message, cause);
    }

    public UnsupportedTextureOperation(Throwable cause) {
        super(cause);
    }

    public UnsupportedTextureOperation(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
