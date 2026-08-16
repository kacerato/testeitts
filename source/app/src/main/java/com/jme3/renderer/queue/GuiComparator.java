package com.jme3.renderer.queue;

import com.jme3.renderer.Camera;
import com.jme3.scene.Geometry;

public class GuiComparator implements GeometryComparator {
    @Override
    public void setCamera(Camera camera) {
    }

    @Override
    public int compare(Geometry geometry, Geometry geometry2) {
        float z10 = geometry.getWorldTranslation().getZ();
        float z11 = geometry2.getWorldTranslation().getZ();
        if (z10 > z11) {
            return 1;
        }
        return z10 < z11 ? -1 : 0;
    }
}
