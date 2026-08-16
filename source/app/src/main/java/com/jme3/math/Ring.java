package com.jme3.math;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import ga.m;
import java.io.IOException;
import java.io.Serializable;

public final class Ring implements Savable, Cloneable, Serializable {

    private static transient Vector3f f81607b1 = new Vector3f();

    private static transient Vector3f f81608b2 = new Vector3f();
    static final long serialVersionUID = 1;
    private Vector3f center;
    private float innerRadius;
    private float outerRadius;
    private Vector3f up;

    public Ring() {
        this.center = new Vector3f();
        this.up = Vector3f.UNIT_Y.m1292clone();
        this.innerRadius = 0.0f;
        this.outerRadius = 1.0f;
    }

    public Vector3f getCenter() {
        return this.center;
    }

    public float getInnerRadius() {
        return this.innerRadius;
    }

    public float getOuterRadius() {
        return this.outerRadius;
    }

    public Vector3f getUp() {
        return this.up;
    }

    public Vector3f random() {
        return random(null);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.center = (Vector3f) capsule.readSavable("center", Vector3f.ZERO.m1292clone());
        this.up = (Vector3f) capsule.readSavable(m.f88236e, Vector3f.UNIT_Z.m1292clone());
        this.innerRadius = capsule.readFloat("innerRadius", 0.0f);
        this.outerRadius = capsule.readFloat("outerRadius", 1.0f);
    }

    public void setCenter(Vector3f vector3f) {
        this.center = vector3f;
    }

    public void setInnerRadius(float f10) {
        this.innerRadius = f10;
    }

    public void setOuterRadius(float f10) {
        this.outerRadius = f10;
    }

    public void setUp(Vector3f vector3f) {
        this.up = vector3f;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.center, "center", Vector3f.ZERO);
        capsule.write(this.up, m.f88236e, Vector3f.UNIT_Z);
        capsule.write(this.innerRadius, "innerRadius", 0.0f);
        capsule.write(this.outerRadius, "outerRadius", 1.0f);
    }

    public Ring m1288clone() {
        try {
            Ring ring = (Ring) super.clone();
            ring.center = this.center.m1292clone();
            ring.up = this.up.m1292clone();
            return ring;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Vector3f random(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        float f10 = this.innerRadius;
        float f11 = f10 * f10;
        float f12 = this.outerRadius;
        float sqrt = FastMath.sqrt(f11 + (FastMath.nextRandomFloat() * ((f12 * f12) - f11)));
        float nextRandomFloat = FastMath.nextRandomFloat() * 6.2831855f;
        this.up.cross(Vector3f.UNIT_X, f81607b1);
        if (f81607b1.lengthSquared() < 1.1920929E-7f) {
            this.up.cross(Vector3f.UNIT_Y, f81607b1);
        }
        f81607b1.normalizeLocal();
        this.up.cross(f81607b1, f81608b2);
        vector3f.set(f81607b1).multLocal(FastMath.cos(nextRandomFloat) * sqrt).addLocal(this.center);
        vector3f.scaleAdd(sqrt * FastMath.sin(nextRandomFloat), f81608b2, vector3f);
        return vector3f;
    }

    public Ring(Vector3f vector3f, Vector3f vector3f2, float f10, float f11) {
        this.center = vector3f;
        this.up = vector3f2;
        this.innerRadius = f10;
        this.outerRadius = f11;
    }
}
