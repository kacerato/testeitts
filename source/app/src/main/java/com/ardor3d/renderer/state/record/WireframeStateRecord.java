package com.ardor3d.renderer.state.record;

public class WireframeStateRecord extends StateRecord {
    public int frontMode = -1;
    public int backMode = -1;

    @Override
    public void invalidate() {
        super.invalidate();
        this.frontMode = -1;
        this.backMode = -1;
    }
}
