package com.jme3.terrain.geomipmap;

import com.jme3.math.Vector3f;

public interface TerrainGridListener {
    void gridMoved(Vector3f vector3f);

    void tileAttached(Vector3f vector3f, TerrainQuad terrainQuad);

    void tileDetached(Vector3f vector3f, TerrainQuad terrainQuad);
}
