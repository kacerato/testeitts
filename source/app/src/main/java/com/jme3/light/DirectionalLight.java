package com.jme3.light;

import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.light.Light;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.scene.Spatial;
import com.jme3.util.TempVars;
import java.io.IOException;

public class DirectionalLight extends Light {
    protected Vector3f direction;

    public DirectionalLight() {
        this.direction = new Vector3f(0.0f, -1.0f, 0.0f);
    }

    @Override
    public void computeLastDistance(Spatial spatial) {
        this.lastDistance = -1.0f;
    }

    public Vector3f getDirection() {
        return this.direction;
    }

    @Override
    public Light.Type getType() {
        return Light.Type.Directional;
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

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.direction = (Vector3f) jmeImporter.getCapsule(this).readSavable("direction", null);
    }

    public final void setDirection(Vector3f vector3f) {
        this.direction.set(vector3f);
        if (this.direction.isUnitVector()) {
            return;
        }
        this.direction.normalizeLocal();
    }

    public String toString() {
        return getClass().getSimpleName() + "[name=" + this.name + ", direction=" + ((Object) this.direction) + ", color=" + ((Object) this.color) + ", enabled=" + this.enabled + "]";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.direction, "direction", (Savable) null);
    }

    public DirectionalLight(boolean z10) {
        this();
        this.global = z10;
    }

    @Override
    public DirectionalLight mo1270clone() {
        DirectionalLight directionalLight = (DirectionalLight) super.mo1270clone();
        directionalLight.direction = this.direction.m1292clone();
        return directionalLight;
    }

    public DirectionalLight(Vector3f vector3f) {
        this.direction = new Vector3f(0.0f, -1.0f, 0.0f);
        setDirection(vector3f);
    }

    public DirectionalLight(Vector3f vector3f, boolean z10) {
        this(vector3f);
        this.global = z10;
    }

    public DirectionalLight(Vector3f vector3f, ColorRGBA colorRGBA) {
        super(colorRGBA);
        this.direction = new Vector3f(0.0f, -1.0f, 0.0f);
        setDirection(vector3f);
    }

    public DirectionalLight(Vector3f vector3f, ColorRGBA colorRGBA, boolean z10) {
        this(vector3f, colorRGBA);
        this.global = z10;
    }
}
