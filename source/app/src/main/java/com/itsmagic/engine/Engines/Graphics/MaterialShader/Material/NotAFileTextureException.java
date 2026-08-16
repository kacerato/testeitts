package com.itsmagic.engine.Engines.Graphics.MaterialShader.Material;

public class NotAFileTextureException extends RuntimeException {
    public NotAFileTextureException() {
    }

    public NotAFileTextureException(String message) {
        super(message);
    }

    public NotAFileTextureException(String message, Throwable cause) {
        super(message, cause);
    }

    public NotAFileTextureException(Throwable cause) {
        super(cause);
    }
}
