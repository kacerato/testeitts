package com.jme3.terrain.heightmap;

public interface HeightMap {
    float[] getHeightMap();

    float getInterpolatedHeight(float f10, float f11);

    float getScaledHeightAtPoint(int i10, int i11);

    float[] getScaledHeightMap();

    int getSize();

    float getTrueHeightAtPoint(int i10, int i11);

    boolean load();

    void setHeightAtPoint(float f10, int i10, int i11);

    void setHeightScale(float f10);

    void setMagnificationFilter(float f10) throws Exception;

    void setSize(int i10) throws Exception;

    void unloadHeightMap();
}
