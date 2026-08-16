package com.jme3.light;

import com.jme3.renderer.Camera;
import com.jme3.scene.Geometry;

public class NullLightFilter implements LightFilter {
    @Override
    public void filterLights(Geometry geometry, LightList lightList) {
    }

    @Override
    public void setCamera(Camera camera) {
    }
}
