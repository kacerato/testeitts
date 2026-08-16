package com.jme3.math;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.logging.Logger;

public final class Quaternion implements Savable, Cloneable, Serializable {
    public static final Quaternion DIRECTION_Z;
    public static final Quaternion ZERO;
    static final long serialVersionUID = 1;

    protected float f81600w;

    protected float f81601x;

    protected float f81602y;

    protected float f81603z;
    private static final Logger logger = Logger.getLogger(Quaternion.class.getName());
    public static final Quaternion IDENTITY = new Quaternion();

    static {
        Quaternion quaternion = new Quaternion();
        DIRECTION_Z = quaternion;
        ZERO = new Quaternion(0.0f, 0.0f, 0.0f, 0.0f);
        quaternion.fromAxes(Vector3f.UNIT_X, Vector3f.UNIT_Y, Vector3f.UNIT_Z);
    }

    public Quaternion() {
        this.f81601x = 0.0f;
        this.f81602y = 0.0f;
        this.f81603z = 0.0f;
        this.f81600w = 1.0f;
    }

    public static boolean isValidQuaternion(Quaternion quaternion) {
        return (quaternion == null || Float.isNaN(quaternion.f81601x) || Float.isNaN(quaternion.f81602y) || Float.isNaN(quaternion.f81603z) || Float.isNaN(quaternion.f81600w) || Float.isInfinite(quaternion.f81601x) || Float.isInfinite(quaternion.f81602y) || Float.isInfinite(quaternion.f81603z) || Float.isInfinite(quaternion.f81600w)) ? false : true;
    }

    public Quaternion add(Quaternion quaternion) {
        return new Quaternion(this.f81601x + quaternion.f81601x, this.f81602y + quaternion.f81602y, this.f81603z + quaternion.f81603z, this.f81600w + quaternion.f81600w);
    }

    public Quaternion addLocal(Quaternion quaternion) {
        this.f81601x += quaternion.f81601x;
        this.f81602y += quaternion.f81602y;
        this.f81603z += quaternion.f81603z;
        this.f81600w += quaternion.f81600w;
        return this;
    }

    public void apply(Matrix3f matrix3f) {
        float f10 = this.f81601x;
        float f11 = this.f81602y;
        float f12 = this.f81603z;
        float f13 = this.f81600w;
        fromRotationMatrix(matrix3f);
        float f14 = this.f81601x;
        float f15 = this.f81602y;
        float f16 = this.f81603z;
        float f17 = this.f81600w;
        this.f81601x = (((f10 * f17) + (f11 * f16)) - (f12 * f15)) + (f13 * f14);
        float f18 = -f10;
        this.f81602y = (f18 * f16) + (f11 * f17) + (f12 * f14) + (f13 * f15);
        this.f81603z = ((f10 * f15) - (f11 * f14)) + (f12 * f17) + (f13 * f16);
        this.f81600w = (((f18 * f14) - (f11 * f15)) - (f12 * f16)) + (f13 * f17);
    }

    public float dot(Quaternion quaternion) {
        return (this.f81600w * quaternion.f81600w) + (this.f81601x * quaternion.f81601x) + (this.f81602y * quaternion.f81602y) + (this.f81603z * quaternion.f81603z);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Quaternion)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Quaternion quaternion = (Quaternion) obj;
        return Float.compare(this.f81601x, quaternion.f81601x) == 0 && Float.compare(this.f81602y, quaternion.f81602y) == 0 && Float.compare(this.f81603z, quaternion.f81603z) == 0 && Float.compare(this.f81600w, quaternion.f81600w) == 0;
    }

    public Quaternion fromAngleAxis(float f10, Vector3f vector3f) {
        fromAngleNormalAxis(f10, vector3f.normalize());
        return this;
    }

    public Quaternion fromAngleNormalAxis(float f10, Vector3f vector3f) {
        if (vector3f.f81611x == 0.0f && vector3f.f81612y == 0.0f && vector3f.f81613z == 0.0f) {
            loadIdentity();
        } else {
            float f11 = f10 * 0.5f;
            float sin = FastMath.sin(f11);
            this.f81600w = FastMath.cos(f11);
            this.f81601x = vector3f.f81611x * sin;
            this.f81602y = vector3f.f81612y * sin;
            this.f81603z = sin * vector3f.f81613z;
        }
        return this;
    }

    public Quaternion fromAngles(float[] fArr) {
        if (fArr.length == 3) {
            return fromAngles(fArr[0], fArr[1], fArr[2]);
        }
        throw new IllegalArgumentException("Angles array must have three elements");
    }

    public Quaternion fromAxes(Vector3f[] vector3fArr) {
        if (vector3fArr.length == 3) {
            return fromAxes(vector3fArr[0], vector3fArr[1], vector3fArr[2]);
        }
        throw new IllegalArgumentException("Axis array must have three elements");
    }

    public Quaternion fromRotationMatrix(Matrix3f matrix3f) {
        return fromRotationMatrix(matrix3f.m00, matrix3f.m01, matrix3f.m02, matrix3f.m10, matrix3f.m11, matrix3f.m12, matrix3f.m20, matrix3f.m21, matrix3f.m22);
    }

    public Vector3f getRotationColumn(int i10) {
        return getRotationColumn(i10, null);
    }

    public float getW() {
        return this.f81600w;
    }

    public float getX() {
        return this.f81601x;
    }

    public float getY() {
        return this.f81602y;
    }

    public float getZ() {
        return this.f81603z;
    }

    public int hashCode() {
        return ((((((1369 + Float.floatToIntBits(this.f81601x)) * 37) + Float.floatToIntBits(this.f81602y)) * 37) + Float.floatToIntBits(this.f81603z)) * 37) + Float.floatToIntBits(this.f81600w);
    }

    public Quaternion inverse() {
        float norm = norm();
        if (norm <= 0.0d) {
            return null;
        }
        float f10 = 1.0f / norm;
        return new Quaternion((-this.f81601x) * f10, (-this.f81602y) * f10, (-this.f81603z) * f10, this.f81600w * f10);
    }

    public Quaternion inverseLocal() {
        float norm = norm();
        if (norm > 0.0d) {
            float f10 = 1.0f / norm;
            float f11 = -f10;
            this.f81601x *= f11;
            this.f81602y *= f11;
            this.f81603z *= f11;
            this.f81600w *= f10;
        }
        return this;
    }

    public boolean isIdentity() {
        return this.f81601x == 0.0f && this.f81602y == 0.0f && this.f81603z == 0.0f && this.f81600w == 1.0f;
    }

    public boolean isSimilar(Quaternion quaternion, float f10) {
        return quaternion != null && Float.compare(Math.abs(quaternion.f81601x - this.f81601x), f10) <= 0 && Float.compare(Math.abs(quaternion.f81602y - this.f81602y), f10) <= 0 && Float.compare(Math.abs(quaternion.f81603z - this.f81603z), f10) <= 0 && Float.compare(Math.abs(quaternion.f81600w - this.f81600w), f10) <= 0;
    }

    public void loadIdentity() {
        this.f81603z = 0.0f;
        this.f81602y = 0.0f;
        this.f81601x = 0.0f;
        this.f81600w = 1.0f;
    }

    public Quaternion lookAt(Vector3f vector3f, Vector3f vector3f2) {
        TempVars tempVars = TempVars.get();
        tempVars.vect3.set(vector3f).normalizeLocal();
        tempVars.vect1.set(vector3f2).crossLocal(vector3f).normalizeLocal();
        tempVars.vect2.set(vector3f).crossLocal(tempVars.vect1).normalizeLocal();
        fromAxes(tempVars.vect1, tempVars.vect2, tempVars.vect3);
        tempVars.release();
        return this;
    }

    public Quaternion mult(Quaternion quaternion) {
        return mult(quaternion, (Quaternion) null);
    }

    public Vector3f multLocal(Vector3f vector3f) {
        float f10 = this.f81600w;
        float f11 = vector3f.f81611x;
        float f12 = this.f81602y;
        float f13 = vector3f.f81613z;
        float f14 = this.f81603z;
        float f15 = vector3f.f81612y;
        float f16 = this.f81601x;
        vector3f.f81613z = (((((((((f16 * 2.0f) * f14) * f11) + (((f12 * 2.0f) * f14) * f15)) + ((f14 * f14) * f13)) - (((f10 * 2.0f) * f12) * f11)) - ((f12 * f12) * f13)) + (((2.0f * f10) * f16) * f15)) - ((f16 * f16) * f13)) + (f10 * f10 * f13);
        vector3f.f81611x = ((((((((f10 * f10) * f11) + (((f12 * 2.0f) * f10) * f13)) - (((f14 * 2.0f) * f10) * f15)) + ((f16 * f16) * f11)) + (((f12 * 2.0f) * f16) * f15)) + (((f14 * 2.0f) * f16) * f13)) - ((f14 * f14) * f11)) - ((f12 * f12) * f11);
        vector3f.f81612y = (((((((((f16 * 2.0f) * f12) * f11) + ((f12 * f12) * f15)) + (((f14 * 2.0f) * f12) * f13)) + (((f10 * 2.0f) * f14) * f11)) - ((f14 * f14) * f15)) + ((f10 * f10) * f15)) - (((f16 * 2.0f) * f10) * f13)) - ((f16 * f16) * f15);
        return vector3f;
    }

    @Deprecated
    public void negate() {
        negateLocal();
    }

    public Quaternion negateLocal() {
        this.f81601x = -this.f81601x;
        this.f81602y = -this.f81602y;
        this.f81603z = -this.f81603z;
        this.f81600w = -this.f81600w;
        return this;
    }

    public void nlerp(Quaternion quaternion, float f10) {
        float f11 = 1.0f - f10;
        if (dot(quaternion) < 0.0f) {
            this.f81601x = (this.f81601x * f11) - (quaternion.f81601x * f10);
            this.f81602y = (this.f81602y * f11) - (quaternion.f81602y * f10);
            this.f81603z = (this.f81603z * f11) - (quaternion.f81603z * f10);
            this.f81600w = (f11 * this.f81600w) - (f10 * quaternion.f81600w);
        } else {
            this.f81601x = (this.f81601x * f11) + (quaternion.f81601x * f10);
            this.f81602y = (this.f81602y * f11) + (quaternion.f81602y * f10);
            this.f81603z = (this.f81603z * f11) + (quaternion.f81603z * f10);
            this.f81600w = (f11 * this.f81600w) + (f10 * quaternion.f81600w);
        }
        normalizeLocal();
    }

    public float norm() {
        float f10 = this.f81600w;
        float f11 = this.f81601x;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f81602y;
        float f14 = f12 + (f13 * f13);
        float f15 = this.f81603z;
        return f14 + (f15 * f15);
    }

    public Quaternion normalizeLocal() {
        float invSqrt = FastMath.invSqrt(norm());
        this.f81601x *= invSqrt;
        this.f81602y *= invSqrt;
        this.f81603z *= invSqrt;
        this.f81600w *= invSqrt;
        return this;
    }

    public Quaternion opposite() {
        return opposite(null);
    }

    public Quaternion oppositeLocal() {
        return opposite(this);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f81601x = capsule.readFloat("x", 0.0f);
        this.f81602y = capsule.readFloat("y", 0.0f);
        this.f81603z = capsule.readFloat("z", 0.0f);
        this.f81600w = capsule.readFloat("w", 1.0f);
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        this.f81601x = objectInput.readFloat();
        this.f81602y = objectInput.readFloat();
        this.f81603z = objectInput.readFloat();
        this.f81600w = objectInput.readFloat();
    }

    public Quaternion set(float f10, float f11, float f12, float f13) {
        this.f81601x = f10;
        this.f81602y = f11;
        this.f81603z = f12;
        this.f81600w = f13;
        return this;
    }

    public Quaternion slerp(Quaternion quaternion, Quaternion quaternion2, float f10) {
        float f11 = quaternion.f81601x;
        float f12 = quaternion2.f81601x;
        if (f11 == f12 && quaternion.f81602y == quaternion2.f81602y && quaternion.f81603z == quaternion2.f81603z && quaternion.f81600w == quaternion2.f81600w) {
            set(quaternion);
            return this;
        }
        float f13 = quaternion.f81602y;
        float f14 = quaternion2.f81602y;
        float f15 = (f11 * f12) + (f13 * f14);
        float f16 = quaternion.f81603z;
        float f17 = quaternion2.f81603z;
        float f18 = f15 + (f16 * f17);
        float f19 = quaternion.f81600w;
        float f20 = quaternion2.f81600w;
        float f21 = f18 + (f19 * f20);
        if (f21 < 0.0f) {
            quaternion2.f81601x = -f12;
            quaternion2.f81602y = -f14;
            quaternion2.f81603z = -f17;
            quaternion2.f81600w = -f20;
            f21 = -f21;
        }
        float f22 = 1.0f - f10;
        if (1.0f - f21 > 0.1f) {
            float acos = FastMath.acos(f21);
            float sin = 1.0f / FastMath.sin(acos);
            f22 = FastMath.sin(f22 * acos) * sin;
            f10 = FastMath.sin(f10 * acos) * sin;
        }
        this.f81601x = (quaternion.f81601x * f22) + (quaternion2.f81601x * f10);
        this.f81602y = (quaternion.f81602y * f22) + (quaternion2.f81602y * f10);
        this.f81603z = (quaternion.f81603z * f22) + (quaternion2.f81603z * f10);
        this.f81600w = (f22 * quaternion.f81600w) + (f10 * quaternion2.f81600w);
        return this;
    }

    public Quaternion subtract(Quaternion quaternion) {
        return new Quaternion(this.f81601x - quaternion.f81601x, this.f81602y - quaternion.f81602y, this.f81603z - quaternion.f81603z, this.f81600w - quaternion.f81600w);
    }

    public Quaternion subtractLocal(Quaternion quaternion) {
        this.f81601x -= quaternion.f81601x;
        this.f81602y -= quaternion.f81602y;
        this.f81603z -= quaternion.f81603z;
        this.f81600w -= quaternion.f81600w;
        return this;
    }

    public float toAngleAxis(Vector3f vector3f) {
        float f10 = this.f81601x;
        float f11 = this.f81602y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f81603z;
        float f14 = f12 + (f13 * f13);
        float f15 = 0.0f;
        if (f14 != 0.0f) {
            f15 = FastMath.acos(this.f81600w) * 2.0f;
            if (vector3f != null) {
                float sqrt = 1.0f / FastMath.sqrt(f14);
                vector3f.f81611x = this.f81601x * sqrt;
                vector3f.f81612y = this.f81602y * sqrt;
                vector3f.f81613z = this.f81603z * sqrt;
            }
        } else if (vector3f != null) {
            vector3f.f81611x = 1.0f;
            vector3f.f81612y = 0.0f;
            vector3f.f81613z = 0.0f;
        }
        return f15;
    }

    public float[] toAngles(float[] fArr) {
        float[] fArr2 = fArr;
        if (fArr2 == null) {
            fArr2 = new float[3];
        } else if (fArr2.length != 3) {
            throw new IllegalArgumentException("Angles array must have three elements");
        }
        float f10 = this.f81600w;
        float f11 = f10 * f10;
        float f12 = this.f81601x;
        float f13 = f12 * f12;
        float f14 = this.f81602y;
        float f15 = f14 * f14;
        float f16 = this.f81603z;
        float f17 = f16 * f16;
        float f18 = f13 + f15 + f17 + f11;
        float f19 = (f12 * f14) + (f16 * f10);
        double d10 = f19;
        double d11 = f18;
        if (d10 > 0.499d * d11) {
            fArr2[1] = FastMath.atan2(f12, f10) * 2.0f;
            fArr2[2] = 1.5707964f;
            fArr2[0] = 0.0f;
        } else if (d10 < d11 * (-0.499d)) {
            fArr2[1] = FastMath.atan2(f12, f10) * (-2.0f);
            fArr2[2] = -1.5707964f;
            fArr2[0] = 0.0f;
        } else {
            fArr2[1] = FastMath.atan2(((f14 * 2.0f) * f10) - ((f12 * 2.0f) * f16), ((f13 - f15) - f17) + f11);
            fArr2[2] = FastMath.asin((f19 * 2.0f) / f18);
            fArr2[0] = FastMath.atan2(((this.f81601x * 2.0f) * this.f81600w) - ((this.f81602y * 2.0f) * this.f81603z), (((-f13) + f15) - f17) + f11);
        }
        return fArr2;
    }

    public void toAxes(Vector3f[] vector3fArr) {
        if (vector3fArr.length != 3) {
            throw new IllegalArgumentException("Axes array must have three elements");
        }
        Matrix3f rotationMatrix = toRotationMatrix();
        vector3fArr[0] = rotationMatrix.getColumn(0, vector3fArr[0]);
        vector3fArr[1] = rotationMatrix.getColumn(1, vector3fArr[1]);
        vector3fArr[2] = rotationMatrix.getColumn(2, vector3fArr[2]);
    }

    public Matrix3f toRotationMatrix() {
        return toRotationMatrix(new Matrix3f());
    }

    public String toString() {
        return "(" + this.f81601x + ", " + this.f81602y + ", " + this.f81603z + ", " + this.f81600w + ")";
    }

    public Matrix4f toTransformMatrix(Matrix4f matrix4f) {
        float norm = norm();
        float f10 = norm != 1.0f ? norm > 0.0f ? 2.0f / norm : 0.0f : 2.0f;
        float f11 = this.f81601x;
        float f12 = f11 * f10;
        float f13 = this.f81602y;
        float f14 = f13 * f10;
        float f15 = this.f81603z;
        float f16 = f10 * f15;
        float f17 = f11 * f12;
        float f18 = f11 * f14;
        float f19 = f11 * f16;
        float f20 = this.f81600w;
        float f21 = f12 * f20;
        float f22 = f13 * f14;
        float f23 = f13 * f16;
        float f24 = f14 * f20;
        float f25 = f15 * f16;
        float f26 = f20 * f16;
        matrix4f.m00 = 1.0f - (f22 + f25);
        matrix4f.m01 = f18 - f26;
        matrix4f.m02 = f19 + f24;
        matrix4f.m10 = f18 + f26;
        matrix4f.m11 = 1.0f - (f25 + f17);
        matrix4f.m12 = f23 - f21;
        matrix4f.m20 = f19 - f24;
        matrix4f.m21 = f23 + f21;
        matrix4f.m22 = 1.0f - (f17 + f22);
        return matrix4f;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f81601x, "x", 0.0f);
        capsule.write(this.f81602y, "y", 0.0f);
        capsule.write(this.f81603z, "z", 0.0f);
        capsule.write(this.f81600w, "w", 1.0f);
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeFloat(this.f81601x);
        objectOutput.writeFloat(this.f81602y);
        objectOutput.writeFloat(this.f81603z);
        objectOutput.writeFloat(this.f81600w);
    }

    public Quaternion m1285clone() {
        try {
            return (Quaternion) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Quaternion fromRotationMatrix(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        float f19 = (f10 * f10) + (f13 * f13) + (f16 * f16);
        if (f19 != 1.0f && f19 != 0.0f) {
            float sqrt = 1.0f / FastMath.sqrt(f19);
            f10 *= sqrt;
            f13 *= sqrt;
            f16 *= sqrt;
        }
        float f20 = (f11 * f11) + (f14 * f14) + (f17 * f17);
        if (f20 != 1.0f && f20 != 0.0f) {
            float sqrt2 = 1.0f / FastMath.sqrt(f20);
            f11 *= sqrt2;
            f14 *= sqrt2;
            f17 *= sqrt2;
        }
        float f21 = (f12 * f12) + (f15 * f15) + (f18 * f18);
        if (f21 != 1.0f && f21 != 0.0f) {
            float sqrt3 = 1.0f / FastMath.sqrt(f21);
            f12 *= sqrt3;
            f15 *= sqrt3;
            f18 *= sqrt3;
        }
        float f22 = f10 + f14 + f18;
        if (f22 >= 0.0f) {
            float sqrt4 = FastMath.sqrt(f22 + 1.0f);
            this.f81600w = sqrt4 * 0.5f;
            float f23 = 0.5f / sqrt4;
            this.f81601x = (f17 - f15) * f23;
            this.f81602y = (f12 - f16) * f23;
            this.f81603z = (f13 - f11) * f23;
        } else if (f10 > f14 && f10 > f18) {
            float sqrt5 = FastMath.sqrt(((f10 + 1.0f) - f14) - f18);
            this.f81601x = sqrt5 * 0.5f;
            float f24 = 0.5f / sqrt5;
            this.f81602y = (f13 + f11) * f24;
            this.f81603z = (f12 + f16) * f24;
            this.f81600w = (f17 - f15) * f24;
        } else if (f14 > f18) {
            float sqrt6 = FastMath.sqrt(((f14 + 1.0f) - f10) - f18);
            this.f81602y = sqrt6 * 0.5f;
            float f25 = 0.5f / sqrt6;
            this.f81601x = (f13 + f11) * f25;
            this.f81603z = (f17 + f15) * f25;
            this.f81600w = (f12 - f16) * f25;
        } else {
            float sqrt7 = FastMath.sqrt(((f18 + 1.0f) - f10) - f14);
            this.f81603z = sqrt7 * 0.5f;
            float f26 = 0.5f / sqrt7;
            this.f81601x = (f12 + f16) * f26;
            this.f81602y = (f17 + f15) * f26;
            this.f81600w = (f13 - f11) * f26;
        }
        return this;
    }

    public Vector3f getRotationColumn(int i10, Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        float norm = norm();
        if (norm != 1.0f) {
            norm = 1.0f / norm;
        }
        float f10 = this.f81601x;
        float f11 = f10 * f10 * norm;
        float f12 = this.f81602y;
        float f13 = f10 * f12 * norm;
        float f14 = this.f81603z;
        float f15 = f10 * f14 * norm;
        float f16 = this.f81600w;
        float f17 = f10 * f16 * norm;
        float f18 = f12 * f12 * norm;
        float f19 = f12 * f14 * norm;
        float f20 = f12 * f16 * norm;
        float f21 = f14 * f14 * norm;
        float f22 = f14 * f16 * norm;
        if (i10 == 0) {
            vector3f.f81611x = 1.0f - ((f18 + f21) * 2.0f);
            vector3f.f81612y = (f13 + f22) * 2.0f;
            vector3f.f81613z = (f15 - f20) * 2.0f;
        } else if (i10 == 1) {
            vector3f.f81611x = (f13 - f22) * 2.0f;
            vector3f.f81612y = 1.0f - ((f11 + f21) * 2.0f);
            vector3f.f81613z = (f19 + f17) * 2.0f;
        } else if (i10 == 2) {
            vector3f.f81611x = (f15 + f20) * 2.0f;
            vector3f.f81612y = (f19 - f17) * 2.0f;
            vector3f.f81613z = 1.0f - ((f11 + f18) * 2.0f);
        } else {
            logger.warning("Invalid column index.");
            throw new IllegalArgumentException("Invalid column index. " + i10);
        }
        return vector3f;
    }

    public Quaternion mult(Quaternion quaternion, Quaternion quaternion2) {
        if (quaternion2 == null) {
            quaternion2 = new Quaternion();
        }
        float f10 = quaternion.f81600w;
        float f11 = quaternion.f81601x;
        float f12 = quaternion.f81602y;
        float f13 = quaternion.f81603z;
        float f14 = this.f81601x * f10;
        float f15 = this.f81602y;
        float f16 = this.f81603z;
        float f17 = this.f81600w;
        quaternion2.f81601x = ((f14 + (f15 * f13)) - (f16 * f12)) + (f17 * f11);
        float f18 = this.f81601x;
        quaternion2.f81602y = ((-f18) * f13) + (f15 * f10) + (f16 * f11) + (f17 * f12);
        float f19 = this.f81602y;
        quaternion2.f81603z = ((f18 * f12) - (f19 * f11)) + (f16 * f10) + (f17 * f13);
        quaternion2.f81600w = ((((-f18) * f11) - (f19 * f12)) - (this.f81603z * f13)) + (f17 * f10);
        return quaternion2;
    }

    public Quaternion opposite(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        Vector3f vector3f = new Vector3f();
        quaternion.fromAngleAxis(toAngleAxis(vector3f) + 3.1415927f, vector3f);
        return quaternion;
    }

    public Matrix3f toRotationMatrix(Matrix3f matrix3f) {
        float norm = norm();
        float f10 = norm != 1.0f ? norm > 0.0f ? 2.0f / norm : 0.0f : 2.0f;
        float f11 = this.f81601x;
        float f12 = f11 * f10;
        float f13 = this.f81602y;
        float f14 = f13 * f10;
        float f15 = this.f81603z;
        float f16 = f10 * f15;
        float f17 = f11 * f12;
        float f18 = f11 * f14;
        float f19 = f11 * f16;
        float f20 = this.f81600w;
        float f21 = f12 * f20;
        float f22 = f13 * f14;
        float f23 = f13 * f16;
        float f24 = f14 * f20;
        float f25 = f15 * f16;
        float f26 = f20 * f16;
        matrix3f.m00 = 1.0f - (f22 + f25);
        matrix3f.m01 = f18 - f26;
        matrix3f.m02 = f19 + f24;
        matrix3f.m10 = f18 + f26;
        matrix3f.m11 = 1.0f - (f25 + f17);
        matrix3f.m12 = f23 - f21;
        matrix3f.m20 = f19 - f24;
        matrix3f.m21 = f23 + f21;
        matrix3f.m22 = 1.0f - (f17 + f22);
        return matrix3f;
    }

    public Quaternion fromAngles(float f10, float f11, float f12) {
        float f13 = f12 * 0.5f;
        float sin = FastMath.sin(f13);
        float cos = FastMath.cos(f13);
        float f14 = f11 * 0.5f;
        float sin2 = FastMath.sin(f14);
        float cos2 = FastMath.cos(f14);
        float f15 = f10 * 0.5f;
        float sin3 = FastMath.sin(f15);
        float cos3 = FastMath.cos(f15);
        float f16 = cos2 * cos;
        float f17 = sin2 * sin;
        float f18 = cos2 * sin;
        float f19 = sin2 * cos;
        this.f81600w = (f16 * cos3) - (f17 * sin3);
        this.f81601x = (f16 * sin3) + (f17 * cos3);
        this.f81602y = (f19 * cos3) + (f18 * sin3);
        this.f81603z = (f18 * cos3) - (f19 * sin3);
        normalizeLocal();
        return this;
    }

    public Quaternion fromAxes(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        return fromRotationMatrix(vector3f.f81611x, vector3f2.f81611x, vector3f3.f81611x, vector3f.f81612y, vector3f2.f81612y, vector3f3.f81612y, vector3f.f81613z, vector3f2.f81613z, vector3f3.f81613z);
    }

    public Quaternion multLocal(Quaternion quaternion) {
        float f10 = this.f81601x;
        float f11 = quaternion.f81600w;
        float f12 = this.f81602y;
        float f13 = quaternion.f81603z;
        float f14 = this.f81603z;
        float f15 = quaternion.f81602y;
        float f16 = this.f81600w;
        float f17 = quaternion.f81601x;
        this.f81600w = ((((-f10) * f17) - (f12 * f15)) - (f14 * f13)) + (f16 * f11);
        this.f81601x = (((f10 * f11) + (f12 * f13)) - (f14 * f15)) + (f16 * f17);
        this.f81602y = ((-f10) * f13) + (f12 * f11) + (f14 * f17) + (f16 * f15);
        this.f81603z = ((f10 * f15) - (f12 * f17)) + (f14 * f11) + (f16 * f13);
        return this;
    }

    public Quaternion set(Quaternion quaternion) {
        this.f81601x = quaternion.f81601x;
        this.f81602y = quaternion.f81602y;
        this.f81603z = quaternion.f81603z;
        this.f81600w = quaternion.f81600w;
        return this;
    }

    public Quaternion(float f10, float f11, float f12, float f13) {
        this.f81601x = f10;
        this.f81602y = f11;
        this.f81603z = f12;
        this.f81600w = f13;
    }

    public Vector3f mult(Vector3f vector3f) {
        return mult(vector3f, (Vector3f) null);
    }

    public Vector3f mult(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        float f10 = vector3f.f81611x;
        if (f10 == 0.0f && vector3f.f81612y == 0.0f && vector3f.f81613z == 0.0f) {
            vector3f2.set(0.0f, 0.0f, 0.0f);
        } else {
            float f11 = vector3f.f81612y;
            float f12 = vector3f.f81613z;
            float f13 = this.f81600w;
            float f14 = this.f81602y;
            float f15 = this.f81603z;
            float f16 = this.f81601x;
            vector3f2.f81611x = ((((((((f13 * f13) * f10) + (((f14 * 2.0f) * f13) * f12)) - (((f15 * 2.0f) * f13) * f11)) + ((f16 * f16) * f10)) + (((f14 * 2.0f) * f16) * f11)) + (((f15 * 2.0f) * f16) * f12)) - ((f15 * f15) * f10)) - ((f14 * f14) * f10);
            vector3f2.f81612y = (((((((((f16 * 2.0f) * f14) * f10) + ((f14 * f14) * f11)) + (((f15 * 2.0f) * f14) * f12)) + (((f13 * 2.0f) * f15) * f10)) - ((f15 * f15) * f11)) + ((f13 * f13) * f11)) - (((f16 * 2.0f) * f13) * f12)) - ((f16 * f16) * f11);
            vector3f2.f81613z = (((((((((f16 * 2.0f) * f15) * f10) + (((f14 * 2.0f) * f15) * f11)) + ((f15 * f15) * f12)) - (((f13 * 2.0f) * f14) * f10)) - ((f14 * f14) * f12)) + (((2.0f * f13) * f16) * f11)) - ((f16 * f16) * f12)) + (f13 * f13 * f12);
        }
        return vector3f2;
    }

    public Quaternion multLocal(float f10, float f11, float f12, float f13) {
        float f14 = this.f81601x;
        float f15 = this.f81602y;
        float f16 = this.f81603z;
        float f17 = this.f81600w;
        this.f81600w = ((((-f14) * f10) - (f15 * f11)) - (f16 * f12)) + (f17 * f13);
        this.f81601x = (((f14 * f13) + (f15 * f12)) - (f16 * f11)) + (f17 * f10);
        this.f81602y = ((-f14) * f12) + (f15 * f13) + (f16 * f10) + (f17 * f11);
        this.f81603z = ((f14 * f11) - (f15 * f10)) + (f16 * f13) + (f17 * f12);
        return this;
    }

    public Quaternion(float[] fArr) {
        fromAngles(fArr);
    }

    public Quaternion(Quaternion quaternion, Quaternion quaternion2, float f10) {
        slerp(quaternion, quaternion2, f10);
    }

    public Quaternion(Quaternion quaternion) {
        this.f81601x = quaternion.f81601x;
        this.f81602y = quaternion.f81602y;
        this.f81603z = quaternion.f81603z;
        this.f81600w = quaternion.f81600w;
    }

    public Quaternion multLocal(float f10) {
        this.f81600w *= f10;
        this.f81601x *= f10;
        this.f81602y *= f10;
        this.f81603z *= f10;
        return this;
    }

    public Quaternion mult(float f10) {
        return new Quaternion(this.f81601x * f10, this.f81602y * f10, this.f81603z * f10, f10 * this.f81600w);
    }

    public void slerp(Quaternion quaternion, float f10) {
        float f11 = this.f81601x;
        float f12 = quaternion.f81601x;
        if (f11 == f12 && this.f81602y == quaternion.f81602y && this.f81603z == quaternion.f81603z && this.f81600w == quaternion.f81600w) {
            return;
        }
        float f13 = this.f81602y;
        float f14 = quaternion.f81602y;
        float f15 = (f11 * f12) + (f13 * f14);
        float f16 = this.f81603z;
        float f17 = quaternion.f81603z;
        float f18 = f15 + (f16 * f17);
        float f19 = this.f81600w;
        float f20 = quaternion.f81600w;
        float f21 = f18 + (f19 * f20);
        if (f21 < 0.0f) {
            quaternion.f81601x = -f12;
            quaternion.f81602y = -f14;
            quaternion.f81603z = -f17;
            quaternion.f81600w = -f20;
            f21 = -f21;
        }
        float f22 = 1.0f - f10;
        if (1.0f - f21 > 0.1f) {
            float acos = FastMath.acos(f21);
            float sin = 1.0f / FastMath.sin(acos);
            f22 = FastMath.sin(f22 * acos) * sin;
            f10 = FastMath.sin(f10 * acos) * sin;
        }
        this.f81601x = (this.f81601x * f22) + (quaternion.f81601x * f10);
        this.f81602y = (this.f81602y * f22) + (quaternion.f81602y * f10);
        this.f81603z = (this.f81603z * f22) + (quaternion.f81603z * f10);
        this.f81600w = (f22 * this.f81600w) + (f10 * quaternion.f81600w);
    }

    public Matrix4f toRotationMatrix(Matrix4f matrix4f) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        matrix4f.toScaleVector(vector3f);
        matrix4f.setScale(1.0f, 1.0f, 1.0f);
        float norm = norm();
        float f10 = norm != 1.0f ? norm > 0.0f ? 2.0f / norm : 0.0f : 2.0f;
        float f11 = this.f81601x;
        float f12 = f11 * f10;
        float f13 = this.f81602y;
        float f14 = f13 * f10;
        float f15 = this.f81603z;
        float f16 = f10 * f15;
        float f17 = f11 * f12;
        float f18 = f11 * f14;
        float f19 = f11 * f16;
        float f20 = this.f81600w;
        float f21 = f12 * f20;
        float f22 = f13 * f14;
        float f23 = f13 * f16;
        float f24 = f14 * f20;
        float f25 = f15 * f16;
        float f26 = f20 * f16;
        matrix4f.m00 = 1.0f - (f22 + f25);
        matrix4f.m01 = f18 - f26;
        matrix4f.m02 = f19 + f24;
        matrix4f.m10 = f18 + f26;
        matrix4f.m11 = 1.0f - (f25 + f17);
        matrix4f.m12 = f23 - f21;
        matrix4f.m20 = f19 - f24;
        matrix4f.m21 = f23 + f21;
        matrix4f.m22 = 1.0f - (f17 + f22);
        matrix4f.setScale(vector3f);
        tempVars.release();
        return matrix4f;
    }
}
