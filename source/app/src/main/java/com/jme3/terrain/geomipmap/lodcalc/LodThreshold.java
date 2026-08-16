package com.jme3.terrain.geomipmap.lodcalc;

import com.jme3.export.Savable;

public interface LodThreshold extends Savable, Cloneable {
    LodThreshold clone();

    float getLodDistanceThreshold();
}
