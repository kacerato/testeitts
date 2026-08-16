package com.jme3.light;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.bounding.Intersection;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.light.Light;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.scene.Spatial;
import com.jme3.util.TempVars;
import java.io.IOException;

public class PointLight extends Light {
    protected float invRadius;
    protected Vector3f position;
    protected float radius;

    public PointLight() {
        this.position = new Vector3f();
        this.radius = 0.0f;
        this.invRadius = 0.0f;
    }

    @Override
    public void computeLastDistance(Spatial spatial) {
        if (spatial.getWorldBound() != null) {
            this.lastDistance = spatial.getWorldBound().distanceSquaredTo(this.position);
        } else {
            this.lastDistance = spatial.getWorldTranslation().distanceSquared(this.position);
        }
    }

    public float getInvRadius() {
        return this.invRadius;
    }

    public Vector3f getPosition() {
        return this.position;
    }

    public float getRadius() {
        return this.radius;
    }

    @Override
    public Light.Type getType() {
        return Light.Type.Point;
    }

    @Override
    public boolean intersectsBox(BoundingBox boundingBox, TempVars tempVars) {
        float f10 = this.radius;
        if (f10 == 0.0f) {
            return true;
        }
        return Intersection.intersect(boundingBox, this.position, f10);
    }

    @Override
    public boolean intersectsFrustum(Camera camera, TempVars tempVars) {
        float f10 = this.radius;
        if (f10 == 0.0f) {
            return true;
        }
        return Intersection.intersect(camera, this.position, f10);
    }

    @Override
    public boolean intersectsSphere(BoundingSphere boundingSphere, TempVars tempVars) {
        float f10 = this.radius;
        if (f10 == 0.0f) {
            return true;
        }
        return Intersection.intersect(boundingSphere, this.position, f10);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.position = (Vector3f) capsule.readSavable("position", null);
        float readFloat = capsule.readFloat(TestVFXEffect.f77524P, 0.0f);
        this.radius = readFloat;
        if (readFloat != 0.0f) {
            this.invRadius = 1.0f / readFloat;
        } else {
            this.invRadius = 0.0f;
        }
    }

    public final void setPosition(Vector3f vector3f) {
        this.position.set(vector3f);
    }

    public final void setRadius(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Light radius cannot be negative");
        }
        if (Float.isNaN(f10)) {
            throw new IllegalArgumentException("Light radius cannot be a NaN (Not a Number) value");
        }
        float min = Math.min(f10, 8.5070587E37f);
        this.radius = min;
        if (min != 0.0f) {
            this.invRadius = 1.0f / min;
        } else {
            this.invRadius = 0.0f;
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "[name=" + this.name + ", position=" + ((Object) this.position) + ", radius=" + this.radius + ", color=" + ((Object) this.color) + ", enabled=" + this.enabled + "]";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.position, "position", (Savable) null);
        capsule.write(this.radius, TestVFXEffect.f77524P, 0.0f);
    }

    @Override
    public PointLight mo1270clone() {
        PointLight pointLight = (PointLight) super.mo1270clone();
        pointLight.position = this.position.m1292clone();
        return pointLight;
    }

    public PointLight(boolean z10) {
        this();
        this.global = z10;
    }

    public PointLight(Vector3f vector3f) {
        this.position = new Vector3f();
        this.radius = 0.0f;
        this.invRadius = 0.0f;
        setPosition(vector3f);
    }

    public PointLight(Vector3f vector3f, boolean z10) {
        this(vector3f);
        this.global = z10;
    }

    public PointLight(Vector3f vector3f, ColorRGBA colorRGBA) {
        super(colorRGBA);
        this.position = new Vector3f();
        this.radius = 0.0f;
        this.invRadius = 0.0f;
        setPosition(vector3f);
    }

    public PointLight(Vector3f vector3f, ColorRGBA colorRGBA, boolean z10) {
        this(vector3f, colorRGBA);
        this.global = z10;
    }

    public PointLight(Vector3f vector3f, ColorRGBA colorRGBA, float f10) {
        this(vector3f, colorRGBA);
        setRadius(f10);
    }

    public PointLight(Vector3f vector3f, ColorRGBA colorRGBA, float f10, boolean z10) {
        this(vector3f, colorRGBA, f10);
        this.global = z10;
    }

    public PointLight(Vector3f vector3f, float f10) {
        this(vector3f);
        setRadius(f10);
    }

    public PointLight(Vector3f vector3f, float f10, boolean z10) {
        this(vector3f, f10);
        this.global = z10;
    }
}
