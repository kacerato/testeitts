package com.ardor3d.renderer.state.record;

public class ShadingStateRecord extends StateRecord {
    public int lastShade = -1;

    @Override
    public void invalidate() {
        super.invalidate();
        this.lastShade = -1;
    }
}
