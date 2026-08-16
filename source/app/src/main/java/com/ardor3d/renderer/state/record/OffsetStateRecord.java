package com.ardor3d.renderer.state.record;

import com.ardor3d.renderer.state.OffsetState;
import java.util.EnumSet;

public class OffsetStateRecord extends StateRecord {
    public boolean enabled = false;
    public float factor = 0.0f;
    public float units = 0.0f;
    public EnumSet<OffsetState.OffsetType> enabledOffsets = EnumSet.noneOf(OffsetState.OffsetType.class);

    @Override
    public void invalidate() {
        super.invalidate();
        this.enabled = false;
        this.factor = 0.0f;
        this.units = 0.0f;
        this.enabledOffsets.clear();
    }
}
