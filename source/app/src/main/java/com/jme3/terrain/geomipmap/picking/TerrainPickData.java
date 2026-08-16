package com.jme3.terrain.geomipmap.picking;

import com.jme3.collision.CollisionResult;
import com.jme3.terrain.geomipmap.TerrainPatch;

public class TerrainPickData implements Comparable {
    protected CollisionResult cr;
    protected TerrainPatch targetPatch;

    public TerrainPickData() {
    }

    @Override
    public int compareTo(Object obj) {
        if (!(obj instanceof TerrainPickData)) {
            return 0;
        }
        TerrainPickData terrainPickData = (TerrainPickData) obj;
        if (this.cr.getDistance() < terrainPickData.cr.getDistance()) {
            return -1;
        }
        return this.cr.getDistance() == terrainPickData.cr.getDistance() ? 0 : 1;
    }

    public boolean equals(Object obj) {
        return obj instanceof TerrainPickData ? ((TerrainPickData) obj).compareTo(this) == 0 : super.equals(obj);
    }

    public TerrainPickData(TerrainPatch terrainPatch, CollisionResult collisionResult) {
        this.targetPatch = terrainPatch;
        this.cr = collisionResult;
    }
}
