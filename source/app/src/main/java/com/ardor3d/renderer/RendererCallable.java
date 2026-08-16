package com.ardor3d.renderer;

import java.util.concurrent.Callable;

public abstract class RendererCallable<V> implements Callable<V> {
    private Renderer _renderer;

    public Renderer getRenderer() {
        return this._renderer;
    }

    public void setRenderer(Renderer renderer) {
        this._renderer = renderer;
    }
}
