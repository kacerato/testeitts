package com.jme3.math;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.io.Serializable;
import java.util.logging.Logger;

public final class Vector3f implements Savable, Cloneable, Serializable {
    static final long serialVersionUID = 1;

    public float f81611x;

    public float f81612y;

    public float f81613z;
    private static final Logger logger = Logger.getLogger(Vector3f.class.getName());
    public static final Vector3f ZERO = new Vector3f(0.0f, 0.0f, 0.0f);
    public static final Vector3f NAN = new Vector3f(Float.NaN, Float.NaN, Float.NaN);
    public static final Vector3f UNIT_X = new Vector3f(1.0f, 0.0f, 0.0f);
    public static final Vector3f UNIT_Y = new Vector3f(0.0f, 1.0f, 0.0f);
    public static final Vector3f UNIT_Z = new Vector3f(0.0f, 0.0f, 1.0f);
    public static final Vector3f UNIT_XYZ = new Vector3f(1.0f, 1.0f, 1.0f);
    public static final Vector3f POSITIVE_INFINITY = new Vector3f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
    public static final Vector3f NEGATIVE_INFINITY = new Vector3f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    public Vector3f() {
        this.f81613z = 0.0f;
        this.f81612y = 0.0f;
        this.f81611x = 0.0f;
    }

    public static void generateComplementBasis(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        if (FastMath.abs(vector3f3.f81611x) >= FastMath.abs(vector3f3.f81612y)) {
            float f10 = vector3f3.f81611x;
            float f11 = vector3f3.f81613z;
            float invSqrt = FastMath.invSqrt((f10 * f10) + (f11 * f11));
            vector3f.f81611x = (-vector3f3.f81613z) * invSqrt;
            vector3f.f81612y = 0.0f;
            float f12 = vector3f3.f81611x * invSqrt;
            vector3f.f81613z = f12;
            vector3f2.f81611x = vector3f3.f81612y * f12;
            float f13 = vector3f3.f81613z;
            float f14 = vector3f.f81611x;
            vector3f2.f81612y = (f13 * f14) - (vector3f3.f81611x * f12);
            vector3f2.f81613z = (-vector3f3.f81612y) * f14;
            return;
        }
        float f15 = vector3f3.f81612y;
        float f16 = vector3f3.f81613z;
        float invSqrt2 = FastMath.invSqrt((f15 * f15) + (f16 * f16));
        vector3f.f81611x = 0.0f;
        float f17 = vector3f3.f81613z * invSqrt2;
        vector3f.f81612y = f17;
        float f18 = vector3f3.f81612y;
        float f19 = (-f18) * invSqrt2;
        vector3f.f81613z = f19;
        vector3f2.f81611x = (f18 * f19) - (vector3f3.f81613z * f17);
        float f20 = vector3f3.f81611x;
        vector3f2.f81612y = (-f20) * f19;
        vector3f2.f81613z = f20 * vector3f.f81612y;
    }

    public static void generateOrthonormalBasis(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        vector3f3.normalizeLocal();
        generateComplementBasis(vector3f, vector3f2, vector3f3);
    }

    public static boolean isValidVector(Vector3f vector3f) {
        return (vector3f == null || Float.isNaN(vector3f.f81611x) || Float.isNaN(vector3f.f81612y) || Float.isNaN(vector3f.f81613z) || Float.isInfinite(vector3f.f81611x) || Float.isInfinite(vector3f.f81612y) || Float.isInfinite(vector3f.f81613z)) ? false : true;
    }

    public Vector3f add(Vector3f vector3f) {
        if (vector3f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        return new Vector3f(this.f81611x + vector3f.f81611x, this.f81612y + vector3f.f81612y, this.f81613z + vector3f.f81613z);
    }

    public Vector3f addLocal(Vector3f vector3f) {
        if (vector3f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        this.f81611x += vector3f.f81611x;
        this.f81612y += vector3f.f81612y;
        this.f81613z += vector3f.f81613z;
        return this;
    }

    public float angleBetween(Vector3f vector3f) {
        return FastMath.acos(dot(vector3f));
    }

    public Vector3f cross(Vector3f vector3f) {
        return cross(vector3f, null);
    }

    public Vector3f crossLocal(Vector3f vector3f) {
        return crossLocal(vector3f.f81611x, vector3f.f81612y, vector3f.f81613z);
    }

    public float distance(Vector3f vector3f) {
        double d10 = this.f81611x - vector3f.f81611x;
        double d11 = this.f81612y - vector3f.f81612y;
        double d12 = this.f81613z - vector3f.f81613z;
        return (float) Math.sqrt((d10 * d10) + (d11 * d11) + (d12 * d12));
    }

    public float distanceSquared(Vector3f vector3f) {
        double d10 = this.f81611x - vector3f.f81611x;
        double d11 = this.f81612y - vector3f.f81612y;
        double d12 = this.f81613z - vector3f.f81613z;
        return (float) ((d10 * d10) + (d11 * d11) + (d12 * d12));
    }

    public Vector3f divide(float f10) {
        float f11 = 1.0f / f10;
        return new Vector3f(this.f81611x * f11, this.f81612y * f11, this.f81613z * f11);
    }

    public Vector3f divideLocal(float f10) {
        float f11 = 1.0f / f10;
        this.f81611x *= f11;
        this.f81612y *= f11;
        this.f81613z *= f11;
        return this;
    }

    public float dot(Vector3f vector3f) {
        if (vector3f != null) {
            return (this.f81611x * vector3f.f81611x) + (this.f81612y * vector3f.f81612y) + (this.f81613z * vector3f.f81613z);
        }
        logger.warning("Provided vector is null, 0 returned.");
        return 0.0f;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Vector3f)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Vector3f vector3f = (Vector3f) obj;
        return Float.compare(this.f81611x, vector3f.f81611x) == 0 && Float.compare(this.f81612y, vector3f.f81612y) == 0 && Float.compare(this.f81613z, vector3f.f81613z) == 0;
    }

    public float get(int i10) {
        if (i10 == 0) {
            return this.f81611x;
        }
        if (i10 == 1) {
            return this.f81612y;
        }
        if (i10 == 2) {
            return this.f81613z;
        }
        throw new IllegalArgumentException("index must be either 0, 1 or 2");
    }

    public float getX() {
        return this.f81611x;
    }

    public float getY() {
        return this.f81612y;
    }

    public float getZ() {
        return this.f81613z;
    }

    public int hashCode() {
        int floatToIntBits = Float.floatToIntBits(this.f81611x) + 1406;
        int floatToIntBits2 = floatToIntBits + (floatToIntBits * 37) + Float.floatToIntBits(this.f81612y);
        return floatToIntBits2 + (floatToIntBits2 * 37) + Float.floatToIntBits(this.f81613z);
    }

    public Vector3f interpolateLocal(Vector3f vector3f, float f10) {
        float f11 = 1.0f - f10;
        this.f81611x = (this.f81611x * f11) + (vector3f.f81611x * f10);
        this.f81612y = (this.f81612y * f11) + (vector3f.f81612y * f10);
        this.f81613z = (f11 * this.f81613z) + (f10 * vector3f.f81613z);
        return this;
    }

    public boolean isSimilar(Vector3f vector3f, float f10) {
        return vector3f != null && Float.compare(Math.abs(vector3f.f81611x - this.f81611x), f10) <= 0 && Float.compare(Math.abs(vector3f.f81612y - this.f81612y), f10) <= 0 && Float.compare(Math.abs(vector3f.f81613z - this.f81613z), f10) <= 0;
    }

    public boolean isUnitVector() {
        float length = length();
        return 0.99f < length && length < 1.01f;
    }

    public float length() {
        double d10 = this.f81611x;
        double d11 = this.f81612y;
        double d12 = this.f81613z;
        return (float) Math.sqrt((d10 * d10) + (d11 * d11) + (d12 * d12));
    }

    public float lengthSquared() {
        float f10 = this.f81611x;
        float f11 = this.f81612y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f81613z;
        return f12 + (f13 * f13);
    }

    public Vector3f maxLocal(Vector3f vector3f) {
        float f10 = vector3f.f81611x;
        float f11 = this.f81611x;
        if (f10 <= f11) {
            f10 = f11;
        }
        this.f81611x = f10;
        float f12 = vector3f.f81612y;
        float f13 = this.f81612y;
        if (f12 <= f13) {
            f12 = f13;
        }
        this.f81612y = f12;
        float f14 = vector3f.f81613z;
        float f15 = this.f81613z;
        if (f14 <= f15) {
            f14 = f15;
        }
        this.f81613z = f14;
        return this;
    }

    public Vector3f minLocal(Vector3f vector3f) {
        float f10 = vector3f.f81611x;
        float f11 = this.f81611x;
        if (f10 >= f11) {
            f10 = f11;
        }
        this.f81611x = f10;
        float f12 = vector3f.f81612y;
        float f13 = this.f81612y;
        if (f12 >= f13) {
            f12 = f13;
        }
        this.f81612y = f12;
        float f14 = vector3f.f81613z;
        float f15 = this.f81613z;
        if (f14 >= f15) {
            f14 = f15;
        }
        this.f81613z = f14;
        return this;
    }

    public Vector3f mult(float f10) {
        return new Vector3f(this.f81611x * f10, this.f81612y * f10, this.f81613z * f10);
    }

    public Vector3f multLocal(float f10) {
        this.f81611x *= f10;
        this.f81612y *= f10;
        this.f81613z *= f10;
        return this;
    }

    public Vector3f negate() {
        return new Vector3f(-this.f81611x, -this.f81612y, -this.f81613z);
    }

    public Vector3f negateLocal() {
        this.f81611x = -this.f81611x;
        this.f81612y = -this.f81612y;
        this.f81613z = -this.f81613z;
        return this;
    }

    public Vector3f normalize() {
        float f10 = this.f81611x;
        float f11 = this.f81612y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f81613z;
        float f14 = f12 + (f13 * f13);
        if (f14 == 1.0f || f14 == 0.0f) {
            return m1292clone();
        }
        float sqrt = 1.0f / FastMath.sqrt(f14);
        return new Vector3f(this.f81611x * sqrt, this.f81612y * sqrt, this.f81613z * sqrt);
    }

    public Vector3f normalizeLocal() {
        float f10 = this.f81611x;
        float f11 = this.f81612y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f81613z;
        float f14 = f12 + (f13 * f13);
        if (f14 != 1.0f && f14 != 0.0f) {
            float sqrt = 1.0f / FastMath.sqrt(f14);
            this.f81611x *= sqrt;
            this.f81612y *= sqrt;
            this.f81613z *= sqrt;
        }
        return this;
    }

    public Vector3f project(Vector3f vector3f) {
        return new Vector3f(vector3f).multLocal(dot(vector3f) / vector3f.lengthSquared());
    }

    public Vector3f projectLocal(Vector3f vector3f) {
        return set(vector3f).multLocal(dot(vector3f) / vector3f.lengthSquared());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f81611x = capsule.readFloat("x", 0.0f);
        this.f81612y = capsule.readFloat("y", 0.0f);
        this.f81613z = capsule.readFloat("z", 0.0f);
    }

    public Vector3f scaleAdd(float f10, Vector3f vector3f) {
        this.f81611x = (this.f81611x * f10) + vector3f.f81611x;
        this.f81612y = (this.f81612y * f10) + vector3f.f81612y;
        this.f81613z = (this.f81613z * f10) + vector3f.f81613z;
        return this;
    }

    public Vector3f set(float f10, float f11, float f12) {
        this.f81611x = f10;
        this.f81612y = f11;
        this.f81613z = f12;
        return this;
    }

    public Vector3f setX(float f10) {
        this.f81611x = f10;
        return this;
    }

    public Vector3f setY(float f10) {
        this.f81612y = f10;
        return this;
    }

    public Vector3f setZ(float f10) {
        this.f81613z = f10;
        return this;
    }

    public Vector3f subtract(Vector3f vector3f) {
        return new Vector3f(this.f81611x - vector3f.f81611x, this.f81612y - vector3f.f81612y, this.f81613z - vector3f.f81613z);
    }

    public Vector3f subtractLocal(Vector3f vector3f) {
        if (vector3f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        this.f81611x -= vector3f.f81611x;
        this.f81612y -= vector3f.f81612y;
        this.f81613z -= vector3f.f81613z;
        return this;
    }

    public float[] toArray(float[] fArr) {
        if (fArr == null) {
            fArr = new float[3];
        }
        fArr[0] = this.f81611x;
        fArr[1] = this.f81612y;
        fArr[2] = this.f81613z;
        return fArr;
    }

    public String toString() {
        return "(" + this.f81611x + ", " + this.f81612y + ", " + this.f81613z + ")";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f81611x, "x", 0.0f);
        capsule.write(this.f81612y, "y", 0.0f);
        capsule.write(this.f81613z, "z", 0.0f);
    }

    public Vector3f zero() {
        this.f81613z = 0.0f;
        this.f81612y = 0.0f;
        this.f81611x = 0.0f;
        return this;
    }

    public Vector3f m1292clone() {
        try {
            return (Vector3f) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Vector3f cross(Vector3f vector3f, Vector3f vector3f2) {
        return cross(vector3f.f81611x, vector3f.f81612y, vector3f.f81613z, vector3f2);
    }

    public Vector3f crossLocal(float f10, float f11, float f12) {
        float f13 = this.f81612y;
        float f14 = this.f81613z;
        float f15 = (f13 * f12) - (f14 * f11);
        float f16 = this.f81611x;
        this.f81613z = (f16 * f11) - (f13 * f10);
        this.f81611x = f15;
        this.f81612y = (f14 * f10) - (f12 * f16);
        return this;
    }

    public Vector3f divide(Vector3f vector3f) {
        return new Vector3f(this.f81611x / vector3f.f81611x, this.f81612y / vector3f.f81612y, this.f81613z / vector3f.f81613z);
    }

    public Vector3f mult(float f10, Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.f81611x = this.f81611x * f10;
        vector3f.f81612y = this.f81612y * f10;
        vector3f.f81613z = this.f81613z * f10;
        return vector3f;
    }

    public Vector3f subtract(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        vector3f2.f81611x = this.f81611x - vector3f.f81611x;
        vector3f2.f81612y = this.f81612y - vector3f.f81612y;
        vector3f2.f81613z = this.f81613z - vector3f.f81613z;
        return vector3f2;
    }

    public Vector3f(float f10, float f11, float f12) {
        this.f81611x = f10;
        this.f81612y = f11;
        this.f81613z = f12;
    }

    public Vector3f add(Vector3f vector3f, Vector3f vector3f2) {
        vector3f2.f81611x = this.f81611x + vector3f.f81611x;
        vector3f2.f81612y = this.f81612y + vector3f.f81612y;
        vector3f2.f81613z = this.f81613z + vector3f.f81613z;
        return vector3f2;
    }

    public Vector3f cross(float f10, float f11, float f12, Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        float f13 = this.f81612y;
        float f14 = this.f81613z;
        float f15 = this.f81611x;
        vector3f.set((f13 * f12) - (f14 * f11), (f14 * f10) - (f12 * f15), (f15 * f11) - (f13 * f10));
        return vector3f;
    }

    public Vector3f divide(float f10, float f11, float f12) {
        return new Vector3f(this.f81611x / f10, this.f81612y / f11, this.f81613z / f12);
    }

    public Vector3f divideLocal(float f10, float f11, float f12) {
        this.f81611x /= f10;
        this.f81612y /= f11;
        this.f81613z /= f12;
        return this;
    }

    public Vector3f interpolateLocal(Vector3f vector3f, Vector3f vector3f2, float f10) {
        float f11 = 1.0f - f10;
        this.f81611x = (vector3f.f81611x * f11) + (vector3f2.f81611x * f10);
        this.f81612y = (vector3f.f81612y * f11) + (vector3f2.f81612y * f10);
        this.f81613z = (f11 * vector3f.f81613z) + (f10 * vector3f2.f81613z);
        return this;
    }

    public Vector3f multLocal(Vector3f vector3f) {
        if (vector3f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        this.f81611x *= vector3f.f81611x;
        this.f81612y *= vector3f.f81612y;
        this.f81613z *= vector3f.f81613z;
        return this;
    }

    public Vector3f scaleAdd(float f10, Vector3f vector3f, Vector3f vector3f2) {
        this.f81611x = (vector3f.f81611x * f10) + vector3f2.f81611x;
        this.f81612y = (vector3f.f81612y * f10) + vector3f2.f81612y;
        this.f81613z = (vector3f.f81613z * f10) + vector3f2.f81613z;
        return this;
    }

    public Vector3f set(Vector3f vector3f) {
        this.f81611x = vector3f.f81611x;
        this.f81612y = vector3f.f81612y;
        this.f81613z = vector3f.f81613z;
        return this;
    }

    public Vector3f addLocal(float f10, float f11, float f12) {
        this.f81611x += f10;
        this.f81612y += f11;
        this.f81613z += f12;
        return this;
    }

    public Vector3f subtractLocal(float f10, float f11, float f12) {
        this.f81611x -= f10;
        this.f81612y -= f11;
        this.f81613z -= f12;
        return this;
    }

    public Vector3f add(float f10, float f11, float f12) {
        return new Vector3f(this.f81611x + f10, this.f81612y + f11, this.f81613z + f12);
    }

    public Vector3f mult(Vector3f vector3f) {
        if (vector3f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        return mult(vector3f, (Vector3f) null);
    }

    public Vector3f subtract(float f10, float f11, float f12) {
        return new Vector3f(this.f81611x - f10, this.f81612y - f11, this.f81613z - f12);
    }

    public Vector3f(Vector3f vector3f) {
        set(vector3f);
    }

    public Vector3f divideLocal(Vector3f vector3f) {
        this.f81611x /= vector3f.f81611x;
        this.f81612y /= vector3f.f81612y;
        this.f81613z /= vector3f.f81613z;
        return this;
    }

    public void set(int i10, float f10) {
        if (i10 == 0) {
            this.f81611x = f10;
        } else if (i10 == 1) {
            this.f81612y = f10;
        } else {
            if (i10 == 2) {
                this.f81613z = f10;
                return;
            }
            throw new IllegalArgumentException("index must be either 0, 1 or 2");
        }
    }

    public Vector3f mult(float f10, float f11, float f12) {
        return new Vector3f(this.f81611x * f10, this.f81612y * f11, this.f81613z * f12);
    }

    public Vector3f multLocal(float f10, float f11, float f12) {
        this.f81611x *= f10;
        this.f81612y *= f11;
        this.f81613z *= f12;
        return this;
    }

    public Vector3f mult(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        return vector3f2.set(this.f81611x * vector3f.f81611x, this.f81612y * vector3f.f81612y, this.f81613z * vector3f.f81613z);
    }
}
