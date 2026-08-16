package com.jme3.terrain;

import com.jme3.material.Material;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import java.util.List;

public interface Terrain {
    void adjustHeight(Vector2f vector2f, float f10);

    void adjustHeight(List<Vector2f> list, List<Float> list2);

    void generateEntropy(ProgressMonitor progressMonitor);

    float getHeight(Vector2f vector2f);

    float[] getHeightMap();

    float getHeightmapHeight(Vector2f vector2f);

    Material getMaterial();

    Material getMaterial(Vector3f vector3f);

    int getMaxLod();

    Vector3f getNormal(Vector2f vector2f);

    int getNumMajorSubdivisions();

    int getTerrainSize();

    void setHeight(Vector2f vector2f, float f10);

    void setHeight(List<Vector2f> list, List<Float> list2);

    void setLocked(boolean z10);
}
