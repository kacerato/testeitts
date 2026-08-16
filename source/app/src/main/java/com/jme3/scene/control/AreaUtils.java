package com.jme3.scene.control;

import com.jme3.bounding.BoundingVolume;

@Deprecated
public class AreaUtils {
    private AreaUtils() {
    }

    public static float calcScreenArea(BoundingVolume boundingVolume, float f10, float f11) {
        return com.jme3.util.AreaUtils.calcScreenArea(boundingVolume, f10, f11);
    }
}
