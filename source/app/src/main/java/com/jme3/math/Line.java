package com.jme3.math;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.BufferUtils;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.io.Serializable;
import java.nio.FloatBuffer;

public class Line implements Savable, Cloneable, Serializable {
    static final long serialVersionUID = 1;
    private Vector3f direction;
    private Vector3f origin;

    public Line() {
        this.origin = new Vector3f();
        this.direction = new Vector3f();
    }

    public float distance(Vector3f vector3f) {
        return FastMath.sqrt(distanceSquared(vector3f));
    }

    public float distanceSquared(Vector3f vector3f) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f2 = tempVars.vect1;
        Vector3f vector3f3 = tempVars.vect2;
        vector3f.subtract(this.origin, vector3f2);
        this.origin.add(this.direction.mult(this.direction.dot(vector3f2), vector3f3), vector3f3);
        vector3f3.subtract(vector3f, vector3f2);
        float lengthSquared = vector3f2.lengthSquared();
        tempVars.release();
        return lengthSquared;
    }

    public Vector3f getDirection() {
        return this.direction;
    }

    public Vector3f getOrigin() {
        return this.origin;
    }

    public void orthogonalLineFit(FloatBuffer floatBuffer) {
        FloatBuffer floatBuffer2 = floatBuffer;
        if (floatBuffer2 == null) {
            return;
        }
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        Vector3f vector3f2 = tempVars.vect2;
        Matrix3f matrix3f = tempVars.tempMat3;
        Eigen3f eigen3f = tempVars.eigen;
        floatBuffer.rewind();
        int remaining = floatBuffer.remaining() / 3;
        BufferUtils.populateFromBuffer(this.origin, floatBuffer2, 0);
        for (int i10 = 1; i10 < remaining; i10++) {
            BufferUtils.populateFromBuffer(vector3f, floatBuffer2, i10);
            this.origin.addLocal(vector3f);
        }
        this.origin.multLocal(1.0f / remaining);
        floatBuffer.rewind();
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        int i11 = 0;
        while (i11 < remaining) {
            BufferUtils.populateFromBuffer(vector3f, floatBuffer2, i11);
            vector3f.subtract(this.origin, vector3f2);
            float f16 = vector3f2.f81611x;
            f14 += f16 * f16;
            float f17 = vector3f2.f81612y;
            f12 += f16 * f17;
            Vector3f vector3f3 = vector3f;
            float f18 = vector3f2.f81613z;
            f13 += f16 * f18;
            f10 += f17 * f17;
            f15 += f17 * f18;
            f11 += f18 * f18;
            i11++;
            floatBuffer2 = floatBuffer;
            vector3f = vector3f3;
        }
        matrix3f.m00 = f10 + f11;
        float f19 = -f12;
        matrix3f.m01 = f19;
        float f20 = -f13;
        matrix3f.m02 = f20;
        matrix3f.m10 = f19;
        matrix3f.m11 = f11 + f14;
        float f21 = -f15;
        matrix3f.m12 = f21;
        matrix3f.m20 = f20;
        matrix3f.m21 = f21;
        matrix3f.m22 = f14 + f10;
        eigen3f.calculateEigen(matrix3f);
        this.direction = eigen3f.getEigenVector(0);
        tempVars.release();
    }

    public Vector3f random() {
        return random(null);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Vector3f vector3f = Vector3f.ZERO;
        this.origin = (Vector3f) capsule.readSavable("origin", vector3f.m1292clone());
        this.direction = (Vector3f) capsule.readSavable("direction", vector3f.m1292clone());
    }

    public void setDirection(Vector3f vector3f) {
        this.direction = vector3f;
    }

    public void setOrigin(Vector3f vector3f) {
        this.origin = vector3f;
    }

    public String toString() {
        return getClass().getSimpleName() + " [Origin: " + ((Object) this.origin) + "  Direction: " + ((Object) this.direction) + "]";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        Vector3f vector3f = this.origin;
        Vector3f vector3f2 = Vector3f.ZERO;
        capsule.write(vector3f, "origin", vector3f2);
        capsule.write(this.direction, "direction", vector3f2);
    }

    public Line m1280clone() {
        try {
            Line line = (Line) super.clone();
            line.direction = this.direction.m1292clone();
            line.origin = this.origin.m1292clone();
            return line;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Vector3f random(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        float random = (float) Math.random();
        Vector3f vector3f2 = this.origin;
        float f10 = 1.0f - random;
        float f11 = vector3f2.f81611x * f10;
        Vector3f vector3f3 = this.direction;
        vector3f.f81611x = f11 + (vector3f3.f81611x * random);
        vector3f.f81612y = (vector3f2.f81612y * f10) + (vector3f3.f81612y * random);
        vector3f.f81613z = (vector3f2.f81613z * f10) + (vector3f3.f81613z * random);
        return vector3f;
    }

    public Line(Vector3f vector3f, Vector3f vector3f2) {
        this.origin = vector3f;
        this.direction = vector3f2;
    }
}
