package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro;

import java.io.Serializable;

/**
 * Ramp & Road Path Generator for Terrain Editing.
 * Creates smooth slopes, roads, and ramps between two 3D points on the terrain.
 */
public class RampPathGenerator implements Serializable {

    private float startX, startY, startZ;
    private float endX, endY, endZ;
    private float roadWidth = 12.0f;
    private float shoulderWidth = 6.0f;
    private TerrainFalloffCurve shoulderFalloff = new TerrainFalloffCurve(TerrainFalloffCurve.Type.SMOOTH_STEP);

    public RampPathGenerator() {
    }

    public void setStartPoint(float x, float y, float z) {
        this.startX = x;
        this.startY = y;
        this.startZ = z;
    }

    public void setEndPoint(float x, float y, float z) {
        this.endX = x;
        this.endY = y;
        this.endZ = z;
    }

    public void setRoadWidth(float roadWidth) {
        this.roadWidth = Math.max(1.0f, roadWidth);
    }

    public void setShoulderWidth(float shoulderWidth) {
        this.shoulderWidth = Math.max(0.1f, shoulderWidth);
    }

    /**
     * Calculates the modified height for a given world coordinate (x, z) along the ramp.
     * @param currentHeight Current height of the terrain at (x, z)
     * @param x World X coordinate
     * @param z World Z coordinate
     * @return New interpolated height, or currentHeight if outside ramp influence
     */
    public float evaluateHeightAt(float currentHeight, float x, float z) {
        float dx = endX - startX;
        float dz = endZ - startZ;
        float dy = endY - startY;

        float lenSq = dx * dx + dz * dz;
        if (lenSq <= 0.0001f) {
            return currentHeight;
        }

        // Project point (x, z) onto line segment (startX, startZ) -> (endX, endZ)
        float t = ((x - startX) * dx + (z - startZ) * dz) / lenSq;
        if (t < 0.0f || t > 1.0f) {
            return currentHeight;
        }

        // Closest point on ramp centerline
        float projX = startX + t * dx;
        float projZ = startZ + t * dz;
        float targetRampHeight = startY + t * dy;

        // Distance from point to ramp centerline
        float distToCenterline = (float) Math.sqrt((x - projX) * (x - projX) + (z - projZ) * (z - projZ));
        float halfRoad = roadWidth * 0.5f;

        if (distToCenterline <= halfRoad) {
            // Inside the flat road surface
            return targetRampHeight;
        } else if (distToCenterline <= halfRoad + shoulderWidth) {
            // Inside the shoulder falloff zone
            float normalizedShoulderDist = (distToCenterline - halfRoad) / shoulderWidth;
            float weight = shoulderFalloff.evaluate(normalizedShoulderDist);
            return currentHeight * (1.0f - weight) + targetRampHeight * weight;
        }

        return currentHeight;
    }

    public float getRoadWidth() {
        return roadWidth;
    }

    public float getShoulderWidth() {
        return shoulderWidth;
    }
}
