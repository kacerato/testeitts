package com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions;

public class TextureNotPreparedException extends TextureException {
    public TextureNotPreparedException() {
    }

    public TextureNotPreparedException(String message) {
        super(message);
    }

    public TextureNotPreparedException(String message, Throwable cause) {
        super(message, cause);
    }

    public TextureNotPreparedException(Throwable cause) {
        super(cause);
    }
}
