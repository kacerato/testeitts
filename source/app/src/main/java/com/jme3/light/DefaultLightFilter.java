package com.jme3.light;

import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.bounding.BoundingVolume;
import com.jme3.light.Light;
import com.jme3.renderer.Camera;
import com.jme3.scene.Geometry;
import com.jme3.util.TempVars;
import java.util.HashSet;
import java.util.Iterator;

public final class DefaultLightFilter implements LightFilter {
    private Camera camera;
    private LightProbeBlendingStrategy probeBlendStrategy;
    private final HashSet<Light> processedLights;

    public DefaultLightFilter() {
        this.processedLights = new HashSet<>();
        this.probeBlendStrategy = new WeightedProbeBlendingStrategy();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0069 A[Catch: all -> 0x002f, TryCatch #0 {all -> 0x002f, blocks: (B:3:0x0004, B:4:0x000a, B:6:0x0010, B:10:0x0074, B:11:0x001b, B:13:0x001f, B:14:0x0031, B:18:0x0036, B:20:0x003e, B:24:0x0061, B:26:0x0069, B:28:0x0071, B:30:0x0047, B:32:0x004b, B:34:0x0058, B:39:0x0077), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0071 A[Catch: all -> 0x002f, TryCatch #0 {all -> 0x002f, blocks: (B:3:0x0004, B:4:0x000a, B:6:0x0010, B:10:0x0074, B:11:0x001b, B:13:0x001f, B:14:0x0031, B:18:0x0036, B:20:0x003e, B:24:0x0061, B:26:0x0069, B:28:0x0071, B:30:0x0047, B:32:0x004b, B:34:0x0058, B:39:0x0077), top: B:2:0x0004 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void filterLights(Geometry geometry, LightList lightList) {
        TempVars tempVars = TempVars.get();
        try {
            LightList worldLightList = geometry.getWorldLightList();
            for (int i10 = 0; i10 < worldLightList.size(); i10++) {
                Light light = worldLightList.get(i10);
                if (light.isEnabled()) {
                    if (light.frustumCheckNeeded) {
                        this.processedLights.add(light);
                        light.frustumCheckNeeded = false;
                        light.intersectsFrustum = light.intersectsFrustum(this.camera, tempVars);
                    }
                    if (light.intersectsFrustum) {
                        BoundingVolume worldBound = geometry.getWorldBound();
                        if (worldBound instanceof BoundingBox) {
                            if (!light.intersectsBox((BoundingBox) worldBound, tempVars)) {
                            }
                            if (light.getType() != Light.Type.Probe) {
                                this.probeBlendStrategy.registerProbe((LightProbe) light);
                            } else {
                                lightList.add(light);
                            }
                        } else {
                            if ((worldBound instanceof BoundingSphere) && !Float.isInfinite(((BoundingSphere) worldBound).getRadius()) && !light.intersectsSphere((BoundingSphere) worldBound, tempVars)) {
                            }
                            if (light.getType() != Light.Type.Probe) {
                            }
                        }
                    }
                }
            }
            this.probeBlendStrategy.populateProbes(geometry, lightList);
            tempVars.release();
        } catch (Throwable th2) {
            tempVars.release();
            throw th2;
        }
    }

    @Override
    public void setCamera(Camera camera) {
        this.camera = camera;
        Iterator<Light> it = this.processedLights.iterator();
        while (it.hasNext()) {
            it.next().frustumCheckNeeded = true;
        }
        this.processedLights.clear();
    }

    public void setLightProbeBlendingStrategy(LightProbeBlendingStrategy lightProbeBlendingStrategy) {
        this.probeBlendStrategy = lightProbeBlendingStrategy;
    }

    public DefaultLightFilter(LightProbeBlendingStrategy lightProbeBlendingStrategy) {
        this.processedLights = new HashSet<>();
        this.probeBlendStrategy = lightProbeBlendingStrategy;
    }
}
