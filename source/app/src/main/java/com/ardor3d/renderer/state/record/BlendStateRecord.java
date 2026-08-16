package com.ardor3d.renderer.state.record;

import com.ardor3d.math.ColorRGBA;

public class BlendStateRecord extends StateRecord {
    public boolean blendEnabled = false;
    public boolean testEnabled = false;
    public int srcFactorRGB = -1;
    public int dstFactorRGB = -1;
    public int blendEqRGB = -1;
    public int srcFactorAlpha = -1;
    public int dstFactorAlpha = -1;
    public int blendEqAlpha = -1;
    public int alphaFunc = -1;
    public float alphaRef = -1.0f;
    public ColorRGBA blendColor = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public boolean sampleAlphaToCoverageEnabled = false;
    public boolean sampleAlphaToOneEnabled = false;
    public boolean sampleCoverageEnabled = false;
    public boolean sampleCoverageInverted = false;
    public float sampleCoverage = 1.0f;

    @Override
    public void invalidate() {
        super.invalidate();
        this.blendEnabled = false;
        this.testEnabled = false;
        this.srcFactorRGB = -1;
        this.dstFactorRGB = -1;
        this.blendEqRGB = -1;
        this.srcFactorAlpha = -1;
        this.dstFactorAlpha = -1;
        this.blendEqAlpha = -1;
        this.alphaFunc = -1;
        this.alphaRef = -1.0f;
        this.blendColor.set(-1.0f, -1.0f, -1.0f, -1.0f);
        this.sampleAlphaToCoverageEnabled = false;
        this.sampleAlphaToOneEnabled = false;
        this.sampleCoverageEnabled = false;
        this.sampleCoverageInverted = false;
        this.sampleCoverage = -1.0f;
    }
}
