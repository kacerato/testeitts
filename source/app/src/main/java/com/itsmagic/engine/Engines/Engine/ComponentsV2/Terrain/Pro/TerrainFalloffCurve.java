package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro;

import java.io.Serializable;

/**
 * Advanced Brush Falloff Curve Evaluator for Terrain Sculpting & Painting.
 * Supports Unity-style and advanced mathematical falloff functions.
 */
public class TerrainFalloffCurve implements Serializable {

    public enum Type {
        LINEAR,
        SMOOTH_STEP,
        COSINE,
        SPIKE,
        GAUSSIAN,
        BOX,
        CUSTOM_BEZIER
    }

    private Type type = Type.SMOOTH_STEP;
    private float sharpness = 1.0f;
    private float customP1 = 0.25f;
    private float customP2 = 0.75f;

    public TerrainFalloffCurve() {
    }

    public TerrainFalloffCurve(Type type) {
        this.type = type;
    }

    public TerrainFalloffCurve(Type type, float sharpness) {
        this.type = type;
        this.sharpness = sharpness;
    }

    /**
     * Evaluates the falloff weight for a normalized distance [0.0 = center, 1.0 = edge].
     * @param normalizedDist Distance from brush center (0.0 at center to 1.0 at radius edge)
     * @return Weight multiplier in range [0.0, 1.0]
     */
    public float evaluate(float normalizedDist) {
        if (normalizedDist <= 0.0f) return 1.0f;
        if (normalizedDist >= 1.0f) return 0.0f;

        float t = 1.0f - normalizedDist; // 1.0 at center, 0.0 at edge

        switch (type) {
            case LINEAR:
                return (float) Math.pow(t, sharpness);

            case SMOOTH_STEP:
                // Cubic Hermite smoothstep: 3*t^2 - 2*t^3
                float s = t * t * (3.0f - 2.0f * t);
                return (float) Math.pow(s, sharpness);

            case COSINE:
                // Half cosine curve
                float c = (float) (0.5f * (1.0f + Math.cos(normalizedDist * Math.PI)));
                return (float) Math.pow(c, sharpness);

            case SPIKE:
                // Pointy center, rapid dropoff
                return (float) (Math.exp(-normalizedDist * 4.0f * sharpness));

            case GAUSSIAN:
                // Gaussian bell curve
                float sigma = 0.35f / sharpness;
                return (float) Math.exp(-(normalizedDist * normalizedDist) / (2.0f * sigma * sigma));

            case BOX:
                return normalizedDist < (1.0f / sharpness) ? 1.0f : 0.0f;

            case CUSTOM_BEZIER:
                // Cubic Bezier curve evaluation P0=(0,1), P1=(0.25, customP1), P2=(0.75, customP2), P3=(1,0)
                float u = 1.0f - normalizedDist;
                float tt = u * u;
                float uuu = tt * u;
                return Math.max(0.0f, Math.min(1.0f, uuu + 3.0f * tt * normalizedDist * customP1 + 3.0f * u * normalizedDist * normalizedDist * customP2));

            default:
                return t;
        }
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public float getSharpness() {
        return sharpness;
    }

    public void setSharpness(float sharpness) {
        this.sharpness = Math.max(0.1f, Math.min(10.0f, sharpness));
    }

    public float getCustomP1() {
        return customP1;
    }

    public void setCustomP1(float customP1) {
        this.customP1 = customP1;
    }

    public float getCustomP2() {
        return customP2;
    }

    public void setCustomP2(float customP2) {
        this.customP2 = customP2;
    }
}
