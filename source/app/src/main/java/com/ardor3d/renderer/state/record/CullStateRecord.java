package com.ardor3d.renderer.state.record;

import com.ardor3d.renderer.state.CullState;

public class CullStateRecord extends StateRecord {
    public boolean enabled = false;
    public int face = -1;
    public CullState.PolygonWind windOrder = null;

    @Override
    public void invalidate() {
        super.invalidate();
        this.enabled = false;
        this.face = -1;
        this.windOrder = null;
    }
}
