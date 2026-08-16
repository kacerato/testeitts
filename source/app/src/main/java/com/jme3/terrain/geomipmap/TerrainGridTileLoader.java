package com.jme3.terrain.geomipmap;

import com.jme3.export.Savable;
import com.jme3.math.Vector3f;

public interface TerrainGridTileLoader extends Savable {
    TerrainQuad getTerrainQuadAt(Vector3f vector3f);

    void setPatchSize(int i10);

    void setQuadSize(int i10);
}
