package com.jme3.terrain.geomipmap.picking;

import com.jme3.collision.CollisionResults;
import com.jme3.math.Ray;

public interface TerrainPicker {
    int getTerrainIntersection(Ray ray, CollisionResults collisionResults);
}
