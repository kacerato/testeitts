package com.jme3.input.dummy;

import com.jme3.input.Input;
import com.jme3.input.RawInputListener;
import eg.C13143u0;

public class DummyInput implements Input {
    protected boolean inited = false;

    @Override
    public void destroy() {
        if (!this.inited) {
            throw new IllegalStateException("Input not initialized.");
        }
        this.inited = false;
    }

    @Override
    public long getInputTimeNanos() {
        return System.currentTimeMillis() * C13143u0.f85788e;
    }

    @Override
    public void initialize() {
        if (this.inited) {
            throw new IllegalStateException("Input already initialized.");
        }
        this.inited = true;
    }

    @Override
    public boolean isInitialized() {
        return this.inited;
    }

    @Override
    public void setInputListener(RawInputListener rawInputListener) {
    }

    @Override
    public void update() {
        if (!this.inited) {
            throw new IllegalStateException("Input not initialized.");
        }
    }
}
