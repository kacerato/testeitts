package com.jme3.terrain.heightmap;

import com.jme3.math.Vector3f;

@Deprecated
public interface HeightMapGrid {
    HeightMap getHeightMapAt(Vector3f vector3f);

    void setSize(int i10);
}
