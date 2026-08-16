package com.jme3.math;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.io.Serializable;
import java.util.logging.Logger;

public final class Vector4f implements Savable, Cloneable, Serializable {
    static final long serialVersionUID = 1;

    public float f81614w;

    public float f81615x;

    public float f81616y;

    public float f81617z;
    private static final Logger logger = Logger.getLogger(Vector4f.class.getName());
    public static final Vector4f ZERO = new Vector4f(0.0f, 0.0f, 0.0f, 0.0f);
    public static final Vector4f NAN = new Vector4f(Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    public static final Vector4f UNIT_X = new Vector4f(1.0f, 0.0f, 0.0f, 0.0f);
    public static final Vector4f UNIT_Y = new Vector4f(0.0f, 1.0f, 0.0f, 0.0f);
    public static final Vector4f UNIT_Z = new Vector4f(0.0f, 0.0f, 1.0f, 0.0f);
    public static final Vector4f UNIT_W = new Vector4f(0.0f, 0.0f, 0.0f, 1.0f);
    public static final Vector4f UNIT_XYZW = new Vector4f(1.0f, 1.0f, 1.0f, 1.0f);
    public static final Vector4f POSITIVE_INFINITY = new Vector4f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
    public static final Vector4f NEGATIVE_INFINITY = new Vector4f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    public Vector4f() {
        this.f81614w = 0.0f;
        this.f81617z = 0.0f;
        this.f81616y = 0.0f;
        this.f81615x = 0.0f;
    }

    public static boolean isValidVector(Vector4f vector4f) {
        return (vector4f == null || Float.isNaN(vector4f.f81615x) || Float.isNaN(vector4f.f81616y) || Float.isNaN(vector4f.f81617z) || Float.isNaN(vector4f.f81614w) || Float.isInfinite(vector4f.f81615x) || Float.isInfinite(vector4f.f81616y) || Float.isInfinite(vector4f.f81617z) || Float.isInfinite(vector4f.f81614w)) ? false : true;
    }

    public Vector4f add(Vector4f vector4f) {
        if (vector4f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        return new Vector4f(this.f81615x + vector4f.f81615x, this.f81616y + vector4f.f81616y, this.f81617z + vector4f.f81617z, this.f81614w + vector4f.f81614w);
    }

    public Vector4f addLocal(Vector4f vector4f) {
        if (vector4f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        this.f81615x += vector4f.f81615x;
        this.f81616y += vector4f.f81616y;
        this.f81617z += vector4f.f81617z;
        this.f81614w += vector4f.f81614w;
        return this;
    }

    public float angleBetween(Vector4f vector4f) {
        return FastMath.acos(dot(vector4f));
    }

    public float distance(Vector4f vector4f) {
        return FastMath.sqrt(distanceSquared(vector4f));
    }

    public float distanceSquared(Vector4f vector4f) {
        double d10 = this.f81615x - vector4f.f81615x;
        double d11 = this.f81616y - vector4f.f81616y;
        double d12 = this.f81617z - vector4f.f81617z;
        double d13 = this.f81614w - vector4f.f81614w;
        return (float) ((d10 * d10) + (d11 * d11) + (d12 * d12) + (d13 * d13));
    }

    public Vector4f divide(float f10) {
        float f11 = 1.0f / f10;
        return new Vector4f(this.f81615x * f11, this.f81616y * f11, this.f81617z * f11, this.f81614w * f11);
    }

    public Vector4f divideLocal(float f10) {
        float f11 = 1.0f / f10;
        this.f81615x *= f11;
        this.f81616y *= f11;
        this.f81617z *= f11;
        this.f81614w *= f11;
        return this;
    }

    public float dot(Vector4f vector4f) {
        if (vector4f != null) {
            return (this.f81615x * vector4f.f81615x) + (this.f81616y * vector4f.f81616y) + (this.f81617z * vector4f.f81617z) + (this.f81614w * vector4f.f81614w);
        }
        logger.warning("Provided vector is null, 0 returned.");
        return 0.0f;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Vector4f)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Vector4f vector4f = (Vector4f) obj;
        return Float.compare(this.f81615x, vector4f.f81615x) == 0 && Float.compare(this.f81616y, vector4f.f81616y) == 0 && Float.compare(this.f81617z, vector4f.f81617z) == 0 && Float.compare(this.f81614w, vector4f.f81614w) == 0;
    }

    public float get(int i10) {
        if (i10 == 0) {
            return this.f81615x;
        }
        if (i10 == 1) {
            return this.f81616y;
        }
        if (i10 == 2) {
            return this.f81617z;
        }
        if (i10 == 3) {
            return this.f81614w;
        }
        throw new IllegalArgumentException("index must be either 0, 1, 2 or 3");
    }

    public float getW() {
        return this.f81614w;
    }

    public float getX() {
        return this.f81615x;
    }

    public float getY() {
        return this.f81616y;
    }

    public float getZ() {
        return this.f81617z;
    }

    public int hashCode() {
        int floatToIntBits = Float.floatToIntBits(this.f81615x) + 1406;
        int floatToIntBits2 = floatToIntBits + (floatToIntBits * 37) + Float.floatToIntBits(this.f81616y);
        int floatToIntBits3 = floatToIntBits2 + (floatToIntBits2 * 37) + Float.floatToIntBits(this.f81617z);
        return floatToIntBits3 + (floatToIntBits3 * 37) + Float.floatToIntBits(this.f81614w);
    }

    public Vector4f interpolateLocal(Vector4f vector4f, float f10) {
        float f11 = 1.0f - f10;
        this.f81615x = (this.f81615x * f11) + (vector4f.f81615x * f10);
        this.f81616y = (this.f81616y * f11) + (vector4f.f81616y * f10);
        this.f81617z = (this.f81617z * f11) + (vector4f.f81617z * f10);
        this.f81614w = (f11 * this.f81614w) + (f10 * vector4f.f81614w);
        return this;
    }

    public boolean isSimilar(Vector4f vector4f, float f10) {
        return vector4f != null && Float.compare(Math.abs(vector4f.f81615x - this.f81615x), f10) <= 0 && Float.compare(Math.abs(vector4f.f81616y - this.f81616y), f10) <= 0 && Float.compare(Math.abs(vector4f.f81617z - this.f81617z), f10) <= 0 && Float.compare(Math.abs(vector4f.f81614w - this.f81614w), f10) <= 0;
    }

    public boolean isUnitVector() {
        float length = length();
        return 0.99f < length && length < 1.01f;
    }

    public float length() {
        return FastMath.sqrt(lengthSquared());
    }

    public float lengthSquared() {
        float f10 = this.f81615x;
        float f11 = this.f81616y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f81617z;
        float f14 = f12 + (f13 * f13);
        float f15 = this.f81614w;
        return f14 + (f15 * f15);
    }

    public Vector4f maxLocal(Vector4f vector4f) {
        float f10 = vector4f.f81615x;
        float f11 = this.f81615x;
        if (f10 <= f11) {
            f10 = f11;
        }
        this.f81615x = f10;
        float f12 = vector4f.f81616y;
        float f13 = this.f81616y;
        if (f12 <= f13) {
            f12 = f13;
        }
        this.f81616y = f12;
        float f14 = vector4f.f81617z;
        float f15 = this.f81617z;
        if (f14 <= f15) {
            f14 = f15;
        }
        this.f81617z = f14;
        float f16 = vector4f.f81614w;
        float f17 = this.f81614w;
        if (f16 <= f17) {
            f16 = f17;
        }
        this.f81614w = f16;
        return this;
    }

    public Vector4f minLocal(Vector4f vector4f) {
        float f10 = vector4f.f81615x;
        float f11 = this.f81615x;
        if (f10 >= f11) {
            f10 = f11;
        }
        this.f81615x = f10;
        float f12 = vector4f.f81616y;
        float f13 = this.f81616y;
        if (f12 >= f13) {
            f12 = f13;
        }
        this.f81616y = f12;
        float f14 = vector4f.f81617z;
        float f15 = this.f81617z;
        if (f14 >= f15) {
            f14 = f15;
        }
        this.f81617z = f14;
        float f16 = vector4f.f81614w;
        float f17 = this.f81614w;
        if (f16 >= f17) {
            f16 = f17;
        }
        this.f81614w = f16;
        return this;
    }

    public Vector4f mult(float f10) {
        return new Vector4f(this.f81615x * f10, this.f81616y * f10, this.f81617z * f10, this.f81614w * f10);
    }

    public Vector4f multLocal(float f10) {
        this.f81615x *= f10;
        this.f81616y *= f10;
        this.f81617z *= f10;
        this.f81614w *= f10;
        return this;
    }

    public Vector4f negate() {
        return new Vector4f(-this.f81615x, -this.f81616y, -this.f81617z, -this.f81614w);
    }

    public Vector4f negateLocal() {
        this.f81615x = -this.f81615x;
        this.f81616y = -this.f81616y;
        this.f81617z = -this.f81617z;
        this.f81614w = -this.f81614w;
        return this;
    }

    public Vector4f normalize() {
        float f10 = this.f81615x;
        float f11 = this.f81616y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f81617z;
        float f14 = f12 + (f13 * f13);
        float f15 = this.f81614w;
        float f16 = f14 + (f15 * f15);
        if (f16 == 1.0f || f16 == 0.0f) {
            return m1293clone();
        }
        float sqrt = 1.0f / FastMath.sqrt(f16);
        return new Vector4f(this.f81615x * sqrt, this.f81616y * sqrt, this.f81617z * sqrt, this.f81614w * sqrt);
    }

    public Vector4f normalizeLocal() {
        float f10 = this.f81615x;
        float f11 = this.f81616y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f81617z;
        float f14 = f12 + (f13 * f13);
        float f15 = this.f81614w;
        float f16 = f14 + (f15 * f15);
        if (f16 != 1.0f && f16 != 0.0f) {
            float sqrt = 1.0f / FastMath.sqrt(f16);
            this.f81615x *= sqrt;
            this.f81616y *= sqrt;
            this.f81617z *= sqrt;
            this.f81614w *= sqrt;
        }
        return this;
    }

    public Vector4f project(Vector4f vector4f) {
        return new Vector4f(vector4f).multLocal(dot(vector4f) / vector4f.lengthSquared());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f81615x = capsule.readFloat("x", 0.0f);
        this.f81616y = capsule.readFloat("y", 0.0f);
        this.f81617z = capsule.readFloat("z", 0.0f);
        this.f81614w = capsule.readFloat("w", 0.0f);
    }

    public Vector4f scaleAdd(float f10, Vector4f vector4f) {
        this.f81615x = (this.f81615x * f10) + vector4f.f81615x;
        this.f81616y = (this.f81616y * f10) + vector4f.f81616y;
        this.f81617z = (this.f81617z * f10) + vector4f.f81617z;
        this.f81614w = (this.f81614w * f10) + vector4f.f81614w;
        return this;
    }

    public Vector4f set(float f10, float f11, float f12, float f13) {
        this.f81615x = f10;
        this.f81616y = f11;
        this.f81617z = f12;
        this.f81614w = f13;
        return this;
    }

    public Vector4f setW(float f10) {
        this.f81614w = f10;
        return this;
    }

    public Vector4f setX(float f10) {
        this.f81615x = f10;
        return this;
    }

    public Vector4f setY(float f10) {
        this.f81616y = f10;
        return this;
    }

    public Vector4f setZ(float f10) {
        this.f81617z = f10;
        return this;
    }

    public Vector4f subtract(Vector4f vector4f) {
        return new Vector4f(this.f81615x - vector4f.f81615x, this.f81616y - vector4f.f81616y, this.f81617z - vector4f.f81617z, this.f81614w - vector4f.f81614w);
    }

    public Vector4f subtractLocal(Vector4f vector4f) {
        if (vector4f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        this.f81615x -= vector4f.f81615x;
        this.f81616y -= vector4f.f81616y;
        this.f81617z -= vector4f.f81617z;
        this.f81614w -= vector4f.f81614w;
        return this;
    }

    public float[] toArray(float[] fArr) {
        if (fArr == null) {
            fArr = new float[4];
        }
        fArr[0] = this.f81615x;
        fArr[1] = this.f81616y;
        fArr[2] = this.f81617z;
        fArr[3] = this.f81614w;
        return fArr;
    }

    public String toString() {
        return "(" + this.f81615x + ", " + this.f81616y + ", " + this.f81617z + ", " + this.f81614w + ")";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f81615x, "x", 0.0f);
        capsule.write(this.f81616y, "y", 0.0f);
        capsule.write(this.f81617z, "z", 0.0f);
        capsule.write(this.f81614w, "w", 0.0f);
    }

    public Vector4f zero() {
        this.f81614w = 0.0f;
        this.f81617z = 0.0f;
        this.f81616y = 0.0f;
        this.f81615x = 0.0f;
        return this;
    }

    public Vector4f m1293clone() {
        try {
            return (Vector4f) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Vector4f divide(Vector4f vector4f) {
        return new Vector4f(this.f81615x / vector4f.f81615x, this.f81616y / vector4f.f81616y, this.f81617z / vector4f.f81617z, this.f81614w / vector4f.f81614w);
    }

    public Vector4f mult(float f10, Vector4f vector4f) {
        if (vector4f == null) {
            vector4f = new Vector4f();
        }
        vector4f.f81615x = this.f81615x * f10;
        vector4f.f81616y = this.f81616y * f10;
        vector4f.f81617z = this.f81617z * f10;
        vector4f.f81614w = this.f81614w * f10;
        return vector4f;
    }

    public Vector4f subtract(Vector4f vector4f, Vector4f vector4f2) {
        if (vector4f2 == null) {
            vector4f2 = new Vector4f();
        }
        vector4f2.f81615x = this.f81615x - vector4f.f81615x;
        vector4f2.f81616y = this.f81616y - vector4f.f81616y;
        vector4f2.f81617z = this.f81617z - vector4f.f81617z;
        vector4f2.f81614w = this.f81614w - vector4f.f81614w;
        return vector4f2;
    }

    public Vector4f(float f10, float f11, float f12, float f13) {
        this.f81615x = f10;
        this.f81616y = f11;
        this.f81617z = f12;
        this.f81614w = f13;
    }

    public Vector4f add(Vector4f vector4f, Vector4f vector4f2) {
        vector4f2.f81615x = this.f81615x + vector4f.f81615x;
        vector4f2.f81616y = this.f81616y + vector4f.f81616y;
        vector4f2.f81617z = this.f81617z + vector4f.f81617z;
        vector4f2.f81614w = this.f81614w + vector4f.f81614w;
        return vector4f2;
    }

    public Vector4f divide(float f10, float f11, float f12, float f13) {
        return new Vector4f(this.f81615x / f10, this.f81616y / f11, this.f81617z / f12, this.f81614w / f13);
    }

    public Vector4f divideLocal(Vector4f vector4f) {
        this.f81615x /= vector4f.f81615x;
        this.f81616y /= vector4f.f81616y;
        this.f81617z /= vector4f.f81617z;
        this.f81614w /= vector4f.f81614w;
        return this;
    }

    public Vector4f interpolateLocal(Vector4f vector4f, Vector4f vector4f2, float f10) {
        float f11 = 1.0f - f10;
        this.f81615x = (vector4f.f81615x * f11) + (vector4f2.f81615x * f10);
        this.f81616y = (vector4f.f81616y * f11) + (vector4f2.f81616y * f10);
        this.f81617z = (vector4f.f81617z * f11) + (vector4f2.f81617z * f10);
        this.f81614w = (f11 * vector4f.f81614w) + (f10 * vector4f2.f81614w);
        return this;
    }

    public Vector4f multLocal(Vector4f vector4f) {
        if (vector4f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        this.f81615x *= vector4f.f81615x;
        this.f81616y *= vector4f.f81616y;
        this.f81617z *= vector4f.f81617z;
        this.f81614w *= vector4f.f81614w;
        return this;
    }

    public Vector4f scaleAdd(float f10, Vector4f vector4f, Vector4f vector4f2) {
        this.f81615x = (vector4f.f81615x * f10) + vector4f2.f81615x;
        this.f81616y = (vector4f.f81616y * f10) + vector4f2.f81616y;
        this.f81617z = (vector4f.f81617z * f10) + vector4f2.f81617z;
        this.f81614w = (vector4f.f81614w * f10) + vector4f2.f81614w;
        return this;
    }

    public Vector4f set(Vector4f vector4f) {
        this.f81615x = vector4f.f81615x;
        this.f81616y = vector4f.f81616y;
        this.f81617z = vector4f.f81617z;
        this.f81614w = vector4f.f81614w;
        return this;
    }

    public Vector4f addLocal(float f10, float f11, float f12, float f13) {
        this.f81615x += f10;
        this.f81616y += f11;
        this.f81617z += f12;
        this.f81614w += f13;
        return this;
    }

    public Vector4f subtractLocal(float f10, float f11, float f12, float f13) {
        this.f81615x -= f10;
        this.f81616y -= f11;
        this.f81617z -= f12;
        this.f81614w -= f13;
        return this;
    }

    public Vector4f add(float f10, float f11, float f12, float f13) {
        return new Vector4f(this.f81615x + f10, this.f81616y + f11, this.f81617z + f12, this.f81614w + f13);
    }

    public Vector4f mult(float f10, float f11, float f12, float f13) {
        return new Vector4f(this.f81615x * f10, this.f81616y * f11, this.f81617z * f12, this.f81614w * f13);
    }

    public Vector4f subtract(float f10, float f11, float f12, float f13) {
        return new Vector4f(this.f81615x - f10, this.f81616y - f11, this.f81617z - f12, this.f81614w - f13);
    }

    public Vector4f(Vector4f vector4f) {
        set(vector4f);
    }

    public Vector4f mult(Vector4f vector4f) {
        if (vector4f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        return mult(vector4f, (Vector4f) null);
    }

    public Vector4f divideLocal(float f10, float f11, float f12, float f13) {
        this.f81615x /= f10;
        this.f81616y /= f11;
        this.f81617z /= f12;
        this.f81614w /= f13;
        return this;
    }

    public void set(int i10, float f10) {
        if (i10 == 0) {
            this.f81615x = f10;
            return;
        }
        if (i10 == 1) {
            this.f81616y = f10;
        } else if (i10 == 2) {
            this.f81617z = f10;
        } else {
            if (i10 == 3) {
                this.f81614w = f10;
                return;
            }
            throw new IllegalArgumentException("index must be either 0, 1, 2 or 3");
        }
    }

    public Vector4f mult(Vector4f vector4f, Vector4f vector4f2) {
        if (vector4f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        if (vector4f2 == null) {
            vector4f2 = new Vector4f();
        }
        return vector4f2.set(this.f81615x * vector4f.f81615x, this.f81616y * vector4f.f81616y, this.f81617z * vector4f.f81617z, this.f81614w * vector4f.f81614w);
    }

    public Vector4f multLocal(float f10, float f11, float f12, float f13) {
        this.f81615x *= f10;
        this.f81616y *= f11;
        this.f81617z *= f12;
        this.f81614w *= f13;
        return this;
    }
}
