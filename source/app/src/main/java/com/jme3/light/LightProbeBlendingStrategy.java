package com.jme3.light;

import com.jme3.scene.Geometry;

public interface LightProbeBlendingStrategy {
    void populateProbes(Geometry geometry, LightList lightList);

    void registerProbe(LightProbe lightProbe);
}
