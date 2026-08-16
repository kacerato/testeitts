package com.jme3.light;

import com.jme3.renderer.Camera;
import com.jme3.scene.Geometry;

public interface LightFilter {
    void filterLights(Geometry geometry, LightList lightList);

    void setCamera(Camera camera);
}
