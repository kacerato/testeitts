package com.jme3.light;

import com.jme3.scene.Geometry;
import java.util.ArrayList;
import java.util.List;

public class BasicProbeBlendingStrategy implements LightProbeBlendingStrategy {
    List<LightProbe> lightProbes = new ArrayList();

    @Override
    public void populateProbes(Geometry geometry, LightList lightList) {
        if (this.lightProbes.isEmpty()) {
            return;
        }
        LightProbe lightProbe = this.lightProbes.get(0);
        if (lightProbe.isReady()) {
            lightList.add(lightProbe);
        }
        this.lightProbes.clear();
    }

    @Override
    public void registerProbe(LightProbe lightProbe) {
        this.lightProbes.add(lightProbe);
    }
}
