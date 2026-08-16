package com.jme3.renderer.queue;

import com.jme3.renderer.Camera;
import com.jme3.scene.Geometry;

public class NullComparator implements GeometryComparator {
    @Override
    public int compare(Geometry geometry, Geometry geometry2) {
        return 0;
    }

    @Override
    public void setCamera(Camera camera) {
    }
}
