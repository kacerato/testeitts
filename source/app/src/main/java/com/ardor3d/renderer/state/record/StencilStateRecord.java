package com.ardor3d.renderer.state.record;

public class StencilStateRecord extends StateRecord {
    public boolean enabled = false;
    public boolean useTwoSided = false;

    @Override
    public void invalidate() {
        super.invalidate();
        this.enabled = false;
        this.useTwoSided = false;
    }
}
