package com.ardor3d.renderer.state.record;

import com.ardor3d.util.geom.BufferUtils;
import java.nio.DoubleBuffer;
import java.util.Arrays;

public class ClipStateRecord extends StateRecord {
    public final boolean[] planeEnabled = new boolean[6];
    public final DoubleBuffer buf = BufferUtils.createDoubleBuffer(4);

    @Override
    public void invalidate() {
        super.invalidate();
        Arrays.fill(this.planeEnabled, false);
    }
}
