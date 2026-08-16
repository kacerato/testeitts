package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro;

import java.io.Serializable;

/**
 * Terrain Hole & Voxel Subterranean Transition Mask.
 * Manages transparent cutouts on the terrain for caves, dungeon entrances, and mining pits.
 */
public class TerrainHoleMask implements Serializable {

    private int maskResolution = 512;
    private byte[] holeBitmask; // 0 = solid, 1 = hole/cutout

    public TerrainHoleMask() {
        this(512);
    }

    public TerrainHoleMask(int resolution) {
        this.maskResolution = resolution;
        this.holeBitmask = new byte[resolution * resolution];
    }

    /**
     * Checks if a point on the terrain is a hole.
     */
    public boolean isHole(int x, int y) {
        if (x < 0 || x >= maskResolution || y < 0 || y >= maskResolution) return false;
        return holeBitmask[y * maskResolution + x] == 1;
    }

    /**
     * Paints a hole or restores solid ground within a circular radius.
     * @param normCenterX Normalized X in [0.0, 1.0]
     * @param normCenterY Normalized Y in [0.0, 1.0]
     * @param normRadius Normalized radius in [0.0, 1.0]
     * @param cutHole True to carve hole, False to repair
     */
    public void paintHole(float normCenterX, float normCenterY, float normRadius, boolean cutHole) {
        int cx = (int) (normCenterX * maskResolution);
        int cy = (int) (normCenterY * maskResolution);
        int r = Math.max(1, (int) (normRadius * maskResolution));
        int rSq = r * r;

        byte val = (byte) (cutHole ? 1 : 0);

        int minX = Math.max(0, cx - r);
        int maxX = Math.min(maskResolution - 1, cx + r);
        int minY = Math.max(0, cy - r);
        int maxY = Math.min(maskResolution - 1, cy + r);

        for (int y = minY; y <= maxY; y++) {
            for (int x = minX; x <= maxX; x++) {
                int dx = x - cx;
                int dy = y - cy;
                if (dx * dx + dy * dy <= rSq) {
                    holeBitmask[y * maskResolution + x] = val;
                }
            }
        }
    }

    public void clearHoles() {
        for (int i = 0; i < holeBitmask.length; i++) {
            holeBitmask[i] = 0;
        }
    }

    public int getResolution() {
        return maskResolution;
    }

    public byte[] getRawBitmask() {
        return holeBitmask;
    }
}
