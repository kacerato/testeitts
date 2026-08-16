package com.jme3.math;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.io.Serializable;
import java.util.logging.Logger;
import org.eclipse.jdt.core.JavaCore;

public class Plane implements Savable, Cloneable, Serializable {
    private static final Logger logger = Logger.getLogger(Plane.class.getName());
    static final long serialVersionUID = 1;
    protected float constant;
    protected Vector3f normal;

    public enum Side {
        None,
        Positive,
        Negative
    }

    public Plane() {
        this.normal = new Vector3f();
    }

    public Vector3f getClosestPoint(Vector3f vector3f, Vector3f vector3f2) {
        float dot = this.constant - this.normal.dot(vector3f);
        Vector3f vector3f3 = this.normal;
        return vector3f2.set(this.normal).multLocal(dot / vector3f3.dot(vector3f3)).addLocal(vector3f);
    }

    public float getConstant() {
        return this.constant;
    }

    public Vector3f getNormal() {
        return this.normal;
    }

    public boolean isOnPlane(Vector3f vector3f) {
        float pseudoDistance = pseudoDistance(vector3f);
        return pseudoDistance < 1.1920929E-7f && pseudoDistance > -1.1920929E-7f;
    }

    public float pseudoDistance(Vector3f vector3f) {
        return this.normal.dot(vector3f) - this.constant;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.normal = (Vector3f) capsule.readSavable(JavaCore.NORMAL, Vector3f.ZERO.m1292clone());
        this.constant = capsule.readFloat("constant", 0.0f);
    }

    public Vector3f reflect(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        vector3f2.set(this.normal).negateLocal().multLocal(pseudoDistance(vector3f) * 2.0f);
        vector3f2.addLocal(vector3f);
        return vector3f2;
    }

    public void setConstant(float f10) {
        this.constant = f10;
    }

    public void setNormal(Vector3f vector3f) {
        if (vector3f != null) {
            this.normal.set(vector3f);
            return;
        }
        throw new IllegalArgumentException("normal cannot be null");
    }

    public void setOriginNormal(Vector3f vector3f, Vector3f vector3f2) {
        this.normal.set(vector3f2);
        this.constant = (vector3f2.f81611x * vector3f.f81611x) + (vector3f2.f81612y * vector3f.f81612y) + (vector3f2.f81613z * vector3f.f81613z);
    }

    public void setPlanePoints(AbstractTriangle abstractTriangle) {
        setPlanePoints(abstractTriangle.get1(), abstractTriangle.get2(), abstractTriangle.get3());
    }

    public String toString() {
        return getClass().getSimpleName() + " [Normal: " + ((Object) this.normal) + " - Constant: " + this.constant + "]";
    }

    public Side whichSide(Vector3f vector3f) {
        float pseudoDistance = pseudoDistance(vector3f);
        return pseudoDistance < 0.0f ? Side.Negative : pseudoDistance > 0.0f ? Side.Positive : Side.None;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.normal, JavaCore.NORMAL, Vector3f.ZERO);
        capsule.write(this.constant, "constant", 0.0f);
    }

    public Plane m1284clone() {
        try {
            Plane plane = (Plane) super.clone();
            plane.normal = this.normal.m1292clone();
            return plane;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public void setPlanePoints(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        this.normal.set(vector3f2).subtractLocal(vector3f);
        this.normal.crossLocal(vector3f3.f81611x - vector3f.f81611x, vector3f3.f81612y - vector3f.f81612y, vector3f3.f81613z - vector3f.f81613z).normalizeLocal();
        this.constant = this.normal.dot(vector3f);
    }

    public Plane(Vector3f vector3f, float f10) {
        Vector3f vector3f2 = new Vector3f();
        this.normal = vector3f2;
        if (vector3f != null) {
            vector3f2.set(vector3f);
            this.constant = f10;
            return;
        }
        throw new IllegalArgumentException("normal cannot be null");
    }

    public Vector3f getClosestPoint(Vector3f vector3f) {
        return getClosestPoint(vector3f, new Vector3f());
    }

    public void setNormal(float f10, float f11, float f12) {
        this.normal.set(f10, f11, f12);
    }

    public Plane(Vector3f vector3f, Vector3f vector3f2) {
        this(vector3f, vector3f2.dot(vector3f));
    }
}
