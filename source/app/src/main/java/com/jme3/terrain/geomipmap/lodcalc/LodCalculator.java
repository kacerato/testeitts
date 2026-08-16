package com.jme3.terrain.geomipmap.lodcalc;

import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.terrain.geomipmap.TerrainPatch;
import com.jme3.terrain.geomipmap.UpdatedTerrainPatch;
import java.util.HashMap;
import java.util.List;

public interface LodCalculator extends Savable, Cloneable {
    boolean calculateLod(TerrainPatch terrainPatch, List<Vector3f> list, HashMap<String, UpdatedTerrainPatch> hashMap);

    LodCalculator clone();

    boolean isLodOff();

    void turnOffLod();

    void turnOnLod();

    boolean usesVariableLod();
}
