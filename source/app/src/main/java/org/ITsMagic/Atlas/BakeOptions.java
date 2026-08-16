package org.ITsMagic.Atlas;

import com.google.gson.annotations.Expose;

public class BakeOptions {

    @Expose
    public boolean light = true;

    @Expose
    public int maxReflections = 1;

    @Expose
    public float photonLightCircleMultiplier = 1.0f;

    @Expose
    public float photonCollisionReduction = 0.5f;

    @Expose
    public boolean enableLightBlur = false;

    @Expose
    public int blurCount = 1;

    @Expose
    public float blurSize = 0.001f;

    @Expose
    public float blurSizeIncrementPerSample = 0.001f;

    @Expose
    public float blurDirections = 8.0f;

    @Expose
    public float blurQuality = 4.0f;

    @Expose
    public int maxRTXSamples = 100;

    @Expose
    public float globalIntensity = 1.0f;

    @Expose
    public float diffuseDistortion = 0.02f;

    @Expose
    public boolean texture = true;

    public int f99793a = -1;

    @Expose
    public float maxChartArea = 0.0f;

    @Expose
    public float maxBoundaryLength = 0.0f;

    @Expose
    public float normalDeviationWeight = 2.0f;

    @Expose
    public float roundnessWeight = 0.01f;

    @Expose
    public float straightnessWeight = 6.0f;

    @Expose
    public float normalSeamWeight = 4.0f;

    @Expose
    public float textureSeamWeight = 0.5f;

    @Expose
    public int maxChartSize = 0;

    @Expose
    public float texelsPerUnit = 64.0f;

    @Expose
    public int padding = 8;

    @Expose
    public boolean bilinear = true;

    @Expose
    public boolean blockAlign = true;

    @Expose
    public boolean collider = true;
}
