package com.ardor3d.renderer.state.record;

public abstract class StateRecord {
    protected boolean valid = false;

    public void invalidate() {
        this.valid = false;
    }

    public boolean isValid() {
        return this.valid;
    }

    public void validate() {
        this.valid = true;
    }
}
