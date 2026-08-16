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

public final class Matrix3f implements Savable, Cloneable, Serializable {
    static final long serialVersionUID = 1;
    protected float m00;
    protected float m01;
    protected float m02;
    protected float m10;
    protected float m11;
    protected float m12;
    protected float m20;
    protected float m21;
    protected float m22;
    private static final Logger logger = Logger.getLogger(Matrix3f.class.getName());
    public static final Matrix3f ZERO = new Matrix3f(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
    public static final Matrix3f IDENTITY = new Matrix3f();

    public Matrix3f() {
        loadIdentity();
    }

    public static boolean equalIdentity(Matrix3f matrix3f) {
        return ((double) Math.abs(matrix3f.m00 - 1.0f)) <= 1.0E-4d && ((double) Math.abs(matrix3f.m11 - 1.0f)) <= 1.0E-4d && ((double) Math.abs(matrix3f.m22 - 1.0f)) <= 1.0E-4d && ((double) Math.abs(matrix3f.m01)) <= 1.0E-4d && ((double) Math.abs(matrix3f.m02)) <= 1.0E-4d && ((double) Math.abs(matrix3f.m10)) <= 1.0E-4d && ((double) Math.abs(matrix3f.m12)) <= 1.0E-4d && ((double) Math.abs(matrix3f.m20)) <= 1.0E-4d && ((double) Math.abs(matrix3f.m21)) <= 1.0E-4d;
    }

    public void absoluteLocal() {
        this.m00 = FastMath.abs(this.m00);
        this.m01 = FastMath.abs(this.m01);
        this.m02 = FastMath.abs(this.m02);
        this.m10 = FastMath.abs(this.m10);
        this.m11 = FastMath.abs(this.m11);
        this.m12 = FastMath.abs(this.m12);
        this.m20 = FastMath.abs(this.m20);
        this.m21 = FastMath.abs(this.m21);
        this.m22 = FastMath.abs(this.m22);
    }

    public Matrix3f adjoint() {
        return adjoint(null);
    }

    public float determinant() {
        float f10 = this.m11;
        float f11 = this.m22;
        float f12 = this.m12;
        float f13 = this.m21;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = this.m20;
        float f16 = this.m10;
        return (this.m00 * f14) + (this.m01 * ((f12 * f15) - (f11 * f16))) + (this.m02 * ((f16 * f13) - (f10 * f15)));
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != Matrix3f.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Matrix3f matrix3f = (Matrix3f) obj;
        return Float.compare(this.m00, matrix3f.m00) == 0 && Float.compare(this.m01, matrix3f.m01) == 0 && Float.compare(this.m02, matrix3f.m02) == 0 && Float.compare(this.m10, matrix3f.m10) == 0 && Float.compare(this.m11, matrix3f.m11) == 0 && Float.compare(this.m12, matrix3f.m12) == 0 && Float.compare(this.m20, matrix3f.m20) == 0 && Float.compare(this.m21, matrix3f.m21) == 0 && Float.compare(this.m22, matrix3f.m22) == 0;
    }

    public void fillFloatArray(float[] fArr, boolean z10) {
        if (z10) {
            fArr[0] = this.m00;
            fArr[1] = this.m10;
            fArr[2] = this.m20;
            fArr[3] = this.m01;
            fArr[4] = this.m11;
            fArr[5] = this.m21;
            fArr[6] = this.m02;
            fArr[7] = this.m12;
            fArr[8] = this.m22;
            return;
        }
        fArr[0] = this.m00;
        fArr[1] = this.m01;
        fArr[2] = this.m02;
        fArr[3] = this.m10;
        fArr[4] = this.m11;
        fArr[5] = this.m12;
        fArr[6] = this.m20;
        fArr[7] = this.m21;
        fArr[8] = this.m22;
    }

    public FloatBuffer fillFloatBuffer(FloatBuffer floatBuffer, boolean z10) {
        TempVars tempVars = TempVars.get();
        fillFloatArray(tempVars.matrixWrite, z10);
        floatBuffer.put(tempVars.matrixWrite, 0, 9);
        tempVars.release();
        return floatBuffer;
    }

    public void fromAngleAxis(float f10, Vector3f vector3f) {
        fromAngleNormalAxis(f10, vector3f.normalize());
    }

    public void fromAngleNormalAxis(float f10, Vector3f vector3f) {
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

    public void fromAxes(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        this.m00 = vector3f.f81611x;
        this.m10 = vector3f.f81612y;
        this.m20 = vector3f.f81613z;
        this.m01 = vector3f2.f81611x;
        this.m11 = vector3f2.f81612y;
        this.m21 = vector3f2.f81613z;
        this.m02 = vector3f3.f81611x;
        this.m12 = vector3f3.f81612y;
        this.m22 = vector3f3.f81613z;
    }

    public void fromStartEndVectors(Vector3f vector3f, Vector3f vector3f2) {
        Vector3f vector3f3 = new Vector3f();
        vector3f.cross(vector3f2, vector3f3);
        float dot = vector3f.dot(vector3f2);
        if ((dot < 0.0f ? -dot : dot) <= 0.9999f) {
            float f10 = 1.0f / (dot + 1.0f);
            float f11 = vector3f3.f81611x;
            float f12 = f10 * f11;
            float f13 = vector3f3.f81613z;
            float f14 = f10 * f13;
            float f15 = vector3f3.f81612y;
            float f16 = f12 * f15;
            float f17 = f13 * f12;
            float f18 = f15 * f14;
            set(0, 0, (f12 * f11) + dot);
            set(0, 1, f16 - vector3f3.f81613z);
            set(0, 2, vector3f3.f81612y + f17);
            set(1, 0, f16 + vector3f3.f81613z);
            float f19 = vector3f3.f81612y;
            set(1, 1, (f10 * f19 * f19) + dot);
            set(1, 2, f18 - vector3f3.f81611x);
            set(2, 0, f17 - vector3f3.f81612y);
            set(2, 1, f18 + vector3f3.f81611x);
            set(2, 2, dot + (f14 * vector3f3.f81613z));
            return;
        }
        Vector3f vector3f4 = new Vector3f();
        Vector3f vector3f5 = new Vector3f();
        float f20 = vector3f.f81611x;
        if (f20 <= 0.0d) {
            f20 = -f20;
        }
        vector3f5.f81611x = f20;
        float f21 = vector3f.f81612y;
        if (f21 <= 0.0d) {
            f21 = -f21;
        }
        vector3f5.f81612y = f21;
        float f22 = vector3f.f81613z;
        if (f22 <= 0.0d) {
            f22 = -f22;
        }
        vector3f5.f81613z = f22;
        if (f20 < f21) {
            if (f20 < f22) {
                vector3f5.f81611x = 1.0f;
                vector3f5.f81613z = 0.0f;
                vector3f5.f81612y = 0.0f;
            } else {
                vector3f5.f81613z = 1.0f;
                vector3f5.f81612y = 0.0f;
                vector3f5.f81611x = 0.0f;
            }
        } else if (f21 < f22) {
            vector3f5.f81612y = 1.0f;
            vector3f5.f81613z = 0.0f;
            vector3f5.f81611x = 0.0f;
        } else {
            vector3f5.f81613z = 1.0f;
            vector3f5.f81612y = 0.0f;
            vector3f5.f81611x = 0.0f;
        }
        vector3f4.f81611x = vector3f5.f81611x - vector3f.f81611x;
        vector3f4.f81612y = vector3f5.f81612y - vector3f.f81612y;
        vector3f4.f81613z = vector3f5.f81613z - vector3f.f81613z;
        vector3f3.f81611x = vector3f5.f81611x - vector3f2.f81611x;
        vector3f3.f81612y = vector3f5.f81612y - vector3f2.f81612y;
        vector3f3.f81613z = vector3f5.f81613z - vector3f2.f81613z;
        float dot2 = 2.0f / vector3f4.dot(vector3f4);
        float dot3 = 2.0f / vector3f3.dot(vector3f3);
        float dot4 = dot2 * dot3 * vector3f4.dot(vector3f3);
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                set(i10, i11, ((((-dot2) * vector3f4.get(i10)) * vector3f4.get(i11)) - ((vector3f3.get(i10) * dot3) * vector3f3.get(i11))) + (vector3f3.get(i10) * dot4 * vector3f4.get(i11)));
            }
            set(i10, i10, get(i10, i10) + 1.0f);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
    
        if (r3 == 2) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public float get(int i10, int i11) {
        if (i10 != 0) {
            if (i10 != 1) {
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
        if (i11 == 0) {
            return this.m20;
        }
        if (i11 != 1) {
            if (i11 == 2) {
                return this.m22;
            }
            logger.warning("Invalid matrix index.");
            throw new IllegalArgumentException("Invalid indices into matrix.");
        }
        return this.m21;
    }

    public Vector3f getColumn(int i10) {
        return getColumn(i10, null);
    }

    public Vector3f getRow(int i10) {
        return getRow(i10, null);
    }

    public int hashCode() {
        return ((((((((((((((((1369 + Float.floatToIntBits(this.m00)) * 37) + Float.floatToIntBits(this.m01)) * 37) + Float.floatToIntBits(this.m02)) * 37) + Float.floatToIntBits(this.m10)) * 37) + Float.floatToIntBits(this.m11)) * 37) + Float.floatToIntBits(this.m12)) * 37) + Float.floatToIntBits(this.m20)) * 37) + Float.floatToIntBits(this.m21)) * 37) + Float.floatToIntBits(this.m22);
    }

    public Matrix3f invert() {
        return invert(null);
    }

    public Matrix3f invertLocal() {
        float determinant = determinant();
        if (FastMath.abs(determinant) <= 0.0f) {
            return zero();
        }
        float f10 = this.m11;
        float f11 = this.m22;
        float f12 = this.m12;
        float f13 = this.m21;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = this.m02;
        float f16 = this.m01;
        float f17 = (f15 * f13) - (f16 * f11);
        float f18 = (f16 * f12) - (f15 * f10);
        float f19 = this.m20;
        float f20 = this.m10;
        float f21 = (f12 * f19) - (f20 * f11);
        float f22 = this.m00;
        float f23 = (f11 * f22) - (f15 * f19);
        float f24 = (f15 * f20) - (f12 * f22);
        float f25 = (f20 * f13) - (f10 * f19);
        this.m00 = f14;
        this.m01 = f17;
        this.m02 = f18;
        this.m10 = f21;
        this.m11 = f23;
        this.m12 = f24;
        this.m20 = f25;
        this.m21 = (f19 * f16) - (f13 * f22);
        this.m22 = (f22 * f10) - (f16 * f20);
        multLocal(1.0f / determinant);
        return this;
    }

    public boolean isIdentity() {
        return this.m00 == 1.0f && this.m01 == 0.0f && this.m02 == 0.0f && this.m10 == 0.0f && this.m11 == 1.0f && this.m12 == 0.0f && this.m20 == 0.0f && this.m21 == 0.0f && this.m22 == 1.0f;
    }

    public void loadIdentity() {
        this.m21 = 0.0f;
        this.m20 = 0.0f;
        this.m12 = 0.0f;
        this.m10 = 0.0f;
        this.m02 = 0.0f;
        this.m01 = 0.0f;
        this.m22 = 1.0f;
        this.m11 = 1.0f;
        this.m00 = 1.0f;
    }

    public Matrix3f mult(Matrix3f matrix3f) {
        return mult(matrix3f, (Matrix3f) null);
    }

    public Matrix3f multLocal(float f10) {
        this.m00 *= f10;
        this.m01 *= f10;
        this.m02 *= f10;
        this.m10 *= f10;
        this.m11 *= f10;
        this.m12 *= f10;
        this.m20 *= f10;
        this.m21 *= f10;
        this.m22 *= f10;
        return this;
    }

    public Matrix3f normalize(Matrix3f matrix3f) {
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        float f10 = this.m00;
        float f11 = this.m10;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.m20;
        float sqrt = 1.0f / FastMath.sqrt(f12 + (f13 * f13));
        matrix3f.m00 = this.m00 * sqrt;
        matrix3f.m10 = this.m10 * sqrt;
        matrix3f.m20 = this.m20 * sqrt;
        float f14 = this.m01;
        float f15 = this.m11;
        float f16 = (f14 * f14) + (f15 * f15);
        float f17 = this.m21;
        float sqrt2 = 1.0f / FastMath.sqrt(f16 + (f17 * f17));
        float f18 = this.m01 * sqrt2;
        matrix3f.m01 = f18;
        float f19 = this.m11 * sqrt2;
        matrix3f.m11 = f19;
        float f20 = this.m21 * sqrt2;
        matrix3f.m21 = f20;
        float f21 = matrix3f.m10;
        float f22 = matrix3f.m20;
        matrix3f.m02 = (f21 * f20) - (f19 * f22);
        float f23 = matrix3f.m00;
        matrix3f.m12 = (f22 * f18) - (f20 * f23);
        matrix3f.m22 = (f23 * f19) - (f18 * f21);
        return matrix3f;
    }

    public Matrix3f normalizeLocal() {
        return normalize(this);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.m00 = capsule.readFloat("m00", 1.0f);
        this.m01 = capsule.readFloat("m01", 0.0f);
        this.m02 = capsule.readFloat("m02", 0.0f);
        this.m10 = capsule.readFloat("m10", 0.0f);
        this.m11 = capsule.readFloat("m11", 1.0f);
        this.m12 = capsule.readFloat("m12", 0.0f);
        this.m20 = capsule.readFloat("m20", 0.0f);
        this.m21 = capsule.readFloat("m21", 0.0f);
        this.m22 = capsule.readFloat("m22", 1.0f);
    }

    public void scale(Vector3f vector3f) {
        float f10 = this.m00;
        float f11 = vector3f.f81611x;
        this.m00 = f10 * f11;
        this.m10 *= f11;
        this.m20 *= f11;
        float f12 = this.m01;
        float f13 = vector3f.f81612y;
        this.m01 = f12 * f13;
        this.m11 *= f13;
        this.m21 *= f13;
        float f14 = this.m02;
        float f15 = vector3f.f81613z;
        this.m02 = f14 * f15;
        this.m12 *= f15;
        this.m22 *= f15;
    }

    public Matrix3f set(Matrix3f matrix3f) {
        if (matrix3f == null) {
            loadIdentity();
        } else {
            this.m00 = matrix3f.m00;
            this.m01 = matrix3f.m01;
            this.m02 = matrix3f.m02;
            this.m10 = matrix3f.m10;
            this.m11 = matrix3f.m11;
            this.m12 = matrix3f.m12;
            this.m20 = matrix3f.m20;
            this.m21 = matrix3f.m21;
            this.m22 = matrix3f.m22;
        }
        return this;
    }

    public Matrix3f setColumn(int i10, Vector3f vector3f) {
        if (vector3f == null) {
            logger.warning("Column is null. Ignoring.");
            return this;
        }
        if (i10 == 0) {
            this.m00 = vector3f.f81611x;
            this.m10 = vector3f.f81612y;
            this.m20 = vector3f.f81613z;
        } else if (i10 == 1) {
            this.m01 = vector3f.f81611x;
            this.m11 = vector3f.f81612y;
            this.m21 = vector3f.f81613z;
        } else {
            if (i10 != 2) {
                logger.warning("Invalid column index.");
                throw new IllegalArgumentException("Invalid column index. " + i10);
            }
            this.m02 = vector3f.f81611x;
            this.m12 = vector3f.f81612y;
            this.m22 = vector3f.f81613z;
        }
        return this;
    }

    public Matrix3f setRow(int i10, Vector3f vector3f) {
        if (vector3f == null) {
            logger.warning("Row is null. Ignoring.");
            return this;
        }
        if (i10 == 0) {
            this.m00 = vector3f.f81611x;
            this.m01 = vector3f.f81612y;
            this.m02 = vector3f.f81613z;
        } else if (i10 == 1) {
            this.m10 = vector3f.f81611x;
            this.m11 = vector3f.f81612y;
            this.m12 = vector3f.f81613z;
        } else {
            if (i10 != 2) {
                logger.warning("Invalid row index.");
                throw new IllegalArgumentException("Invalid row index. " + i10);
            }
            this.m20 = vector3f.f81611x;
            this.m21 = vector3f.f81612y;
            this.m22 = vector3f.f81613z;
        }
        return this;
    }

    public FloatBuffer toFloatBuffer() {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(9);
        createFloatBuffer.put(this.m00).put(this.m01).put(this.m02);
        createFloatBuffer.put(this.m10).put(this.m11).put(this.m12);
        createFloatBuffer.put(this.m20).put(this.m21).put(this.m22);
        createFloatBuffer.rewind();
        return createFloatBuffer;
    }

    public String toString() {
        return "Matrix3f\n[\n " + this.m00 + GlideException.a.f59088e + this.m01 + GlideException.a.f59088e + this.m02 + " \n " + this.m10 + GlideException.a.f59088e + this.m11 + GlideException.a.f59088e + this.m12 + " \n " + this.m20 + GlideException.a.f59088e + this.m21 + GlideException.a.f59088e + this.m22 + " \n]";
    }

    public Matrix3f transpose() {
        return transposeLocal();
    }

    public Matrix3f transposeLocal() {
        float f10 = this.m01;
        this.m01 = this.m10;
        this.m10 = f10;
        float f11 = this.m02;
        this.m02 = this.m20;
        this.m20 = f11;
        float f12 = this.m12;
        this.m12 = this.m21;
        this.m21 = f12;
        return this;
    }

    public Matrix3f transposeNew() {
        return new Matrix3f(this.m00, this.m10, this.m20, this.m01, this.m11, this.m21, this.m02, this.m12, this.m22);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.m00, "m00", 1.0f);
        capsule.write(this.m01, "m01", 0.0f);
        capsule.write(this.m02, "m02", 0.0f);
        capsule.write(this.m10, "m10", 0.0f);
        capsule.write(this.m11, "m11", 1.0f);
        capsule.write(this.m12, "m12", 0.0f);
        capsule.write(this.m20, "m20", 0.0f);
        capsule.write(this.m21, "m21", 0.0f);
        capsule.write(this.m22, "m22", 1.0f);
    }

    public Matrix3f zero() {
        this.m22 = 0.0f;
        this.m21 = 0.0f;
        this.m20 = 0.0f;
        this.m12 = 0.0f;
        this.m11 = 0.0f;
        this.m10 = 0.0f;
        this.m02 = 0.0f;
        this.m01 = 0.0f;
        this.m00 = 0.0f;
        return this;
    }

    public Matrix3f adjoint(Matrix3f matrix3f) {
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        float f10 = this.m11;
        float f11 = this.m22;
        float f12 = this.m12;
        float f13 = this.m21;
        matrix3f.m00 = (f10 * f11) - (f12 * f13);
        float f14 = this.m02;
        matrix3f.m01 = (f14 * f13) - (this.m01 * f11);
        float f15 = this.m01;
        matrix3f.m02 = (f15 * f12) - (f14 * f10);
        float f16 = this.m20;
        matrix3f.m10 = (f12 * f16) - (this.m10 * f11);
        float f17 = this.m00;
        float f18 = this.m02;
        matrix3f.m11 = (f11 * f17) - (f18 * f16);
        float f19 = this.m10;
        matrix3f.m12 = (f18 * f19) - (f12 * f17);
        float f20 = this.m11;
        matrix3f.m20 = (f19 * f13) - (f16 * f20);
        matrix3f.m21 = (this.m20 * f15) - (f13 * f17);
        matrix3f.m22 = (f17 * f20) - (f15 * f19);
        return matrix3f;
    }

    public Matrix3f m1282clone() {
        try {
            return (Matrix3f) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Vector3f getColumn(int i10, Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        if (i10 == 0) {
            vector3f.f81611x = this.m00;
            vector3f.f81612y = this.m10;
            vector3f.f81613z = this.m20;
        } else if (i10 == 1) {
            vector3f.f81611x = this.m01;
            vector3f.f81612y = this.m11;
            vector3f.f81613z = this.m21;
        } else if (i10 == 2) {
            vector3f.f81611x = this.m02;
            vector3f.f81612y = this.m12;
            vector3f.f81613z = this.m22;
        } else {
            logger.warning("Invalid column index.");
            throw new IllegalArgumentException("Invalid column index. " + i10);
        }
        return vector3f;
    }

    public Vector3f getRow(int i10, Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        if (i10 == 0) {
            vector3f.f81611x = this.m00;
            vector3f.f81612y = this.m01;
            vector3f.f81613z = this.m02;
        } else if (i10 == 1) {
            vector3f.f81611x = this.m10;
            vector3f.f81612y = this.m11;
            vector3f.f81613z = this.m12;
        } else if (i10 == 2) {
            vector3f.f81611x = this.m20;
            vector3f.f81612y = this.m21;
            vector3f.f81613z = this.m22;
        } else {
            logger.warning("Invalid row index.");
            throw new IllegalArgumentException("Invalid row index. " + i10);
        }
        return vector3f;
    }

    public Matrix3f invert(Matrix3f matrix3f) {
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        float determinant = determinant();
        if (FastMath.abs(determinant) <= 1.1920929E-7f) {
            return matrix3f.zero();
        }
        float f10 = this.m11;
        float f11 = this.m22;
        float f12 = this.m12;
        float f13 = this.m21;
        matrix3f.m00 = (f10 * f11) - (f12 * f13);
        float f14 = this.m02;
        matrix3f.m01 = (f14 * f13) - (this.m01 * f11);
        float f15 = this.m01;
        matrix3f.m02 = (f15 * f12) - (f14 * f10);
        float f16 = this.m20;
        matrix3f.m10 = (f12 * f16) - (this.m10 * f11);
        float f17 = this.m00;
        float f18 = this.m02;
        matrix3f.m11 = (f11 * f17) - (f18 * f16);
        float f19 = this.m10;
        matrix3f.m12 = (f18 * f19) - (f12 * f17);
        float f20 = this.m11;
        matrix3f.m20 = (f19 * f13) - (f16 * f20);
        matrix3f.m21 = (this.m20 * f15) - (f13 * f17);
        matrix3f.m22 = (f17 * f20) - (f15 * f19);
        matrix3f.multLocal(1.0f / determinant);
        return matrix3f;
    }

    public Matrix3f mult(Matrix3f matrix3f, Matrix3f matrix3f2) {
        Matrix3f matrix3f3 = matrix3f2 == null ? new Matrix3f() : matrix3f2;
        float f10 = this.m00;
        float f11 = matrix3f.m00;
        float f12 = this.m01;
        float f13 = matrix3f.m10;
        float f14 = this.m02;
        float f15 = matrix3f.m20;
        float f16 = (f10 * f11) + (f12 * f13) + (f14 * f15);
        float f17 = matrix3f.m01;
        float f18 = matrix3f.m11;
        float f19 = matrix3f.m21;
        float f20 = (f10 * f17) + (f12 * f18) + (f14 * f19);
        float f21 = matrix3f.m02;
        float f22 = matrix3f.m12;
        float f23 = matrix3f.m22;
        float f24 = (f10 * f21) + (f12 * f22) + (f14 * f23);
        float f25 = this.m10;
        float f26 = this.m11;
        float f27 = this.m12;
        float f28 = (f25 * f11) + (f26 * f13) + (f27 * f15);
        float f29 = (f25 * f17) + (f26 * f18) + (f27 * f19);
        float f30 = (f25 * f21) + (f26 * f22) + (f27 * f23);
        float f31 = this.m20;
        float f32 = this.m21;
        float f33 = (f11 * f31) + (f13 * f32);
        float f34 = this.m22;
        matrix3f3.m00 = f16;
        matrix3f3.m01 = f20;
        matrix3f3.m02 = f24;
        matrix3f3.m10 = f28;
        matrix3f3.m11 = f29;
        matrix3f3.m12 = f30;
        matrix3f3.m20 = f33 + (f15 * f34);
        matrix3f3.m21 = (f17 * f31) + (f18 * f32) + (f19 * f34);
        matrix3f3.m22 = (f31 * f21) + (f32 * f22) + (f34 * f23);
        return matrix3f3;
    }

    public Matrix3f(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        this.m00 = f10;
        this.m01 = f11;
        this.m02 = f12;
        this.m10 = f13;
        this.m11 = f14;
        this.m12 = f15;
        this.m20 = f16;
        this.m21 = f17;
        this.m22 = f18;
    }

    public Vector3f multLocal(Vector3f vector3f) {
        if (vector3f == null) {
            return null;
        }
        float f10 = vector3f.f81611x;
        float f11 = vector3f.f81612y;
        float f12 = (this.m00 * f10) + (this.m01 * f11);
        float f13 = this.m02;
        float f14 = vector3f.f81613z;
        vector3f.f81611x = f12 + (f13 * f14);
        vector3f.f81612y = (this.m10 * f10) + (this.m11 * f11) + (this.m12 * f14);
        vector3f.f81613z = (this.m20 * f10) + (this.m21 * f11) + (this.m22 * f14);
        return vector3f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
    
        if (r3 == 2) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Matrix3f set(int i10, int i11, float f10) {
        if (i10 != 0) {
            if (i10 != 1) {
            }
        } else {
            if (i11 == 0) {
                this.m00 = f10;
                return this;
            }
            if (i11 == 1) {
                this.m01 = f10;
                return this;
            }
            if (i11 == 2) {
                this.m02 = f10;
                return this;
            }
        }
        if (i11 == 0) {
            this.m10 = f10;
            return this;
        }
        if (i11 == 1) {
            this.m11 = f10;
            return this;
        }
        if (i11 == 2) {
            this.m12 = f10;
            return this;
        }
        if (i11 == 0) {
            this.m20 = f10;
            return this;
        }
        if (i11 != 1) {
            if (i11 == 2) {
                this.m22 = f10;
                return this;
            }
            logger.warning("Invalid matrix index.");
            throw new IllegalArgumentException("Invalid indices into matrix.");
        }
        this.m21 = f10;
        return this;
    }

    public void get(float[] fArr, boolean z10) {
        if (fArr.length == 9) {
            if (z10) {
                fArr[0] = this.m00;
                fArr[1] = this.m01;
                fArr[2] = this.m02;
                fArr[3] = this.m10;
                fArr[4] = this.m11;
                fArr[5] = this.m12;
                fArr[6] = this.m20;
                fArr[7] = this.m21;
                fArr[8] = this.m22;
                return;
            }
            fArr[0] = this.m00;
            fArr[1] = this.m10;
            fArr[2] = this.m20;
            fArr[3] = this.m01;
            fArr[4] = this.m11;
            fArr[5] = this.m21;
            fArr[6] = this.m02;
            fArr[7] = this.m12;
            fArr[8] = this.m22;
            return;
        }
        if (fArr.length != 16) {
            throw new IndexOutOfBoundsException("Array size must be 9 or 16 in Matrix3f.get().");
        }
        if (z10) {
            fArr[0] = this.m00;
            fArr[1] = this.m01;
            fArr[2] = this.m02;
            fArr[4] = this.m10;
            fArr[5] = this.m11;
            fArr[6] = this.m12;
            fArr[8] = this.m20;
            fArr[9] = this.m21;
            fArr[10] = this.m22;
            return;
        }
        fArr[0] = this.m00;
        fArr[1] = this.m10;
        fArr[2] = this.m20;
        fArr[4] = this.m01;
        fArr[5] = this.m11;
        fArr[6] = this.m21;
        fArr[8] = this.m02;
        fArr[9] = this.m12;
        fArr[10] = this.m22;
    }

    public Matrix3f(Matrix3f matrix3f) {
        set(matrix3f);
    }

    public Matrix3f multLocal(Matrix3f matrix3f) {
        return mult(matrix3f, this);
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
        vector3f2.f81611x = (this.m00 * f10) + (this.m01 * f11) + (this.m02 * f12);
        vector3f2.f81612y = (this.m10 * f10) + (this.m11 * f11) + (this.m12 * f12);
        vector3f2.f81613z = (this.m20 * f10) + (this.m21 * f11) + (this.m22 * f12);
        return vector3f2;
    }

    public Matrix3f set(float[][] fArr) {
        if (fArr.length == 3) {
            float[] fArr2 = fArr[0];
            if (fArr2.length == 3) {
                this.m00 = fArr2[0];
                this.m01 = fArr2[1];
                this.m02 = fArr2[2];
                float[] fArr3 = fArr[1];
                this.m10 = fArr3[0];
                this.m11 = fArr3[1];
                this.m12 = fArr3[2];
                float[] fArr4 = fArr[2];
                this.m20 = fArr4[0];
                this.m21 = fArr4[1];
                this.m22 = fArr4[2];
                return this;
            }
        }
        throw new IllegalArgumentException("Array must be of size 9.");
    }

    public Matrix3f set(float[] fArr) {
        return set(fArr, true);
    }

    public Matrix3f set(float[] fArr, boolean z10) {
        if (fArr.length != 9) {
            throw new IllegalArgumentException("Array must be of size 9.");
        }
        if (z10) {
            this.m00 = fArr[0];
            this.m01 = fArr[1];
            this.m02 = fArr[2];
            this.m10 = fArr[3];
            this.m11 = fArr[4];
            this.m12 = fArr[5];
            this.m20 = fArr[6];
            this.m21 = fArr[7];
            this.m22 = fArr[8];
        } else {
            this.m00 = fArr[0];
            this.m01 = fArr[3];
            this.m02 = fArr[6];
            this.m10 = fArr[1];
            this.m11 = fArr[4];
            this.m12 = fArr[7];
            this.m20 = fArr[2];
            this.m21 = fArr[5];
            this.m22 = fArr[8];
        }
        return this;
    }

    public Matrix3f set(Quaternion quaternion) {
        return quaternion.toRotationMatrix(this);
    }
}
