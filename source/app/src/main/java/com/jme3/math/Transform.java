package com.jme3.math;

import android.os.BatteryManager;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.io.Serializable;

public final class Transform implements Savable, Cloneable, Serializable {
    static final boolean $assertionsDisabled = false;
    public static final Transform IDENTITY = new Transform();
    static final long serialVersionUID = 1;
    private Quaternion rot;
    private Vector3f scale;
    private Vector3f translation;

    public Transform(Vector3f vector3f, Quaternion quaternion) {
        this.rot = new Quaternion();
        this.translation = new Vector3f();
        this.scale = new Vector3f(1.0f, 1.0f, 1.0f);
        this.translation.set(vector3f);
        this.rot.set(quaternion);
    }

    public Transform combineWithParent(Transform transform) {
        this.scale.multLocal(transform.scale);
        Quaternion quaternion = transform.rot;
        Quaternion quaternion2 = this.rot;
        quaternion.mult(quaternion2, quaternion2);
        this.translation.multLocal(transform.scale);
        transform.rot.multLocal(this.translation).addLocal(transform.translation);
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == null || Transform.class != obj.getClass()) {
            return false;
        }
        Transform transform = (Transform) obj;
        return this.translation.equals(transform.translation) && this.scale.equals(transform.scale) && this.rot.equals(transform.rot);
    }

    public void fromTransformMatrix(Matrix4f matrix4f) {
        TempVars tempVars = TempVars.get();
        this.translation.set(matrix4f.toTranslationVector(tempVars.vect1));
        this.rot.set(matrix4f.toRotationQuat(tempVars.quat1));
        this.scale.set(matrix4f.toScaleVector(tempVars.vect2));
        tempVars.release();
    }

    public Quaternion getRotation(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        quaternion.set(this.rot);
        return quaternion;
    }

    public Vector3f getScale() {
        return this.scale;
    }

    public Vector3f getTranslation() {
        return this.translation;
    }

    public int hashCode() {
        return ((((623 + this.rot.hashCode()) * 89) + this.translation.hashCode()) * 89) + this.scale.hashCode();
    }

    public void interpolateTransforms(Transform transform, Transform transform2, float f10) {
        this.rot.set(transform.rot);
        this.rot.nlerp(transform2.rot, f10);
        this.translation.interpolateLocal(transform.translation, transform2.translation, f10);
        this.scale.interpolateLocal(transform.scale, transform2.scale, f10);
    }

    public Transform invert() {
        Transform transform = new Transform();
        transform.fromTransformMatrix(toTransformMatrix().invertLocal());
        return transform;
    }

    public boolean isIdentity() {
        Vector3f vector3f = this.translation;
        if (vector3f.f81611x == 0.0f && vector3f.f81612y == 0.0f && vector3f.f81613z == 0.0f) {
            Vector3f vector3f2 = this.scale;
            if (vector3f2.f81611x == 1.0f && vector3f2.f81612y == 1.0f && vector3f2.f81613z == 1.0f) {
                Quaternion quaternion = this.rot;
                if (quaternion.f81600w == 1.0f && quaternion.f81601x == 0.0f && quaternion.f81602y == 0.0f && quaternion.f81603z == 0.0f) {
                    return true;
                }
            }
        }
        return false;
    }

    public void loadIdentity() {
        this.translation.set(0.0f, 0.0f, 0.0f);
        this.scale.set(1.0f, 1.0f, 1.0f);
        this.rot.set(0.0f, 0.0f, 0.0f, 1.0f);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.rot.set((Quaternion) capsule.readSavable("rot", Quaternion.IDENTITY));
        this.translation.set((Vector3f) capsule.readSavable("translation", Vector3f.ZERO));
        this.scale.set((Vector3f) capsule.readSavable(BatteryManager.EXTRA_SCALE, Vector3f.UNIT_XYZ));
    }

    public Transform set(Transform transform) {
        this.translation.set(transform.translation);
        this.rot.set(transform.rot);
        this.scale.set(transform.scale);
        return this;
    }

    public Transform setRotation(Quaternion quaternion) {
        this.rot.set(quaternion);
        return this;
    }

    public Transform setScale(Vector3f vector3f) {
        this.scale.set(vector3f);
        return this;
    }

    public Transform setTranslation(Vector3f vector3f) {
        this.translation.set(vector3f);
        return this;
    }

    public String toString() {
        return Transform.class.getSimpleName() + "[ " + this.translation.f81611x + ", " + this.translation.f81612y + ", " + this.translation.f81613z + "]\n[ " + this.rot.f81601x + ", " + this.rot.f81602y + ", " + this.rot.f81603z + ", " + this.rot.f81600w + "]\n[ " + this.scale.f81611x + " , " + this.scale.f81612y + ", " + this.scale.f81613z + "]";
    }

    public Matrix4f toTransformMatrix() {
        return toTransformMatrix(null);
    }

    public Vector3f transformInverseVector(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        vector3f.subtract(this.translation, vector3f2);
        this.rot.inverse().mult(vector3f2, vector3f2);
        vector3f2.divideLocal(this.scale);
        return vector3f2;
    }

    public Vector3f transformVector(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        return this.rot.mult(vector3f2.set(vector3f).multLocal(this.scale), vector3f2).addLocal(this.translation);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.rot, "rot", Quaternion.IDENTITY);
        capsule.write(this.translation, "translation", Vector3f.ZERO);
        capsule.write(this.scale, BatteryManager.EXTRA_SCALE, Vector3f.UNIT_XYZ);
    }

    public Transform m1289clone() {
        try {
            Transform transform = (Transform) super.clone();
            transform.rot = this.rot.m1285clone();
            transform.scale = this.scale.m1292clone();
            transform.translation = this.translation.m1292clone();
            return transform;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Vector3f getScale(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.scale);
        return vector3f;
    }

    public Vector3f getTranslation(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.translation);
        return vector3f;
    }

    public Transform setScale(float f10) {
        this.scale.set(f10, f10, f10);
        return this;
    }

    public Transform setTranslation(float f10, float f11, float f12) {
        this.translation.set(f10, f11, f12);
        return this;
    }

    public Matrix4f toTransformMatrix(Matrix4f matrix4f) {
        if (matrix4f == null) {
            matrix4f = new Matrix4f();
        }
        matrix4f.setTranslation(this.translation);
        this.rot.toTransformMatrix(matrix4f);
        matrix4f.setScale(this.scale);
        return matrix4f;
    }

    public Quaternion getRotation() {
        return this.rot;
    }

    public Transform setScale(float f10, float f11, float f12) {
        this.scale.set(f10, f11, f12);
        return this;
    }

    public Transform(Vector3f vector3f, Quaternion quaternion, Vector3f vector3f2) {
        this(vector3f, quaternion);
        this.scale.set(vector3f2);
    }

    public Transform(Vector3f vector3f) {
        this(vector3f, Quaternion.IDENTITY);
    }

    public Transform(Quaternion quaternion) {
        this(Vector3f.ZERO, quaternion);
    }

    public Transform() {
        this(Vector3f.ZERO, Quaternion.IDENTITY);
    }
}
