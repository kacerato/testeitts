package com.ardor3d.renderer.state.record;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.util.geom.BufferUtils;
import java.nio.FloatBuffer;

public class TextureRecord extends StateRecord {
    public static FloatBuffer colorBuffer = BufferUtils.createColorBuffer(1);
    public float anisoLevel = -1.0f;
    public ColorRGBA borderColor = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public int depthTextureCompareFunc;
    public int depthTextureCompareMode;
    public int depthTextureMode;
    public int magFilter;
    public int minFilter;
    public int wrapR;
    public int wrapS;
    public int wrapT;

    @Override
    public void invalidate() {
        super.invalidate();
        this.wrapR = 0;
        this.wrapT = 0;
        this.wrapS = 0;
        this.minFilter = 0;
        this.magFilter = 0;
        this.depthTextureCompareMode = 0;
        this.depthTextureCompareFunc = 0;
        this.depthTextureMode = 0;
        this.anisoLevel = -1.0f;
        this.borderColor.set(-1.0f, -1.0f, -1.0f, -1.0f);
    }
}
