package com.jme3.math;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.io.Serializable;

public class Triangle extends AbstractTriangle implements Savable, Cloneable, Serializable {
    static final long serialVersionUID = 1;
    private transient Vector3f center;
    private int index;
    private transient Vector3f normal;
    private Vector3f pointA = new Vector3f();
    private Vector3f pointB = new Vector3f();
    private Vector3f pointC = new Vector3f();
    private float projection;

    public Triangle() {
    }

    public static Vector3f computeTriangleNormal(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        if (vector3f4 == null) {
            vector3f4 = new Vector3f(vector3f2);
        } else {
            vector3f4.set(vector3f2);
        }
        vector3f4.subtractLocal(vector3f).crossLocal(vector3f3.f81611x - vector3f.f81611x, vector3f3.f81612y - vector3f.f81612y, vector3f3.f81613z - vector3f.f81613z);
        return vector3f4.normalizeLocal();
    }

    public void calculateCenter() {
        Vector3f vector3f = this.center;
        if (vector3f == null) {
            this.center = new Vector3f(this.pointA);
        } else {
            vector3f.set(this.pointA);
        }
        this.center.addLocal(this.pointB).addLocal(this.pointC).multLocal(0.33333334f);
    }

    public void calculateNormal() {
        Vector3f vector3f = this.normal;
        if (vector3f == null) {
            this.normal = new Vector3f(this.pointB);
        } else {
            vector3f.set(this.pointB);
        }
        Vector3f subtractLocal = this.normal.subtractLocal(this.pointA);
        Vector3f vector3f2 = this.pointC;
        float f10 = vector3f2.f81611x;
        Vector3f vector3f3 = this.pointA;
        subtractLocal.crossLocal(f10 - vector3f3.f81611x, vector3f2.f81612y - vector3f3.f81612y, vector3f2.f81613z - vector3f3.f81613z);
        this.normal.normalizeLocal();
    }

    public Vector3f get(int i10) {
        if (i10 == 0) {
            return this.pointA;
        }
        if (i10 == 1) {
            return this.pointB;
        }
        if (i10 != 2) {
            return null;
        }
        return this.pointC;
    }

    @Override
    public Vector3f get1() {
        return this.pointA;
    }

    @Override
    public Vector3f get2() {
        return this.pointB;
    }

    @Override
    public Vector3f get3() {
        return this.pointC;
    }

    public Vector3f getCenter() {
        if (this.center == null) {
            calculateCenter();
        }
        return this.center;
    }

    public int getIndex() {
        return this.index;
    }

    public Vector3f getNormal() {
        if (this.normal == null) {
            calculateNormal();
        }
        return this.normal;
    }

    public float getProjection() {
        return this.projection;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Vector3f vector3f = Vector3f.ZERO;
        this.pointA = (Vector3f) capsule.readSavable("pointa", vector3f.m1292clone());
        this.pointB = (Vector3f) jmeImporter.getCapsule(this).readSavable("pointb", vector3f.m1292clone());
        this.pointC = (Vector3f) jmeImporter.getCapsule(this).readSavable("pointc", vector3f.m1292clone());
    }

    public void set(int i10, Vector3f vector3f) {
        this.center = null;
        this.normal = null;
        if (i10 == 0) {
            this.pointA.set(vector3f);
        } else if (i10 == 1) {
            this.pointB.set(vector3f);
        } else {
            if (i10 != 2) {
                return;
            }
            this.pointC.set(vector3f);
        }
    }

    public void set1(Vector3f vector3f) {
        this.center = null;
        this.normal = null;
        this.pointA.set(vector3f);
    }

    public void set2(Vector3f vector3f) {
        this.center = null;
        this.normal = null;
        this.pointB.set(vector3f);
    }

    public void set3(Vector3f vector3f) {
        this.center = null;
        this.normal = null;
        this.pointC.set(vector3f);
    }

    public void setCenter(Vector3f vector3f) {
        this.center = vector3f;
    }

    public void setIndex(int i10) {
        this.index = i10;
    }

    public void setNormal(Vector3f vector3f) {
        this.normal = vector3f;
    }

    public void setProjection(float f10) {
        this.projection = f10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        Vector3f vector3f = this.pointA;
        Vector3f vector3f2 = Vector3f.ZERO;
        capsule.write(vector3f, "pointa", vector3f2);
        jmeExporter.getCapsule(this).write(this.pointB, "pointb", vector3f2);
        jmeExporter.getCapsule(this).write(this.pointC, "pointc", vector3f2);
    }

    public Triangle m1290clone() {
        try {
            Triangle triangle = (Triangle) super.clone();
            triangle.pointA = this.pointA.m1292clone();
            triangle.pointB = this.pointB.m1292clone();
            triangle.pointC = this.pointC.m1292clone();
            return triangle;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Triangle(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        this.pointA.set(vector3f);
        this.pointB.set(vector3f2);
        this.pointC.set(vector3f3);
    }

    public void set(int i10, float f10, float f11, float f12) {
        this.center = null;
        this.normal = null;
        if (i10 == 0) {
            this.pointA.set(f10, f11, f12);
        } else if (i10 == 1) {
            this.pointB.set(f10, f11, f12);
        } else {
            if (i10 != 2) {
                return;
            }
            this.pointC.set(f10, f11, f12);
        }
    }

    @Override
    public void set(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        this.center = null;
        this.normal = null;
        this.pointA.set(vector3f);
        this.pointB.set(vector3f2);
        this.pointC.set(vector3f3);
    }
}
