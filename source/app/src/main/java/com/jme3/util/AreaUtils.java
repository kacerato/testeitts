package com.jme3.util;

import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.bounding.BoundingVolume;

public final class AreaUtils {
    private AreaUtils() {
    }

    public static float calcScreenArea(BoundingVolume boundingVolume, float f10, float f11) {
        if (boundingVolume.getType() == BoundingVolume.Type.Sphere) {
            return calcScreenArea((BoundingSphere) boundingVolume, f10, f11);
        }
        if (boundingVolume.getType() == BoundingVolume.Type.AABB) {
            return calcScreenArea((BoundingBox) boundingVolume, f10, f11);
        }
        return 0.0f;
    }

    private static float calcScreenArea(BoundingSphere boundingSphere, float f10, float f11) {
        float radius = (boundingSphere.getRadius() * f11) / (f10 * 2.0f);
        return radius * radius * 3.1415927f;
    }

    private static float calcScreenArea(BoundingBox boundingBox, float f10, float f11) {
        return ((((((boundingBox.getXExtent() * boundingBox.getXExtent()) + (boundingBox.getYExtent() * boundingBox.getYExtent())) + (boundingBox.getZExtent() * boundingBox.getZExtent())) * f11) * f11) / ((f10 * f10) * 4.0f)) * 3.1415927f;
    }
}
