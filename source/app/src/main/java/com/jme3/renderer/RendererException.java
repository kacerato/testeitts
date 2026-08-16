package com.jme3.renderer;

public class RendererException extends RuntimeException {
    public RendererException(String str) {
        super(str);
    }

    public RendererException(Exception exc) {
        super(exc);
    }
}
