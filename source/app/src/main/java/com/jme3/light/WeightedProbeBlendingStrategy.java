package com.jme3.light;

import com.jme3.scene.Geometry;
import java.util.ArrayList;
import java.util.List;

public class WeightedProbeBlendingStrategy implements LightProbeBlendingStrategy {
    private static final int MAX_PROBES = 3;
    List<LightProbe> lightProbes = new ArrayList();

    @Override
    public void populateProbes(Geometry geometry, LightList lightList) {
        if (this.lightProbes.isEmpty()) {
            return;
        }
        int i10 = 0;
        for (LightProbe lightProbe : this.lightProbes) {
            if (lightProbe.isReady() && lightProbe.isEnabled()) {
                lightList.add(lightProbe);
                i10++;
            }
            if (i10 == 3) {
                break;
            }
        }
        this.lightProbes.clear();
    }

    @Override
    public void registerProbe(LightProbe lightProbe) {
        this.lightProbes.add(lightProbe);
    }
}
