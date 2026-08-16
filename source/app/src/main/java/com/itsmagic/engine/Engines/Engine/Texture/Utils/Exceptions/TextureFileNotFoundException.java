package com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions;

import Ic.InterfaceC2637p;

@InterfaceC2637p
public class TextureFileNotFoundException extends TextureException {
    public TextureFileNotFoundException() {
    }

    public TextureFileNotFoundException(String message) {
        super(message);
    }

    public TextureFileNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }

    public TextureFileNotFoundException(Throwable cause) {
        super(cause);
    }
}
