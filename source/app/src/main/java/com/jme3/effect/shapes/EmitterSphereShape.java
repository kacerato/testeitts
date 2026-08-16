package com.jme3.effect.shapes;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;

public class EmitterSphereShape implements EmitterShape {
    private Vector3f center;
    private float radius;

    public EmitterSphereShape() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.center = (Vector3f) cloner.clone(this.center);
    }

    @Override
    public EmitterShape deepClone() {
        try {
            EmitterSphereShape emitterSphereShape = (EmitterSphereShape) super.clone();
            emitterSphereShape.center = this.center.m1292clone();
            return emitterSphereShape;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Vector3f getCenter() {
        return this.center;
    }

    public float getRadius() {
        return this.radius;
    }

    @Override
    public void getRandomPoint(Vector3f vector3f) {
        do {
            vector3f.f81611x = (FastMath.nextRandomFloat() * 2.0f) - 1.0f;
            vector3f.f81612y = (FastMath.nextRandomFloat() * 2.0f) - 1.0f;
            vector3f.f81613z = (FastMath.nextRandomFloat() * 2.0f) - 1.0f;
        } while (vector3f.lengthSquared() > 1.0f);
        vector3f.multLocal(this.radius);
        vector3f.addLocal(this.center);
    }

    @Override
    public void getRandomPointAndNormal(Vector3f vector3f, Vector3f vector3f2) {
        getRandomPoint(vector3f);
        vector3f2.set(vector3f).subtractLocal(this.center).normalizeLocal();
    }

    @Override
    public Object jmeClone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.center = (Vector3f) capsule.readSavable("center", null);
        this.radius = capsule.readFloat(TestVFXEffect.f77524P, 0.0f);
    }

    public void setCenter(Vector3f vector3f) {
        this.center = vector3f;
    }

    public void setRadius(float f10) {
        this.radius = f10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.center, "center", (Savable) null);
        capsule.write(this.radius, TestVFXEffect.f77524P, 0.0f);
    }

    public EmitterSphereShape(Vector3f vector3f, float f10) {
        if (vector3f == null) {
            throw new IllegalArgumentException("center cannot be null");
        }
        if (f10 > 0.0f) {
            this.center = vector3f;
            this.radius = f10;
            return;
        }
        throw new IllegalArgumentException("Radius must be greater than 0");
    }
}
