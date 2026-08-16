package com.jme3.math;

import com.bumptech.glide.load.engine.GlideException;
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
import java.util.logging.Logger;

public final class Matrix4f implements Savable, Cloneable, Serializable {
    static final long serialVersionUID = 1;
    public float m00;
    public float m01;
    public float m02;
    public float m03;
    public float m10;
    public float m11;
    public float m12;
    public float m13;
    public float m20;
    public float m21;
    public float m22;
    public float m23;
    public float m30;
    public float m31;
    public float m32;
    public float m33;
    private static final Logger logger = Logger.getLogger(Matrix4f.class.getName());
    public static final Matrix4f ZERO = new Matrix4f(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
    public static final Matrix4f IDENTITY = new Matrix4f();

    public Matrix4f() {
        loadIdentity();
    }

    public static boolean equalIdentity(Matrix4f matrix4f) {
        return ((double) Math.abs(matrix4f.m00 - 1.0f)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m11 - 1.0f)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m22 - 1.0f)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m33 - 1.0f)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m01)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m02)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m03)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m10)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m12)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m13)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m20)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m21)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m23)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m30)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m31)) <= 1.0E-4d && ((double) Math.abs(matrix4f.m32)) <= 1.0E-4d;
    }

    public Matrix4f add(Matrix4f matrix4f) {
        Matrix4f matrix4f2 = new Matrix4f();
        matrix4f2.m00 = this.m00 + matrix4f.m00;
        matrix4f2.m01 = this.m01 + matrix4f.m01;
        matrix4f2.m02 = this.m02 + matrix4f.m02;
        matrix4f2.m03 = this.m03 + matrix4f.m03;
        matrix4f2.m10 = this.m10 + matrix4f.m10;
        matrix4f2.m11 = this.m11 + matrix4f.m11;
        matrix4f2.m12 = this.m12 + matrix4f.m12;
        matrix4f2.m13 = this.m13 + matrix4f.m13;
        matrix4f2.m20 = this.m20 + matrix4f.m20;
        matrix4f2.m21 = this.m21 + matrix4f.m21;
        matrix4f2.m22 = this.m22 + matrix4f.m22;
        matrix4f2.m23 = this.m23 + matrix4f.m23;
        matrix4f2.m30 = this.m30 + matrix4f.m30;
        matrix4f2.m31 = this.m31 + matrix4f.m31;
        matrix4f2.m32 = this.m32 + matrix4f.m32;
        matrix4f2.m33 = this.m33 + matrix4f.m33;
        return matrix4f2;
    }

    public void addLocal(Matrix4f matrix4f) {
        this.m00 += matrix4f.m00;
        this.m01 += matrix4f.m01;
        this.m02 += matrix4f.m02;
        this.m03 += matrix4f.m03;
        this.m10 += matrix4f.m10;
        this.m11 += matrix4f.m11;
        this.m12 += matrix4f.m12;
        this.m13 += matrix4f.m13;
        this.m20 += matrix4f.m20;
        this.m21 += matrix4f.m21;
        this.m22 += matrix4f.m22;
        this.m23 += matrix4f.m23;
        this.m30 += matrix4f.m30;
        this.m31 += matrix4f.m31;
        this.m32 += matrix4f.m32;
        this.m33 += matrix4f.m33;
    }

    public Matrix4f adjoint() {
        return adjoint(null);
    }

    public void angleRotation(Vector3f vector3f) {
        float f10 = vector3f.f81613z * 0.017453292f;
        float sin = FastMath.sin(f10);
        float cos = FastMath.cos(f10);
        float f11 = vector3f.f81612y * 0.017453292f;
        float sin2 = FastMath.sin(f11);
        float cos2 = FastMath.cos(f11);
        float f12 = vector3f.f81611x * 0.017453292f;
        float sin3 = FastMath.sin(f12);
        float cos3 = FastMath.cos(f12);
        this.m00 = cos2 * cos;
        this.m10 = cos2 * sin;
        this.m20 = -sin2;
        float f13 = sin3 * sin2;
        float f14 = -sin;
        this.m01 = (f13 * cos) + (cos3 * f14);
        this.m11 = (f13 * sin) + (cos3 * cos);
        this.m21 = sin3 * cos2;
        float f15 = sin2 * cos3;
        float f16 = -sin3;
        this.m02 = (f15 * cos) + (f14 * f16);
        this.m12 = (f15 * sin) + (f16 * cos);
        this.m22 = cos3 * cos2;
        this.m03 = 0.0f;
        this.m13 = 0.0f;
        this.m23 = 0.0f;
    }

    public void copy(Matrix4f matrix4f) {
        if (matrix4f == null) {
            loadIdentity();
            return;
        }
        this.m00 = matrix4f.m00;
        this.m01 = matrix4f.m01;
        this.m02 = matrix4f.m02;
        this.m03 = matrix4f.m03;
        this.m10 = matrix4f.m10;
        this.m11 = matrix4f.m11;
        this.m12 = matrix4f.m12;
        this.m13 = matrix4f.m13;
        this.m20 = matrix4f.m20;
        this.m21 = matrix4f.m21;
        this.m22 = matrix4f.m22;
        this.m23 = matrix4f.m23;
        this.m30 = matrix4f.m30;
        this.m31 = matrix4f.m31;
        this.m32 = matrix4f.m32;
        this.m33 = matrix4f.m33;
    }

    public float determinant() {
        float f10 = this.m00;
        float f11 = this.m11;
        float f12 = this.m01;
        float f13 = this.m10;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = this.m12;
        float f16 = this.m02;
        float f17 = (f10 * f15) - (f16 * f13);
        float f18 = this.m13;
        float f19 = this.m03;
        float f20 = (f10 * f18) - (f13 * f19);
        float f21 = (f12 * f15) - (f16 * f11);
        float f22 = (f12 * f18) - (f11 * f19);
        float f23 = (f16 * f18) - (f19 * f15);
        float f24 = this.m20;
        float f25 = this.m31;
        float f26 = this.m21;
        float f27 = this.m30;
        float f28 = (f24 * f25) - (f26 * f27);
        float f29 = this.m32;
        float f30 = this.m22;
        float f31 = (f24 * f29) - (f30 * f27);
        float f32 = this.m33;
        float f33 = this.m23;
        float f34 = (f24 * f32) - (f27 * f33);
        float f35 = (f26 * f29) - (f30 * f25);
        return (((((f14 * ((f30 * f32) - (f33 * f29))) - (f17 * ((f26 * f32) - (f25 * f33)))) + (f20 * f35)) + (f21 * f34)) - (f22 * f31)) + (f23 * f28);
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != Matrix4f.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Matrix4f matrix4f = (Matrix4f) obj;
        return Float.compare(this.m00, matrix4f.m00) == 0 && Float.compare(this.m01, matrix4f.m01) == 0 && Float.compare(this.m02, matrix4f.m02) == 0 && Float.compare(this.m03, matrix4f.m03) == 0 && Float.compare(this.m10, matrix4f.m10) == 0 && Float.compare(this.m11, matrix4f.m11) == 0 && Float.compare(this.m12, matrix4f.m12) == 0 && Float.compare(this.m13, matrix4f.m13) == 0 && Float.compare(this.m20, matrix4f.m20) == 0 && Float.compare(this.m21, matrix4f.m21) == 0 && Float.compare(this.m22, matrix4f.m22) == 0 && Float.compare(this.m23, matrix4f.m23) == 0 && Float.compare(this.m30, matrix4f.m30) == 0 && Float.compare(this.m31, matrix4f.m31) == 0 && Float.compare(this.m32, matrix4f.m32) == 0 && Float.compare(this.m33, matrix4f.m33) == 0;
    }

    public void fillFloatArray(float[] fArr, boolean z10) {
        if (z10) {
            fArr[0] = this.m00;
            fArr[1] = this.m10;
            fArr[2] = this.m20;
            fArr[3] = this.m30;
            fArr[4] = this.m01;
            fArr[5] = this.m11;
            fArr[6] = this.m21;
            fArr[7] = this.m31;
            fArr[8] = this.m02;
            fArr[9] = this.m12;
            fArr[10] = this.m22;
            fArr[11] = this.m32;
            fArr[12] = this.m03;
            fArr[13] = this.m13;
            fArr[14] = this.m23;
            fArr[15] = this.m33;
            return;
        }
        fArr[0] = this.m00;
        fArr[1] = this.m01;
        fArr[2] = this.m02;
        fArr[3] = this.m03;
        fArr[4] = this.m10;
        fArr[5] = this.m11;
        fArr[6] = this.m12;
        fArr[7] = this.m13;
        fArr[8] = this.m20;
        fArr[9] = this.m21;
        fArr[10] = this.m22;
        fArr[11] = this.m23;
        fArr[12] = this.m30;
        fArr[13] = this.m31;
        fArr[14] = this.m32;
        fArr[15] = this.m33;
    }

    public FloatBuffer fillFloatBuffer(FloatBuffer floatBuffer) {
        return fillFloatBuffer(floatBuffer, false);
    }

    public void fromAngleAxis(float f10, Vector3f vector3f) {
        fromAngleNormalAxis(f10, vector3f.normalize());
    }

    public void fromAngleNormalAxis(float f10, Vector3f vector3f) {
        zero();
        this.m33 = 1.0f;
        float cos = FastMath.cos(f10);
        float sin = FastMath.sin(f10);
        float f11 = 1.0f - cos;
        float f12 = vector3f.f81611x;
        float f13 = f12 * f12;
        float f14 = vector3f.f81612y;
        float f15 = f14 * f14;
        float f16 = vector3f.f81613z;
        float f17 = f16 * f16;
        float f18 = f12 * f14 * f11;
        float f19 = f12 * f16 * f11;
        float f20 = f14 * f16 * f11;
        float f21 = f12 * sin;
        float f22 = f14 * sin;
        float f23 = f16 * sin;
        this.m00 = (f13 * f11) + cos;
        this.m01 = f18 - f23;
        this.m02 = f19 + f22;
        this.m10 = f18 + f23;
        this.m11 = (f15 * f11) + cos;
        this.m12 = f20 - f21;
        this.m20 = f19 - f22;
        this.m21 = f20 + f21;
        this.m22 = (f17 * f11) + cos;
    }

    public void fromFrame(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        TempVars tempVars = TempVars.get();
        try {
            Vector3f vector3f5 = tempVars.vect1.set(vector3f2);
            Vector3f crossLocal = tempVars.vect2.set(vector3f5).crossLocal(vector3f3);
            Vector3f crossLocal2 = tempVars.vect3.set(crossLocal).crossLocal(vector3f5);
            this.m00 = crossLocal.f81611x;
            this.m01 = crossLocal.f81612y;
            this.m02 = crossLocal.f81613z;
            this.m03 = -crossLocal.dot(vector3f);
            this.m10 = crossLocal2.f81611x;
            this.m11 = crossLocal2.f81612y;
            this.m12 = crossLocal2.f81613z;
            this.m13 = -crossLocal2.dot(vector3f);
            this.m20 = -vector3f5.f81611x;
            this.m21 = -vector3f5.f81612y;
            this.m22 = -vector3f5.f81613z;
            this.m23 = vector3f5.dot(vector3f);
            this.m30 = 0.0f;
            this.m31 = 0.0f;
            this.m32 = 0.0f;
            this.m33 = 1.0f;
        } finally {
            tempVars.release();
        }
    }

    public void fromFrustum(float f10, float f11, float f12, float f13, float f14, float f15, boolean z10) {
        loadIdentity();
        if (z10) {
            float f16 = f13 - f12;
            this.m00 = 2.0f / f16;
            float f17 = f14 - f15;
            this.m11 = 2.0f / f17;
            float f18 = f11 - f10;
            this.m22 = (-2.0f) / f18;
            this.m33 = 1.0f;
            this.m03 = (-(f13 + f12)) / f16;
            this.m13 = (-(f14 + f15)) / f17;
            this.m23 = (-(f11 + f10)) / f18;
            return;
        }
        float f19 = f10 * 2.0f;
        float f20 = f13 - f12;
        this.m00 = f19 / f20;
        float f21 = f14 - f15;
        this.m11 = f19 / f21;
        this.m32 = -1.0f;
        this.m33 = -0.0f;
        this.m02 = (f13 + f12) / f20;
        this.m12 = (f14 + f15) / f21;
        float f22 = f11 - f10;
        this.m22 = (-(f11 + f10)) / f22;
        this.m23 = (-((f11 * 2.0f) * f10)) / f22;
    }

    public void get(float[] fArr) {
        get(fArr, true);
    }

    public float[] getColumn(int i10) {
        return getColumn(i10, null);
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((1369 + Float.floatToIntBits(this.m00)) * 37) + Float.floatToIntBits(this.m01)) * 37) + Float.floatToIntBits(this.m02)) * 37) + Float.floatToIntBits(this.m03)) * 37) + Float.floatToIntBits(this.m10)) * 37) + Float.floatToIntBits(this.m11)) * 37) + Float.floatToIntBits(this.m12)) * 37) + Float.floatToIntBits(this.m13)) * 37) + Float.floatToIntBits(this.m20)) * 37) + Float.floatToIntBits(this.m21)) * 37) + Float.floatToIntBits(this.m22)) * 37) + Float.floatToIntBits(this.m23)) * 37) + Float.floatToIntBits(this.m30)) * 37) + Float.floatToIntBits(this.m31)) * 37) + Float.floatToIntBits(this.m32)) * 37) + Float.floatToIntBits(this.m33);
    }

    public void inverseRotateVect(Vector3f vector3f) {
        float f10 = vector3f.f81611x;
        float f11 = vector3f.f81612y;
        float f12 = vector3f.f81613z;
        vector3f.f81611x = (this.m00 * f10) + (this.m10 * f11) + (this.m20 * f12);
        vector3f.f81612y = (this.m01 * f10) + (this.m11 * f11) + (this.m21 * f12);
        vector3f.f81613z = (f10 * this.m02) + (f11 * this.m12) + (f12 * this.m22);
    }

    public void inverseTranslateVect(float[] fArr) {
        if (fArr.length == 3) {
            fArr[0] = fArr[0] - this.m03;
            fArr[1] = fArr[1] - this.m13;
            fArr[2] = fArr[2] - this.m23;
            return;
        }
        throw new IllegalArgumentException("vec must be of size 3.");
    }

    public Matrix4f invert() {
        return invert(null);
    }

    public Matrix4f invertLocal() {
        float f10 = this.m00;
        float f11 = this.m11;
        float f12 = this.m01;
        float f13 = this.m10;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = this.m12;
        float f16 = this.m02;
        float f17 = (f10 * f15) - (f16 * f13);
        float f18 = this.m13;
        float f19 = this.m03;
        float f20 = (f10 * f18) - (f13 * f19);
        float f21 = (f12 * f15) - (f16 * f11);
        float f22 = (f12 * f18) - (f11 * f19);
        float f23 = (f16 * f18) - (f19 * f15);
        float f24 = this.m20;
        float f25 = this.m31;
        float f26 = this.m21;
        float f27 = this.m30;
        float f28 = (f24 * f25) - (f26 * f27);
        float f29 = this.m32;
        float f30 = this.m22;
        float f31 = (f24 * f29) - (f30 * f27);
        float f32 = this.m33;
        float f33 = this.m23;
        float f34 = (f24 * f32) - (f27 * f33);
        float f35 = (f26 * f29) - (f30 * f25);
        float f36 = (f26 * f32) - (f25 * f33);
        float f37 = (f30 * f32) - (f33 * f29);
        float f38 = (((((f14 * f37) - (f17 * f36)) + (f20 * f35)) + (f21 * f34)) - (f22 * f31)) + (f23 * f28);
        if (FastMath.abs(f38) <= 0.0f) {
            return zero();
        }
        float f39 = this.m11;
        float f40 = this.m12;
        float f41 = this.m13;
        float f42 = ((f39 * f37) - (f40 * f36)) + (f41 * f35);
        float f43 = this.m10;
        float f44 = (((-f43) * f37) + (f40 * f34)) - (f41 * f31);
        float f45 = ((f43 * f36) - (f39 * f34)) + (f41 * f28);
        float f46 = (((-f43) * f35) + (f39 * f31)) - (f40 * f28);
        float f47 = this.m01;
        float f48 = this.m02;
        float f49 = this.m03;
        float f50 = (((-f47) * f37) + (f48 * f36)) - (f49 * f35);
        float f51 = this.m00;
        float f52 = ((f37 * f51) - (f48 * f34)) + (f49 * f31);
        float f53 = (((-f51) * f36) + (f34 * f47)) - (f49 * f28);
        float f54 = ((f51 * f35) - (f47 * f31)) + (f48 * f28);
        float f55 = this.m31;
        float f56 = this.m32;
        float f57 = this.m33;
        float f58 = ((f55 * f23) - (f56 * f22)) + (f57 * f21);
        float f59 = this.m30;
        float f60 = (((-f59) * f23) + (f56 * f20)) - (f57 * f17);
        float f61 = ((f59 * f22) - (f55 * f20)) + (f57 * f14);
        float f62 = (((-f59) * f21) + (f55 * f17)) - (f56 * f14);
        float f63 = this.m21;
        float f64 = this.m22;
        float f65 = this.m23;
        float f66 = this.m20;
        this.m00 = f42;
        this.m01 = f50;
        this.m02 = f58;
        this.m03 = (((-f63) * f23) + (f64 * f22)) - (f65 * f21);
        this.m10 = f44;
        this.m11 = f52;
        this.m12 = f60;
        this.m13 = ((f23 * f66) - (f64 * f20)) + (f65 * f17);
        this.m20 = f45;
        this.m21 = f53;
        this.m22 = f61;
        this.m23 = (((-f66) * f22) + (f20 * f63)) - (f65 * f14);
        this.m30 = f46;
        this.m31 = f54;
        this.m32 = f62;
        this.m33 = ((f66 * f21) - (f63 * f17)) + (f64 * f14);
        multLocal(1.0f / f38);
        return this;
    }

    public boolean isIdentity() {
        return this.m00 == 1.0f && this.m01 == 0.0f && this.m02 == 0.0f && this.m03 == 0.0f && this.m10 == 0.0f && this.m11 == 1.0f && this.m12 == 0.0f && this.m13 == 0.0f && this.m20 == 0.0f && this.m21 == 0.0f && this.m22 == 1.0f && this.m23 == 0.0f && this.m30 == 0.0f && this.m31 == 0.0f && this.m32 == 0.0f && this.m33 == 1.0f;
    }

    public boolean isSimilar(Matrix4f matrix4f, float f10) {
        return matrix4f != null && Float.compare(Math.abs(matrix4f.m00 - this.m00), f10) <= 0 && Float.compare(Math.abs(matrix4f.m01 - this.m01), f10) <= 0 && Float.compare(Math.abs(matrix4f.m02 - this.m02), f10) <= 0 && Float.compare(Math.abs(matrix4f.m03 - this.m03), f10) <= 0 && Float.compare(Math.abs(matrix4f.m10 - this.m10), f10) <= 0 && Float.compare(Math.abs(matrix4f.m11 - this.m11), f10) <= 0 && Float.compare(Math.abs(matrix4f.m12 - this.m12), f10) <= 0 && Float.compare(Math.abs(matrix4f.m13 - this.m13), f10) <= 0 && Float.compare(Math.abs(matrix4f.m20 - this.m20), f10) <= 0 && Float.compare(Math.abs(matrix4f.m21 - this.m21), f10) <= 0 && Float.compare(Math.abs(matrix4f.m22 - this.m22), f10) <= 0 && Float.compare(Math.abs(matrix4f.m23 - this.m23), f10) <= 0 && Float.compare(Math.abs(matrix4f.m30 - this.m30), f10) <= 0 && Float.compare(Math.abs(matrix4f.m31 - this.m31), f10) <= 0 && Float.compare(Math.abs(matrix4f.m32 - this.m32), f10) <= 0 && Float.compare(Math.abs(matrix4f.m33 - this.m33), f10) <= 0;
    }

    public void loadIdentity() {
        this.m03 = 0.0f;
        this.m02 = 0.0f;
        this.m01 = 0.0f;
        this.m13 = 0.0f;
        this.m12 = 0.0f;
        this.m10 = 0.0f;
        this.m23 = 0.0f;
        this.m21 = 0.0f;
        this.m20 = 0.0f;
        this.m32 = 0.0f;
        this.m31 = 0.0f;
        this.m30 = 0.0f;
        this.m33 = 1.0f;
        this.m22 = 1.0f;
        this.m11 = 1.0f;
        this.m00 = 1.0f;
    }

    public Matrix4f mult(float f10) {
        Matrix4f matrix4f = new Matrix4f();
        matrix4f.set(this);
        matrix4f.multLocal(f10);
        return matrix4f;
    }

    public Vector4f multAcross(Vector4f vector4f) {
        return multAcross(vector4f, (Vector4f) null);
    }

    public void multLocal(float f10) {
        this.m00 *= f10;
        this.m01 *= f10;
        this.m02 *= f10;
        this.m03 *= f10;
        this.m10 *= f10;
        this.m11 *= f10;
        this.m12 *= f10;
        this.m13 *= f10;
        this.m20 *= f10;
        this.m21 *= f10;
        this.m22 *= f10;
        this.m23 *= f10;
        this.m30 *= f10;
        this.m31 *= f10;
        this.m32 *= f10;
        this.m33 *= f10;
    }

    public Vector3f multNormal(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        float f10 = vector3f.f81611x;
        float f11 = vector3f.f81612y;
        float f12 = vector3f.f81613z;
        vector3f2.f81611x = (this.m00 * f10) + (this.m01 * f11) + (this.m02 * f12);
        vector3f2.f81612y = (this.m10 * f10) + (this.m11 * f11) + (this.m12 * f12);
        vector3f2.f81613z = (this.m20 * f10) + (this.m21 * f11) + (this.m22 * f12);
        return vector3f2;
    }

    public Vector3f multNormalAcross(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        float f10 = vector3f.f81611x;
        float f11 = vector3f.f81612y;
        float f12 = vector3f.f81613z;
        vector3f2.f81611x = (this.m00 * f10) + (this.m10 * f11) + (this.m20 * f12);
        vector3f2.f81612y = (this.m01 * f10) + (this.m11 * f11) + (this.m21 * f12);
        vector3f2.f81613z = (this.m02 * f10) + (this.m12 * f11) + (this.m22 * f12);
        return vector3f2;
    }

    public float multProj(Vector3f vector3f, Vector3f vector3f2) {
        float f10 = vector3f.f81611x;
        float f11 = vector3f.f81612y;
        float f12 = vector3f.f81613z;
        vector3f2.f81611x = (this.m00 * f10) + (this.m01 * f11) + (this.m02 * f12) + this.m03;
        vector3f2.f81612y = (this.m10 * f10) + (this.m11 * f11) + (this.m12 * f12) + this.m13;
        vector3f2.f81613z = (this.m20 * f10) + (this.m21 * f11) + (this.m22 * f12) + this.m23;
        return (this.m30 * f10) + (this.m31 * f11) + (this.m32 * f12) + this.m33;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.m00 = capsule.readFloat("m00", 1.0f);
        this.m01 = capsule.readFloat("m01", 0.0f);
        this.m02 = capsule.readFloat("m02", 0.0f);
        this.m03 = capsule.readFloat("m03", 0.0f);
        this.m10 = capsule.readFloat("m10", 0.0f);
        this.m11 = capsule.readFloat("m11", 1.0f);
        this.m12 = capsule.readFloat("m12", 0.0f);
        this.m13 = capsule.readFloat("m13", 0.0f);
        this.m20 = capsule.readFloat("m20", 0.0f);
        this.m21 = capsule.readFloat("m21", 0.0f);
        this.m22 = capsule.readFloat("m22", 1.0f);
        this.m23 = capsule.readFloat("m23", 0.0f);
        this.m30 = capsule.readFloat("m30", 0.0f);
        this.m31 = capsule.readFloat("m31", 0.0f);
        this.m32 = capsule.readFloat("m32", 0.0f);
        this.m33 = capsule.readFloat("m33", 1.0f);
    }

    public Matrix4f readFloatBuffer(FloatBuffer floatBuffer) {
        return readFloatBuffer(floatBuffer, false);
    }

    public void rotateVect(Vector3f vector3f) {
        float f10 = vector3f.f81611x;
        float f11 = vector3f.f81612y;
        float f12 = vector3f.f81613z;
        vector3f.f81611x = (this.m00 * f10) + (this.m01 * f11) + (this.m02 * f12);
        vector3f.f81612y = (this.m10 * f10) + (this.m11 * f11) + (this.m12 * f12);
        vector3f.f81613z = (f10 * this.m20) + (f11 * this.m21) + (f12 * this.m22);
    }

    public void scale(Vector3f vector3f) {
        this.m00 *= vector3f.getX();
        this.m10 *= vector3f.getX();
        this.m20 *= vector3f.getX();
        this.m30 *= vector3f.getX();
        this.m01 *= vector3f.getY();
        this.m11 *= vector3f.getY();
        this.m21 *= vector3f.getY();
        this.m31 *= vector3f.getY();
        this.m02 *= vector3f.getZ();
        this.m12 *= vector3f.getZ();
        this.m22 *= vector3f.getZ();
        this.m32 *= vector3f.getZ();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0009, code lost:
    
        if (r4 == 3) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void set(int i10, int i11, float f10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                }
                if (i11 != 0) {
                    this.m20 = f10;
                    return;
                }
                if (i11 == 1) {
                    this.m21 = f10;
                    return;
                }
                if (i11 == 2) {
                    this.m22 = f10;
                    return;
                }
                if (i11 == 3) {
                    this.m23 = f10;
                    return;
                }
                if (i11 == 0) {
                    this.m30 = f10;
                    return;
                }
                if (i11 == 1) {
                    this.m31 = f10;
                    return;
                }
                if (i11 != 2) {
                    if (i11 == 3) {
                        this.m33 = f10;
                        return;
                    }
                    logger.warning("Invalid matrix index.");
                    throw new IllegalArgumentException("Invalid indices into matrix.");
                }
                this.m32 = f10;
                return;
            }
        } else {
            if (i11 == 0) {
                this.m00 = f10;
                return;
            }
            if (i11 == 1) {
                this.m01 = f10;
                return;
            } else if (i11 == 2) {
                this.m02 = f10;
                return;
            } else if (i11 == 3) {
                this.m03 = f10;
                return;
            }
        }
        if (i11 == 0) {
            this.m10 = f10;
            return;
        }
        if (i11 == 1) {
            this.m11 = f10;
        } else {
            if (i11 == 2) {
                this.m12 = f10;
                return;
            }
            if (i11 == 3) {
                this.m13 = f10;
                return;
            }
            if (i11 != 0) {
            }
        }
    }

    public void setColumn(int i10, float[] fArr) {
        if (fArr == null) {
            logger.warning("Column is null. Ignoring.");
            return;
        }
        if (i10 == 0) {
            this.m00 = fArr[0];
            this.m10 = fArr[1];
            this.m20 = fArr[2];
            this.m30 = fArr[3];
            return;
        }
        if (i10 == 1) {
            this.m01 = fArr[0];
            this.m11 = fArr[1];
            this.m21 = fArr[2];
            this.m31 = fArr[3];
            return;
        }
        if (i10 == 2) {
            this.m02 = fArr[0];
            this.m12 = fArr[1];
            this.m22 = fArr[2];
            this.m32 = fArr[3];
            return;
        }
        if (i10 == 3) {
            this.m03 = fArr[0];
            this.m13 = fArr[1];
            this.m23 = fArr[2];
            this.m33 = fArr[3];
            return;
        }
        logger.warning("Invalid column index.");
        throw new IllegalArgumentException("Invalid column index. " + i10);
    }

    public void setInverseRotationDegrees(float[] fArr) {
        if (fArr.length != 3) {
            throw new IllegalArgumentException("Angles must be of size 3.");
        }
        setInverseRotationRadians(new float[]{fArr[0] * 57.295776f, fArr[1] * 57.295776f, fArr[2] * 57.295776f});
    }

    public void setInverseRotationRadians(float[] fArr) {
        if (fArr.length != 3) {
            throw new IllegalArgumentException("Angles must be of size 3.");
        }
        double cos = FastMath.cos(fArr[0]);
        double sin = FastMath.sin(fArr[0]);
        double cos2 = FastMath.cos(fArr[1]);
        double sin2 = FastMath.sin(fArr[1]);
        double cos3 = FastMath.cos(fArr[2]);
        double sin3 = FastMath.sin(fArr[2]);
        this.m00 = (float) (cos2 * cos3);
        this.m10 = (float) (cos2 * sin3);
        this.m20 = (float) (-sin2);
        double d10 = sin * sin2;
        double d11 = sin2 * cos;
        this.m01 = (float) ((d10 * cos3) - (cos * sin3));
        this.m11 = (float) ((d10 * sin3) + (cos * cos3));
        this.m21 = (float) (sin * cos2);
        this.m02 = (float) ((d11 * cos3) + (sin * sin3));
        this.m12 = (float) ((d11 * sin3) - (sin * cos3));
        this.m22 = (float) (cos * cos2);
    }

    public void setInverseTranslation(float[] fArr) {
        if (fArr.length != 3) {
            throw new IllegalArgumentException("Translation size must be 3.");
        }
        this.m03 = -fArr[0];
        this.m13 = -fArr[1];
        this.m23 = -fArr[2];
    }

    public void setRotationQuaternion(Quaternion quaternion) {
        quaternion.toRotationMatrix(this);
    }

    public void setScale(float f10, float f11, float f12) {
        float f13 = this.m00;
        float f14 = this.m10;
        float f15 = (f13 * f13) + (f14 * f14);
        float f16 = this.m20;
        float f17 = f15 + (f16 * f16);
        if (f17 != 0.0f) {
            if (f17 != 1.0f) {
                f10 /= FastMath.sqrt(f17);
            }
            this.m00 *= f10;
            this.m10 *= f10;
            this.m20 *= f10;
        }
        float f18 = this.m01;
        float f19 = this.m11;
        float f20 = (f18 * f18) + (f19 * f19);
        float f21 = this.m21;
        float f22 = f20 + (f21 * f21);
        if (f22 != 0.0f) {
            if (f22 != 1.0f) {
                f11 /= FastMath.sqrt(f22);
            }
            this.m01 *= f11;
            this.m11 *= f11;
            this.m21 *= f11;
        }
        float f23 = this.m02;
        float f24 = this.m12;
        float f25 = (f23 * f23) + (f24 * f24);
        float f26 = this.m22;
        float f27 = f25 + (f26 * f26);
        if (f27 != 0.0f) {
            if (f27 != 1.0f) {
                f12 /= FastMath.sqrt(f27);
            }
            this.m02 *= f12;
            this.m12 *= f12;
            this.m22 *= f12;
        }
    }

    public void setTransform(Vector3f vector3f, Vector3f vector3f2, Matrix3f matrix3f) {
        float f10 = vector3f2.f81611x;
        this.m00 = matrix3f.m00 * f10;
        float f11 = vector3f2.f81612y;
        this.m01 = matrix3f.m01 * f11;
        float f12 = vector3f2.f81613z;
        this.m02 = matrix3f.m02 * f12;
        this.m03 = vector3f.f81611x;
        this.m10 = matrix3f.m10 * f10;
        this.m11 = matrix3f.m11 * f11;
        this.m12 = matrix3f.m12 * f12;
        this.m13 = vector3f.f81612y;
        this.m20 = f10 * matrix3f.m20;
        this.m21 = f11 * matrix3f.m21;
        this.m22 = f12 * matrix3f.m22;
        this.m23 = vector3f.f81613z;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public void setTranslation(float[] fArr) {
        if (fArr.length == 3) {
            this.m03 = fArr[0];
            this.m13 = fArr[1];
            this.m23 = fArr[2];
            return;
        }
        throw new IllegalArgumentException("Translation size must be 3.");
    }

    public FloatBuffer toFloatBuffer() {
        return toFloatBuffer(false);
    }

    public Matrix3f toRotationMatrix() {
        return new Matrix3f(this.m00, this.m01, this.m02, this.m10, this.m11, this.m12, this.m20, this.m21, this.m22);
    }

    public Quaternion toRotationQuat() {
        Quaternion quaternion = new Quaternion();
        quaternion.fromRotationMatrix(toRotationMatrix());
        return quaternion;
    }

    public Vector3f toScaleVector() {
        Vector3f vector3f = new Vector3f();
        toScaleVector(vector3f);
        return vector3f;
    }

    public String toString() {
        return "Matrix4f\n[\n " + this.m00 + GlideException.a.f59088e + this.m01 + GlideException.a.f59088e + this.m02 + GlideException.a.f59088e + this.m03 + " \n " + this.m10 + GlideException.a.f59088e + this.m11 + GlideException.a.f59088e + this.m12 + GlideException.a.f59088e + this.m13 + " \n " + this.m20 + GlideException.a.f59088e + this.m21 + GlideException.a.f59088e + this.m22 + GlideException.a.f59088e + this.m23 + " \n " + this.m30 + GlideException.a.f59088e + this.m31 + GlideException.a.f59088e + this.m32 + GlideException.a.f59088e + this.m33 + " \n]";
    }

    public Vector3f toTranslationVector() {
        return new Vector3f(this.m03, this.m13, this.m23);
    }

    public void translateVect(Vector3f vector3f) {
        vector3f.f81611x += this.m03;
        vector3f.f81612y += this.m13;
        vector3f.f81613z += this.m23;
    }

    public Matrix4f transpose() {
        float[] fArr = new float[16];
        get(fArr, true);
        return new Matrix4f(fArr);
    }

    public Matrix4f transposeLocal() {
        float f10 = this.m01;
        this.m01 = this.m10;
        this.m10 = f10;
        float f11 = this.m02;
        this.m02 = this.m20;
        this.m20 = f11;
        float f12 = this.m03;
        this.m03 = this.m30;
        this.m30 = f12;
        float f13 = this.m12;
        this.m12 = this.m21;
        this.m21 = f13;
        float f14 = this.m13;
        this.m13 = this.m31;
        this.m31 = f14;
        float f15 = this.m23;
        this.m23 = this.m32;
        this.m32 = f15;
        return this;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.m00, "m00", 1.0f);
        capsule.write(this.m01, "m01", 0.0f);
        capsule.write(this.m02, "m02", 0.0f);
        capsule.write(this.m03, "m03", 0.0f);
        capsule.write(this.m10, "m10", 0.0f);
        capsule.write(this.m11, "m11", 1.0f);
        capsule.write(this.m12, "m12", 0.0f);
        capsule.write(this.m13, "m13", 0.0f);
        capsule.write(this.m20, "m20", 0.0f);
        capsule.write(this.m21, "m21", 0.0f);
        capsule.write(this.m22, "m22", 1.0f);
        capsule.write(this.m23, "m23", 0.0f);
        capsule.write(this.m30, "m30", 0.0f);
        capsule.write(this.m31, "m31", 0.0f);
        capsule.write(this.m32, "m32", 0.0f);
        capsule.write(this.m33, "m33", 1.0f);
    }

    public Matrix4f zero() {
        this.m03 = 0.0f;
        this.m02 = 0.0f;
        this.m01 = 0.0f;
        this.m00 = 0.0f;
        this.m13 = 0.0f;
        this.m12 = 0.0f;
        this.m11 = 0.0f;
        this.m10 = 0.0f;
        this.m23 = 0.0f;
        this.m22 = 0.0f;
        this.m21 = 0.0f;
        this.m20 = 0.0f;
        this.m33 = 0.0f;
        this.m32 = 0.0f;
        this.m31 = 0.0f;
        this.m30 = 0.0f;
        return this;
    }

    public Matrix4f adjoint(Matrix4f matrix4f) {
        Matrix4f matrix4f2 = matrix4f == null ? new Matrix4f() : matrix4f;
        float f10 = this.m00;
        float f11 = this.m11;
        float f12 = this.m01;
        float f13 = this.m10;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = this.m12;
        float f16 = this.m02;
        float f17 = (f10 * f15) - (f16 * f13);
        float f18 = this.m13;
        float f19 = this.m03;
        float f20 = (f10 * f18) - (f19 * f13);
        float f21 = (f12 * f15) - (f16 * f11);
        float f22 = (f12 * f18) - (f19 * f11);
        float f23 = (f16 * f18) - (f19 * f15);
        float f24 = this.m20;
        float f25 = this.m31;
        float f26 = this.m21;
        float f27 = this.m30;
        float f28 = (f24 * f25) - (f26 * f27);
        float f29 = this.m32;
        float f30 = this.m22;
        float f31 = (f24 * f29) - (f30 * f27);
        float f32 = this.m33;
        float f33 = this.m23;
        float f34 = (f24 * f32) - (f27 * f33);
        float f35 = (f26 * f29) - (f30 * f25);
        float f36 = (f26 * f32) - (f25 * f33);
        float f37 = (f30 * f32) - (f33 * f29);
        matrix4f2.m00 = ((f11 * f37) - (f15 * f36)) + (f18 * f35);
        matrix4f2.m10 = (((-f13) * f37) + (f15 * f34)) - (f18 * f31);
        float f38 = this.m10;
        matrix4f2.m20 = ((f38 * f36) - (f11 * f34)) + (f18 * f28);
        matrix4f2.m30 = (((-f38) * f35) + (f11 * f31)) - (f15 * f28);
        matrix4f2.m01 = (((-f12) * f37) + (f16 * f36)) - (f19 * f35);
        float f39 = this.m00;
        matrix4f2.m11 = ((f37 * f39) - (f16 * f34)) + (f19 * f31);
        float f40 = this.m01;
        matrix4f2.m21 = (((-f39) * f36) + (f34 * f40)) - (f19 * f28);
        matrix4f2.m31 = ((f39 * f35) - (f40 * f31)) + (f16 * f28);
        float f41 = this.m31;
        matrix4f2.m02 = ((f41 * f23) - (f29 * f22)) + (f32 * f21);
        float f42 = this.m30;
        matrix4f2.m12 = (((-f42) * f23) + (f29 * f20)) - (f32 * f17);
        matrix4f2.m22 = ((f42 * f22) - (f41 * f20)) + (f32 * f14);
        matrix4f2.m32 = (((-f42) * f21) + (f41 * f17)) - (f29 * f14);
        float f43 = this.m21;
        float f44 = this.m22;
        matrix4f2.m03 = (((-f43) * f23) + (f44 * f22)) - (f33 * f21);
        float f45 = this.m20;
        matrix4f2.m13 = ((f45 * f23) - (f44 * f20)) + (f33 * f17);
        matrix4f2.m23 = (((-f45) * f22) + (f43 * f20)) - (f33 * f14);
        matrix4f2.m33 = ((f45 * f21) - (f43 * f17)) + (f44 * f14);
        return matrix4f2;
    }

    public Matrix4f m1283clone() {
        try {
            return (Matrix4f) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public FloatBuffer fillFloatBuffer(FloatBuffer floatBuffer, boolean z10) {
        TempVars tempVars = TempVars.get();
        fillFloatArray(tempVars.matrixWrite, z10);
        floatBuffer.put(tempVars.matrixWrite, 0, 16);
        tempVars.release();
        return floatBuffer;
    }

    public void get(float[] fArr, boolean z10) {
        if (fArr.length != 16) {
            throw new IllegalArgumentException("Array must be of size 16.");
        }
        if (z10) {
            fArr[0] = this.m00;
            fArr[1] = this.m01;
            fArr[2] = this.m02;
            fArr[3] = this.m03;
            fArr[4] = this.m10;
            fArr[5] = this.m11;
            fArr[6] = this.m12;
            fArr[7] = this.m13;
            fArr[8] = this.m20;
            fArr[9] = this.m21;
            fArr[10] = this.m22;
            fArr[11] = this.m23;
            fArr[12] = this.m30;
            fArr[13] = this.m31;
            fArr[14] = this.m32;
            fArr[15] = this.m33;
            return;
        }
        fArr[0] = this.m00;
        fArr[4] = this.m01;
        fArr[8] = this.m02;
        fArr[12] = this.m03;
        fArr[1] = this.m10;
        fArr[5] = this.m11;
        fArr[9] = this.m12;
        fArr[13] = this.m13;
        fArr[2] = this.m20;
        fArr[6] = this.m21;
        fArr[10] = this.m22;
        fArr[14] = this.m23;
        fArr[3] = this.m30;
        fArr[7] = this.m31;
        fArr[11] = this.m32;
        fArr[15] = this.m33;
    }

    public float[] getColumn(int i10, float[] fArr) {
        if (fArr == null) {
            fArr = new float[4];
        }
        if (i10 == 0) {
            fArr[0] = this.m00;
            fArr[1] = this.m10;
            fArr[2] = this.m20;
            fArr[3] = this.m30;
        } else if (i10 == 1) {
            fArr[0] = this.m01;
            fArr[1] = this.m11;
            fArr[2] = this.m21;
            fArr[3] = this.m31;
        } else if (i10 == 2) {
            fArr[0] = this.m02;
            fArr[1] = this.m12;
            fArr[2] = this.m22;
            fArr[3] = this.m32;
        } else if (i10 == 3) {
            fArr[0] = this.m03;
            fArr[1] = this.m13;
            fArr[2] = this.m23;
            fArr[3] = this.m33;
        } else {
            logger.warning("Invalid column index.");
            throw new IllegalArgumentException("Invalid column index. " + i10);
        }
        return fArr;
    }

    public Matrix4f invert(Matrix4f matrix4f) {
        Matrix4f matrix4f2 = matrix4f == null ? new Matrix4f() : matrix4f;
        float f10 = this.m00;
        float f11 = this.m11;
        float f12 = this.m01;
        float f13 = this.m10;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = this.m12;
        float f16 = this.m02;
        float f17 = (f10 * f15) - (f16 * f13);
        float f18 = this.m13;
        float f19 = this.m03;
        float f20 = (f10 * f18) - (f13 * f19);
        float f21 = (f12 * f15) - (f16 * f11);
        float f22 = (f12 * f18) - (f11 * f19);
        float f23 = (f16 * f18) - (f19 * f15);
        float f24 = this.m20;
        float f25 = this.m31;
        float f26 = this.m21;
        float f27 = this.m30;
        float f28 = (f24 * f25) - (f26 * f27);
        float f29 = this.m32;
        float f30 = this.m22;
        float f31 = (f24 * f29) - (f30 * f27);
        Matrix4f matrix4f3 = matrix4f2;
        float f32 = this.m33;
        float f33 = this.m23;
        float f34 = (f24 * f32) - (f27 * f33);
        float f35 = (f26 * f29) - (f30 * f25);
        float f36 = (f26 * f32) - (f25 * f33);
        float f37 = (f30 * f32) - (f33 * f29);
        float f38 = (((((f14 * f37) - (f17 * f36)) + (f20 * f35)) + (f21 * f34)) - (f22 * f31)) + (f23 * f28);
        if (FastMath.abs(f38) > 0.0f) {
            float f39 = this.m11;
            float f40 = this.m12;
            float f41 = this.m13;
            matrix4f3.m00 = ((f39 * f37) - (f40 * f36)) + (f41 * f35);
            matrix4f3.m10 = (((-this.m10) * f37) + (f40 * f34)) - (f41 * f31);
            float f42 = this.m10;
            matrix4f3.m20 = ((f42 * f36) - (f39 * f34)) + (f41 * f28);
            matrix4f3.m30 = (((-f42) * f35) + (f39 * f31)) - (f40 * f28);
            float f43 = (-this.m01) * f37;
            float f44 = this.m02;
            float f45 = this.m03;
            matrix4f3.m01 = (f43 + (f44 * f36)) - (f45 * f35);
            float f46 = this.m00;
            matrix4f3.m11 = ((f37 * f46) - (f44 * f34)) + (f45 * f31);
            float f47 = (-f46) * f36;
            float f48 = this.m01;
            matrix4f3.m21 = (f47 + (f34 * f48)) - (f45 * f28);
            matrix4f3.m31 = ((f46 * f35) - (f48 * f31)) + (f44 * f28);
            float f49 = this.m31;
            float f50 = this.m32;
            float f51 = this.m33;
            matrix4f3.m02 = ((f49 * f23) - (f50 * f22)) + (f51 * f21);
            float f52 = this.m30;
            matrix4f3.m12 = (((-f52) * f23) + (f50 * f20)) - (f51 * f17);
            matrix4f3.m22 = ((f52 * f22) - (f49 * f20)) + (f51 * f14);
            matrix4f3.m32 = (((-f52) * f21) + (f49 * f17)) - (f50 * f14);
            float f53 = this.m21;
            float f54 = this.m22;
            float f55 = ((-f53) * f23) + (f54 * f22);
            float f56 = this.m23;
            matrix4f3.m03 = f55 - (f56 * f21);
            float f57 = this.m20;
            matrix4f3.m13 = ((f57 * f23) - (f54 * f20)) + (f56 * f17);
            matrix4f3.m23 = (((-f57) * f22) + (f20 * f53)) - (f56 * f14);
            matrix4f3.m33 = ((f57 * f21) - (f53 * f17)) + (f54 * f14);
            matrix4f3.multLocal(1.0f / f38);
            return matrix4f3;
        }
        throw new ArithmeticException("This matrix cannot be inverted");
    }

    public Vector4f multAcross(Vector4f vector4f, Vector4f vector4f2) {
        if (vector4f == null) {
            logger.warning("Source vector is null, null result returned.");
            return null;
        }
        if (vector4f2 == null) {
            vector4f2 = new Vector4f();
        }
        float f10 = vector4f.f81615x;
        float f11 = vector4f.f81616y;
        float f12 = vector4f.f81617z;
        float f13 = vector4f.f81614w;
        vector4f2.f81615x = (this.m00 * f10) + (this.m10 * f11) + (this.m20 * f12) + (this.m30 * f13);
        vector4f2.f81616y = (this.m01 * f10) + (this.m11 * f11) + (this.m21 * f12) + (this.m31 * f13);
        vector4f2.f81617z = (this.m02 * f10) + (this.m12 * f11) + (this.m22 * f12) + (this.m32 * f13);
        vector4f2.f81614w = (this.m03 * f10) + (this.m13 * f11) + (this.m23 * f12) + (this.m33 * f13);
        return vector4f2;
    }

    public Matrix4f readFloatBuffer(FloatBuffer floatBuffer, boolean z10) {
        if (z10) {
            this.m00 = floatBuffer.get();
            this.m10 = floatBuffer.get();
            this.m20 = floatBuffer.get();
            this.m30 = floatBuffer.get();
            this.m01 = floatBuffer.get();
            this.m11 = floatBuffer.get();
            this.m21 = floatBuffer.get();
            this.m31 = floatBuffer.get();
            this.m02 = floatBuffer.get();
            this.m12 = floatBuffer.get();
            this.m22 = floatBuffer.get();
            this.m32 = floatBuffer.get();
            this.m03 = floatBuffer.get();
            this.m13 = floatBuffer.get();
            this.m23 = floatBuffer.get();
            this.m33 = floatBuffer.get();
        } else {
            this.m00 = floatBuffer.get();
            this.m01 = floatBuffer.get();
            this.m02 = floatBuffer.get();
            this.m03 = floatBuffer.get();
            this.m10 = floatBuffer.get();
            this.m11 = floatBuffer.get();
            this.m12 = floatBuffer.get();
            this.m13 = floatBuffer.get();
            this.m20 = floatBuffer.get();
            this.m21 = floatBuffer.get();
            this.m22 = floatBuffer.get();
            this.m23 = floatBuffer.get();
            this.m30 = floatBuffer.get();
            this.m31 = floatBuffer.get();
            this.m32 = floatBuffer.get();
            this.m33 = floatBuffer.get();
        }
        return this;
    }

    public FloatBuffer toFloatBuffer(boolean z10) {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(16);
        fillFloatBuffer(createFloatBuffer, z10);
        createFloatBuffer.rewind();
        return createFloatBuffer;
    }

    public void toRotationMatrix(Matrix3f matrix3f) {
        matrix3f.m00 = this.m00;
        matrix3f.m01 = this.m01;
        matrix3f.m02 = this.m02;
        matrix3f.m10 = this.m10;
        matrix3f.m11 = this.m11;
        matrix3f.m12 = this.m12;
        matrix3f.m20 = this.m20;
        matrix3f.m21 = this.m21;
        matrix3f.m22 = this.m22;
    }

    public Vector3f toTranslationVector(Vector3f vector3f) {
        return vector3f.set(this.m03, this.m13, this.m23);
    }

    public Matrix4f(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24, float f25) {
        this.m00 = f10;
        this.m01 = f11;
        this.m02 = f12;
        this.m03 = f13;
        this.m10 = f14;
        this.m11 = f15;
        this.m12 = f16;
        this.m13 = f17;
        this.m20 = f18;
        this.m21 = f19;
        this.m22 = f20;
        this.m23 = f21;
        this.m30 = f22;
        this.m31 = f23;
        this.m32 = f24;
        this.m33 = f25;
    }

    public Quaternion toRotationQuat(Quaternion quaternion) {
        return quaternion.fromRotationMatrix(this.m00, this.m01, this.m02, this.m10, this.m11, this.m12, this.m20, this.m21, this.m22);
    }

    public Vector3f toScaleVector(Vector3f vector3f) {
        float f10 = this.m00;
        float f11 = this.m10;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.m20;
        float sqrt = (float) Math.sqrt(f12 + (f13 * f13));
        float f14 = this.m01;
        float f15 = this.m11;
        float f16 = (f14 * f14) + (f15 * f15);
        float f17 = this.m21;
        float sqrt2 = (float) Math.sqrt(f16 + (f17 * f17));
        float f18 = this.m02;
        float f19 = this.m12;
        float f20 = (f18 * f18) + (f19 * f19);
        float f21 = this.m22;
        vector3f.set(sqrt, sqrt2, (float) Math.sqrt(f20 + (f21 * f21)));
        return vector3f;
    }

    public Matrix4f mult(float f10, Matrix4f matrix4f) {
        matrix4f.set(this);
        matrix4f.multLocal(f10);
        return matrix4f;
    }

    public void inverseTranslateVect(Vector3f vector3f) {
        vector3f.f81611x -= this.m03;
        vector3f.f81612y -= this.m13;
        vector3f.f81613z -= this.m23;
    }

    public Matrix4f mult(Matrix4f matrix4f) {
        return mult(matrix4f, (Matrix4f) null);
    }

    public void setTranslation(float f10, float f11, float f12) {
        this.m03 = f10;
        this.m13 = f11;
        this.m23 = f12;
    }

    public Matrix4f mult(Matrix4f matrix4f, Matrix4f matrix4f2) {
        Matrix4f matrix4f3 = matrix4f2 == null ? new Matrix4f() : matrix4f2;
        TempVars tempVars = TempVars.get();
        float[] fArr = tempVars.matrixWrite;
        float f10 = this.m00;
        float f11 = matrix4f.m00;
        float f12 = this.m01;
        float f13 = matrix4f.m10;
        float f14 = this.m02;
        float f15 = matrix4f.m20;
        float f16 = this.m03;
        float f17 = matrix4f.m30;
        float f18 = (f10 * f11) + (f12 * f13) + (f14 * f15) + (f16 * f17);
        fArr[0] = f18;
        float f19 = matrix4f.m01;
        float f20 = matrix4f.m11;
        Matrix4f matrix4f4 = matrix4f3;
        float f21 = matrix4f.m21;
        float f22 = matrix4f.m31;
        float f23 = (f10 * f19) + (f12 * f20) + (f14 * f21) + (f16 * f22);
        fArr[1] = f23;
        float f24 = matrix4f.m02;
        float f25 = f10 * f24;
        float f26 = matrix4f.m12;
        float f27 = f25 + (f12 * f26);
        float f28 = matrix4f.m22;
        float f29 = f27 + (f14 * f28);
        float f30 = matrix4f.m32;
        float f31 = f29 + (f16 * f30);
        fArr[2] = f31;
        float f32 = matrix4f.m03;
        float f33 = f10 * f32;
        float f34 = matrix4f.m13;
        float f35 = f33 + (f12 * f34);
        float f36 = matrix4f.m23;
        float f37 = matrix4f.m33;
        float f38 = f35 + (f14 * f36) + (f16 * f37);
        fArr[3] = f38;
        float f39 = this.m10;
        float f40 = this.m11;
        float f41 = (f39 * f11) + (f40 * f13);
        float f42 = this.m12;
        float f43 = f41 + (f42 * f15);
        float f44 = this.m13;
        float f45 = f43 + (f44 * f17);
        fArr[4] = f45;
        float f46 = (f39 * f19) + (f40 * f20) + (f42 * f21) + (f44 * f22);
        fArr[5] = f46;
        float f47 = (f39 * f24) + (f40 * f26) + (f42 * f28) + (f44 * f30);
        fArr[6] = f47;
        float f48 = (f39 * f32) + (f40 * f34) + (f42 * f36) + (f44 * f37);
        fArr[7] = f48;
        float f49 = this.m20;
        float f50 = this.m21;
        float f51 = this.m22;
        float f52 = this.m23;
        float f53 = (f49 * f11) + (f50 * f13) + (f51 * f15) + (f52 * f17);
        fArr[8] = f53;
        float f54 = (f49 * f19) + (f50 * f20) + (f51 * f21) + (f52 * f22);
        fArr[9] = f54;
        float f55 = (f49 * f24) + (f50 * f26) + (f51 * f28) + (f52 * f30);
        fArr[10] = f55;
        float f56 = (f49 * f32) + (f50 * f34) + (f51 * f36) + (f52 * f37);
        fArr[11] = f56;
        float f57 = this.m30;
        float f58 = this.m31;
        float f59 = this.m32;
        float f60 = this.m33;
        float f61 = (f11 * f57) + (f58 * f13) + (f59 * f15) + (f17 * f60);
        fArr[12] = f61;
        float f62 = (f19 * f57) + (f20 * f58) + (f21 * f59) + (f22 * f60);
        fArr[13] = f62;
        float f63 = (f57 * f24) + (f58 * f26) + (f59 * f28) + (f60 * f30);
        fArr[14] = f63;
        float f64 = (f57 * f32) + (f58 * f34) + (f59 * f36) + (f60 * f37);
        fArr[15] = f64;
        matrix4f4.m00 = f18;
        matrix4f4.m01 = f23;
        matrix4f4.m02 = f31;
        matrix4f4.m03 = f38;
        matrix4f4.m10 = f45;
        matrix4f4.m11 = f46;
        matrix4f4.m12 = f47;
        matrix4f4.m13 = f48;
        matrix4f4.m20 = f53;
        matrix4f4.m21 = f54;
        matrix4f4.m22 = f55;
        matrix4f4.m23 = f56;
        matrix4f4.m30 = f61;
        matrix4f4.m31 = f62;
        matrix4f4.m32 = f63;
        matrix4f4.m33 = f64;
        tempVars.release();
        return matrix4f4;
    }

    public Vector3f multAcross(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f == null) {
            logger.warning("Source vector is null, null result returned.");
            return null;
        }
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        float f10 = vector3f.f81611x;
        float f11 = vector3f.f81612y;
        float f12 = vector3f.f81613z;
        vector3f2.f81611x = (this.m00 * f10) + (this.m10 * f11) + (this.m20 * f12) + (this.m30 * 1.0f);
        vector3f2.f81612y = (this.m01 * f10) + (this.m11 * f11) + (this.m21 * f12) + (this.m31 * 1.0f);
        vector3f2.f81613z = (this.m02 * f10) + (this.m12 * f11) + (this.m22 * f12) + (this.m32 * 1.0f);
        return vector3f2;
    }

    public void setTranslation(Vector3f vector3f) {
        this.m03 = vector3f.f81611x;
        this.m13 = vector3f.f81612y;
        this.m23 = vector3f.f81613z;
    }

    public float[] multAcross(float[] fArr) {
        if (fArr != null && fArr.length == 4) {
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            float f13 = fArr[3];
            fArr[0] = (this.m00 * f10) + (this.m10 * f11) + (this.m20 * f12) + (this.m30 * f13);
            fArr[1] = (this.m01 * f10) + (this.m11 * f11) + (this.m21 * f12) + (this.m31 * f13);
            fArr[2] = (this.m02 * f10) + (this.m12 * f11) + (this.m22 * f12) + (this.m32 * f13);
            fArr[3] = (this.m03 * f10) + (this.m13 * f11) + (this.m23 * f12) + (this.m33 * f13);
            return fArr;
        }
        logger.warning("invalid array given, must be nonnull and length 4");
        return null;
    }

    public void setScale(Vector3f vector3f) {
        setScale(vector3f.f81611x, vector3f.f81612y, vector3f.f81613z);
    }

    public Matrix4f multLocal(Matrix4f matrix4f) {
        return mult(matrix4f, this);
    }

    public void multLocal(Quaternion quaternion) {
        Vector3f vector3f = new Vector3f();
        float angleAxis = quaternion.toAngleAxis(vector3f);
        Matrix4f matrix4f = new Matrix4f();
        matrix4f.fromAngleAxis(angleAxis, vector3f);
        multLocal(matrix4f);
    }

    public void set(float[][] fArr) {
        if (fArr.length == 4) {
            float[] fArr2 = fArr[0];
            if (fArr2.length == 4) {
                this.m00 = fArr2[0];
                this.m01 = fArr2[1];
                this.m02 = fArr2[2];
                this.m03 = fArr2[3];
                float[] fArr3 = fArr[1];
                this.m10 = fArr3[0];
                this.m11 = fArr3[1];
                this.m12 = fArr3[2];
                this.m13 = fArr3[3];
                float[] fArr4 = fArr[2];
                this.m20 = fArr4[0];
                this.m21 = fArr4[1];
                this.m22 = fArr4[2];
                this.m23 = fArr4[3];
                float[] fArr5 = fArr[3];
                this.m30 = fArr5[0];
                this.m31 = fArr5[1];
                this.m32 = fArr5[2];
                this.m33 = fArr5[3];
                return;
            }
        }
        throw new IllegalArgumentException("Array must be of size 16.");
    }

    public Matrix4f(float[] fArr) {
        set(fArr, false);
    }

    public Matrix4f(Matrix4f matrix4f) {
        copy(matrix4f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0009, code lost:
    
        if (r4 == 3) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public float get(int i10, int i11) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                }
                if (i11 != 0) {
                    return this.m20;
                }
                if (i11 == 1) {
                    return this.m21;
                }
                if (i11 == 2) {
                    return this.m22;
                }
                if (i11 == 3) {
                    return this.m23;
                }
                if (i11 == 0) {
                    return this.m30;
                }
                if (i11 == 1) {
                    return this.m31;
                }
                if (i11 != 2) {
                    if (i11 == 3) {
                        return this.m33;
                    }
                    logger.warning("Invalid matrix index.");
                    throw new IllegalArgumentException("Invalid indices into matrix.");
                }
                return this.m32;
            }
        } else {
            if (i11 == 0) {
                return this.m00;
            }
            if (i11 == 1) {
                return this.m01;
            }
            if (i11 == 2) {
                return this.m02;
            }
            if (i11 == 3) {
                return this.m03;
            }
        }
        if (i11 == 0) {
            return this.m10;
        }
        if (i11 == 1) {
            return this.m11;
        }
        if (i11 == 2) {
            return this.m12;
        }
        if (i11 == 3) {
            return this.m13;
        }
        if (i11 != 0) {
        }
    }

    public void set(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24, float f25) {
        this.m00 = f10;
        this.m01 = f11;
        this.m02 = f12;
        this.m03 = f13;
        this.m10 = f14;
        this.m11 = f15;
        this.m12 = f16;
        this.m13 = f17;
        this.m20 = f18;
        this.m21 = f19;
        this.m22 = f20;
        this.m23 = f21;
        this.m30 = f22;
        this.m31 = f23;
        this.m32 = f24;
        this.m33 = f25;
    }

    public Vector3f mult(Vector3f vector3f) {
        return mult(vector3f, (Vector3f) null);
    }

    public Vector3f mult(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        float f10 = vector3f.f81611x;
        float f11 = vector3f.f81612y;
        float f12 = vector3f.f81613z;
        vector3f2.f81611x = (this.m00 * f10) + (this.m01 * f11) + (this.m02 * f12) + this.m03;
        vector3f2.f81612y = (this.m10 * f10) + (this.m11 * f11) + (this.m12 * f12) + this.m13;
        vector3f2.f81613z = (this.m20 * f10) + (this.m21 * f11) + (this.m22 * f12) + this.m23;
        return vector3f2;
    }

    public Vector4f mult(Vector4f vector4f) {
        return mult(vector4f, (Vector4f) null);
    }

    public Vector4f mult(Vector4f vector4f, Vector4f vector4f2) {
        if (vector4f == null) {
            logger.warning("Source vector is null, null result returned.");
            return null;
        }
        if (vector4f2 == null) {
            vector4f2 = new Vector4f();
        }
        float f10 = vector4f.f81615x;
        float f11 = vector4f.f81616y;
        float f12 = vector4f.f81617z;
        float f13 = vector4f.f81614w;
        vector4f2.f81615x = (this.m00 * f10) + (this.m01 * f11) + (this.m02 * f12) + (this.m03 * f13);
        vector4f2.f81616y = (this.m10 * f10) + (this.m11 * f11) + (this.m12 * f12) + (this.m13 * f13);
        vector4f2.f81617z = (this.m20 * f10) + (this.m21 * f11) + (this.m22 * f12) + (this.m23 * f13);
        vector4f2.f81614w = (this.m30 * f10) + (this.m31 * f11) + (this.m32 * f12) + (this.m33 * f13);
        return vector4f2;
    }

    public Matrix4f set(Matrix4f matrix4f) {
        this.m00 = matrix4f.m00;
        this.m01 = matrix4f.m01;
        this.m02 = matrix4f.m02;
        this.m03 = matrix4f.m03;
        this.m10 = matrix4f.m10;
        this.m11 = matrix4f.m11;
        this.m12 = matrix4f.m12;
        this.m13 = matrix4f.m13;
        this.m20 = matrix4f.m20;
        this.m21 = matrix4f.m21;
        this.m22 = matrix4f.m22;
        this.m23 = matrix4f.m23;
        this.m30 = matrix4f.m30;
        this.m31 = matrix4f.m31;
        this.m32 = matrix4f.m32;
        this.m33 = matrix4f.m33;
        return this;
    }

    public Quaternion mult(Quaternion quaternion, Quaternion quaternion2) {
        if (quaternion == null) {
            logger.warning("Source vector is null, null result returned.");
            return null;
        }
        if (quaternion2 == null) {
            quaternion2 = new Quaternion();
        }
        float f10 = this.m00;
        float f11 = quaternion.f81601x;
        float f12 = this.m10;
        float f13 = quaternion.f81602y;
        float f14 = (f10 * f11) + (f12 * f13);
        float f15 = this.m20;
        float f16 = quaternion.f81603z;
        float f17 = f14 + (f15 * f16);
        float f18 = this.m30;
        float f19 = quaternion.f81600w;
        float f20 = f17 + (f18 * f19);
        float f21 = (this.m01 * f11) + (this.m11 * f13) + (this.m21 * f16) + (this.m31 * f19);
        float f22 = (this.m02 * f11) + (this.m12 * f13) + (this.m22 * f16) + (this.m32 * f19);
        float f23 = (this.m03 * f11) + (this.m13 * f13) + (this.m23 * f16) + (this.m33 * f19);
        quaternion2.f81601x = f20;
        quaternion2.f81602y = f21;
        quaternion2.f81603z = f22;
        quaternion2.f81600w = f23;
        return quaternion2;
    }

    public float[] mult(float[] fArr) {
        if (fArr != null && fArr.length == 4) {
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            float f13 = fArr[3];
            fArr[0] = (this.m00 * f10) + (this.m01 * f11) + (this.m02 * f12) + (this.m03 * f13);
            fArr[1] = (this.m10 * f10) + (this.m11 * f11) + (this.m12 * f12) + (this.m13 * f13);
            fArr[2] = (this.m20 * f10) + (this.m21 * f11) + (this.m22 * f12) + (this.m23 * f13);
            fArr[3] = (this.m30 * f10) + (this.m31 * f11) + (this.m32 * f12) + (this.m33 * f13);
            return fArr;
        }
        logger.warning("invalid array given, must be nonnull and length 4");
        return null;
    }

    public void set(float[] fArr) {
        set(fArr, true);
    }

    public void set(float[] fArr, boolean z10) {
        if (fArr.length != 16) {
            throw new IllegalArgumentException("Array must be of size 16.");
        }
        if (z10) {
            this.m00 = fArr[0];
            this.m01 = fArr[1];
            this.m02 = fArr[2];
            this.m03 = fArr[3];
            this.m10 = fArr[4];
            this.m11 = fArr[5];
            this.m12 = fArr[6];
            this.m13 = fArr[7];
            this.m20 = fArr[8];
            this.m21 = fArr[9];
            this.m22 = fArr[10];
            this.m23 = fArr[11];
            this.m30 = fArr[12];
            this.m31 = fArr[13];
            this.m32 = fArr[14];
            this.m33 = fArr[15];
            return;
        }
        this.m00 = fArr[0];
        this.m01 = fArr[4];
        this.m02 = fArr[8];
        this.m03 = fArr[12];
        this.m10 = fArr[1];
        this.m11 = fArr[5];
        this.m12 = fArr[9];
        this.m13 = fArr[13];
        this.m20 = fArr[2];
        this.m21 = fArr[6];
        this.m22 = fArr[10];
        this.m23 = fArr[14];
        this.m30 = fArr[3];
        this.m31 = fArr[7];
        this.m32 = fArr[11];
        this.m33 = fArr[15];
    }
}
