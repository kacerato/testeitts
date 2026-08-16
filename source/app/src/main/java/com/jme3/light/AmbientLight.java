package com.jme3.light;

import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.light.Light;
import com.jme3.math.ColorRGBA;
import com.jme3.renderer.Camera;
import com.jme3.scene.Spatial;
import com.jme3.util.TempVars;

public class AmbientLight extends Light {
    public AmbientLight() {
    }

    @Override
    public void computeLastDistance(Spatial spatial) {
        this.lastDistance = -2.0f;
    }

    @Override
    public Light.Type getType() {
        return Light.Type.Ambient;
    }

    @Override
    public boolean intersectsBox(BoundingBox boundingBox, TempVars tempVars) {
        return true;
    }

    @Override
    public boolean intersectsFrustum(Camera camera, TempVars tempVars) {
        return true;
    }

    @Override
    public boolean intersectsSphere(BoundingSphere boundingSphere, TempVars tempVars) {
        return true;
    }

    public String toString() {
        return getClass().getSimpleName() + "[name=" + this.name + ", color=" + ((Object) this.color) + ", enabled=" + this.enabled + "]";
    }

    public AmbientLight(ColorRGBA colorRGBA) {
        super(colorRGBA);
    }
}
