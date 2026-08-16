package com.itsmagic.engine.Engines.Graphics.MaterialShader.Dictionary;

public class ShaderNotFoundException extends RuntimeException {
    public ShaderNotFoundException() {
    }

    public ShaderNotFoundException(String message) {
        super(message);
    }

    public ShaderNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }

    public ShaderNotFoundException(Throwable cause) {
        super(cause);
    }
}
