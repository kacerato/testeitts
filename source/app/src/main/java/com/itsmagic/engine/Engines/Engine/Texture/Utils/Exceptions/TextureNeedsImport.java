package com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions;

public class TextureNeedsImport extends TextureException {
    public TextureNeedsImport() {
    }

    public TextureNeedsImport(String message) {
        super(message);
    }

    public TextureNeedsImport(String message, Throwable cause) {
        super(message, cause);
    }

    public TextureNeedsImport(Throwable cause) {
        super(cause);
    }
}
