package com.ardor3d.renderer.state.record;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.renderer.state.FogState;
import com.ardor3d.util.geom.BufferUtils;
import java.nio.FloatBuffer;

public class FogStateRecord extends StateRecord {
    public FloatBuffer colorBuff;
    public ColorRGBA fogColor;
    public boolean enabled = false;
    public float fogStart = -1.0f;
    public float fogEnd = -1.0f;
    public float density = -1.0f;
    public int fogMode = -1;
    public int fogHint = -1;
    public FogState.CoordinateSource source = null;

    public FogStateRecord() {
        this.fogColor = null;
        this.colorBuff = null;
        this.fogColor = new ColorRGBA(0.0f, 0.0f, 0.0f, -1.0f);
        this.colorBuff = BufferUtils.createColorBuffer(1);
    }

    @Override
    public void invalidate() {
        super.invalidate();
        this.enabled = false;
        this.fogStart = -1.0f;
        this.fogEnd = -1.0f;
        this.density = -1.0f;
        this.fogMode = -1;
        this.fogHint = -1;
        this.fogColor.set(0.0f, 0.0f, 0.0f, -1.0f);
        this.source = null;
    }
}
