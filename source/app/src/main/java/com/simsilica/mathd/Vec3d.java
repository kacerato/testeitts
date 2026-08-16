package com.simsilica.mathd;

import com.jme3.math.Vector3f;
import java.io.Serializable;

public class Vec3d implements Cloneable, Serializable {
    public static final Vec3d UNIT_X = new Vec3d(1.0d, 0.0d, 0.0d);
    public static final Vec3d UNIT_Y = new Vec3d(0.0d, 1.0d, 0.0d);
    public static final Vec3d UNIT_Z = new Vec3d(0.0d, 0.0d, 1.0d);
    public static final Vec3d ZERO = new Vec3d();
    static final long serialVersionUID = 42;

    public double f83547x;

    public double f83548y;

    public double f83549z;

    public Vec3d() {
    }

    public final Vec3d add(Vec3d vec3d) {
        return new Vec3d(this.f83547x + vec3d.f83547x, this.f83548y + vec3d.f83548y, this.f83549z + vec3d.f83549z);
    }

    public final Vec3d addLocal(Vec3d vec3d) {
        this.f83547x += vec3d.f83547x;
        this.f83548y += vec3d.f83548y;
        this.f83549z += vec3d.f83549z;
        return this;
    }

    public final Vec3d addScaledVectorLocal(Vec3d vec3d, double d10) {
        this.f83547x += vec3d.f83547x * d10;
        this.f83548y += vec3d.f83548y * d10;
        this.f83549z += vec3d.f83549z * d10;
        return this;
    }

    public final Vec3i ceil() {
        return new Vec3i((int) Math.ceil(this.f83547x), (int) Math.ceil(this.f83548y), (int) Math.ceil(this.f83549z));
    }

    public final Vec3d cross(Vec3d vec3d) {
        double d10 = this.f83548y;
        double d11 = vec3d.f83549z;
        double d12 = this.f83549z;
        double d13 = vec3d.f83548y;
        double d14 = (d10 * d11) - (d12 * d13);
        double d15 = vec3d.f83547x;
        double d16 = this.f83547x;
        return new Vec3d(d14, (d12 * d15) - (d11 * d16), (d16 * d13) - (d10 * d15));
    }

    public final Vec3d crossLocal(Vec3d vec3d) {
        double d10 = this.f83548y;
        double d11 = vec3d.f83549z;
        double d12 = this.f83549z;
        double d13 = vec3d.f83548y;
        double d14 = (d10 * d11) - (d12 * d13);
        double d15 = vec3d.f83547x;
        double d16 = this.f83547x;
        this.f83547x = d14;
        this.f83548y = (d12 * d15) - (d11 * d16);
        this.f83549z = (d16 * d13) - (d10 * d15);
        return this;
    }

    public final double distance(Vec3d vec3d) {
        return Math.sqrt(distanceSq(vec3d));
    }

    public final double distanceSq(Vec3d vec3d) {
        double d10 = vec3d.f83547x - this.f83547x;
        double d11 = vec3d.f83548y - this.f83548y;
        double d12 = vec3d.f83549z - this.f83549z;
        return (d10 * d10) + (d11 * d11) + (d12 * d12);
    }

    public final Vec3d divide(double d10) {
        return new Vec3d(this.f83547x / d10, this.f83548y / d10, this.f83549z / d10);
    }

    public final Vec3d divideLocal(double d10) {
        this.f83547x /= d10;
        this.f83548y /= d10;
        this.f83549z /= d10;
        return this;
    }

    public final double dot(Vec3d vec3d) {
        return (this.f83547x * vec3d.f83547x) + (this.f83548y * vec3d.f83548y) + (this.f83549z * vec3d.f83549z);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Vec3d vec3d = (Vec3d) obj;
        return Double.compare(this.f83547x, vec3d.f83547x) == 0 && Double.compare(this.f83548y, vec3d.f83548y) == 0 && Double.compare(this.f83549z, vec3d.f83549z) == 0;
    }

    public final Vec3i floor() {
        return new Vec3i((int) Math.floor(this.f83547x), (int) Math.floor(this.f83548y), (int) Math.floor(this.f83549z));
    }

    public double get(int i10) {
        if (i10 == 0) {
            return this.f83547x;
        }
        if (i10 == 1) {
            return this.f83548y;
        }
        if (i10 == 2) {
            return this.f83549z;
        }
        throw new IndexOutOfBoundsException("Index:" + i10);
    }

    public int hashCode() {
        long doubleToLongBits = (Double.doubleToLongBits(this.f83547x) ^ (Double.doubleToLongBits(this.f83548y) * 31)) ^ (Double.doubleToLongBits(this.f83549z) * 31);
        return ((int) (doubleToLongBits >> 32)) ^ ((int) doubleToLongBits);
    }

    public final Vec3d interpolateLocal(Vec3d vec3d, Vec3d vec3d2, double d10) {
        double d11 = 1.0d - d10;
        this.f83547x = (vec3d.f83547x * d11) + (vec3d2.f83547x * d10);
        this.f83548y = (vec3d.f83548y * d11) + (vec3d2.f83548y * d10);
        this.f83549z = (d11 * vec3d.f83549z) + (d10 * vec3d2.f83549z);
        return this;
    }

    public boolean isFinite() {
        return (Double.isInfinite(this.f83547x) || Double.isNaN(this.f83547x) || Double.isInfinite(this.f83548y) || Double.isNaN(this.f83548y) || Double.isInfinite(this.f83549z) || Double.isNaN(this.f83549z)) ? false : true;
    }

    public boolean isNaN() {
        return Double.isNaN(this.f83547x) || Double.isNaN(this.f83548y) || Double.isNaN(this.f83549z);
    }

    public boolean isSimilar(Vec3d vec3d, double d10) {
        return vec3d != null && Double.compare(Math.abs(vec3d.f83547x - this.f83547x), d10) <= 0 && Double.compare(Math.abs(vec3d.f83548y - this.f83548y), d10) <= 0 && Double.compare(Math.abs(vec3d.f83549z - this.f83549z), d10) <= 0;
    }

    public final double length() {
        return Math.sqrt(lengthSq());
    }

    public final double lengthSq() {
        double d10 = this.f83547x;
        double d11 = this.f83548y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f83549z;
        return d12 + (d13 * d13);
    }

    public final Vec3d maxLocal(Vec3d vec3d) {
        double d10 = this.f83547x;
        double d11 = vec3d.f83547x;
        if (d10 <= d11) {
            d10 = d11;
        }
        this.f83547x = d10;
        double d12 = this.f83548y;
        double d13 = vec3d.f83548y;
        if (d12 <= d13) {
            d12 = d13;
        }
        this.f83548y = d12;
        double d14 = this.f83549z;
        double d15 = vec3d.f83549z;
        if (d14 <= d15) {
            d14 = d15;
        }
        this.f83549z = d14;
        return this;
    }

    public final Vec3d minLocal(Vec3d vec3d) {
        double d10 = this.f83547x;
        double d11 = vec3d.f83547x;
        if (d10 >= d11) {
            d10 = d11;
        }
        this.f83547x = d10;
        double d12 = this.f83548y;
        double d13 = vec3d.f83548y;
        if (d12 >= d13) {
            d12 = d13;
        }
        this.f83548y = d12;
        double d14 = this.f83549z;
        double d15 = vec3d.f83549z;
        if (d14 >= d15) {
            d14 = d15;
        }
        this.f83549z = d14;
        return this;
    }

    public final Vec3d mult(double d10) {
        return new Vec3d(this.f83547x * d10, this.f83548y * d10, this.f83549z * d10);
    }

    public final Vec3d multLocal(double d10) {
        this.f83547x *= d10;
        this.f83548y *= d10;
        this.f83549z *= d10;
        return this;
    }

    public final Vec3d normalize() {
        return mult(1.0d / length());
    }

    public final Vec3d normalizeLocal() {
        return multLocal(1.0d / length());
    }

    public final Vec3d set(double d10, double d11, double d12) {
        this.f83547x = d10;
        this.f83548y = d11;
        this.f83549z = d12;
        return this;
    }

    public final Vec3d subtract(Vec3d vec3d) {
        return new Vec3d(this.f83547x - vec3d.f83547x, this.f83548y - vec3d.f83548y, this.f83549z - vec3d.f83549z);
    }

    public final Vec3d subtractLocal(Vec3d vec3d) {
        this.f83547x -= vec3d.f83547x;
        this.f83548y -= vec3d.f83548y;
        this.f83549z -= vec3d.f83549z;
        return this;
    }

    public String toString() {
        return "Vec3d[" + this.f83547x + ", " + this.f83548y + ", " + this.f83549z + "]";
    }

    public final Vec3i toVec3i() {
        return new Vec3i((int) this.f83547x, (int) this.f83548y, (int) this.f83549z);
    }

    public Vector3f toVector3f() {
        return new Vector3f((float) this.f83547x, (float) this.f83548y, (float) this.f83549z);
    }

    public final Vec3d xzy() {
        return new Vec3d(this.f83547x, this.f83549z, this.f83548y);
    }

    public final Vec3d zeroEpsilon(double d10) {
        double d11 = this.f83547x;
        double d12 = -d10;
        if (d11 > d12 && d11 < d10) {
            this.f83547x = 0.0d;
        }
        double d13 = this.f83548y;
        if (d13 > d12 && d13 < d10) {
            this.f83548y = 0.0d;
        }
        double d14 = this.f83549z;
        if (d14 > d12 && d14 < d10) {
            this.f83549z = 0.0d;
        }
        return this;
    }

    public Vec3d(double d10, double d11, double d12) {
        this.f83547x = d10;
        this.f83548y = d11;
        this.f83549z = d12;
    }

    public final Vec3d add(Vec3i vec3i) {
        return new Vec3d(this.f83547x + vec3i.f83550x, this.f83548y + vec3i.f83551y, this.f83549z + vec3i.f83552z);
    }

    public final Vec3d m1323clone() {
        return new Vec3d(this.f83547x, this.f83548y, this.f83549z);
    }

    public final double distance(double d10, double d11, double d12) {
        return Math.sqrt(distanceSq(d10, d11, d12));
    }

    public final Vec3d divide(Vec3d vec3d) {
        return new Vec3d(this.f83547x / vec3d.f83547x, this.f83548y / vec3d.f83548y, this.f83549z / vec3d.f83549z);
    }

    public final double dot(Vec3i vec3i) {
        return (this.f83547x * vec3i.f83550x) + (this.f83548y * vec3i.f83551y) + (this.f83549z * vec3i.f83552z);
    }

    public final Vec3d mult(Vec3d vec3d) {
        return new Vec3d(this.f83547x * vec3d.f83547x, this.f83548y * vec3d.f83548y, this.f83549z * vec3d.f83549z);
    }

    public final Vec3d subtract(Vec3i vec3i) {
        return new Vec3d(this.f83547x - vec3i.f83550x, this.f83548y - vec3i.f83551y, this.f83549z - vec3i.f83552z);
    }

    public final Vec3d add(double d10, double d11, double d12) {
        return new Vec3d(this.f83547x + d10, this.f83548y + d11, this.f83549z + d12);
    }

    public final Vec3d divide(Vec3i vec3i) {
        return new Vec3d(this.f83547x / vec3i.f83550x, this.f83548y / vec3i.f83551y, this.f83549z / vec3i.f83552z);
    }

    public final double dot(double d10, double d11, double d12) {
        return (this.f83547x * d10) + (this.f83548y * d11) + (this.f83549z * d12);
    }

    public final Vec3d mult(Vec3i vec3i) {
        return new Vec3d(this.f83547x * vec3i.f83550x, this.f83548y * vec3i.f83551y, this.f83549z * vec3i.f83552z);
    }

    public final Vec3d subtract(double d10, double d11, double d12) {
        return new Vec3d(this.f83547x - d10, this.f83548y - d11, this.f83549z - d12);
    }

    public final Vec3d addLocal(Vec3i vec3i) {
        this.f83547x += vec3i.f83550x;
        this.f83548y += vec3i.f83551y;
        this.f83549z += vec3i.f83552z;
        return this;
    }

    public final Vec3d cross(double d10, double d11, double d12) {
        double d13 = this.f83548y;
        double d14 = this.f83549z;
        double d15 = (d13 * d12) - (d14 * d11);
        double d16 = this.f83547x;
        return new Vec3d(d15, (d14 * d10) - (d16 * d12), (d16 * d11) - (d13 * d10));
    }

    public final double distanceSq(Vec3i vec3i) {
        double d10 = vec3i.f83550x - this.f83547x;
        double d11 = vec3i.f83551y - this.f83548y;
        double d12 = vec3i.f83552z - this.f83549z;
        return (d10 * d10) + (d11 * d11) + (d12 * d12);
    }

    public final Vec3d divideLocal(Vec3d vec3d) {
        this.f83547x /= vec3d.f83547x;
        this.f83548y /= vec3d.f83548y;
        this.f83549z /= vec3d.f83549z;
        return this;
    }

    public final Vec3d multLocal(Vec3d vec3d) {
        this.f83547x *= vec3d.f83547x;
        this.f83548y *= vec3d.f83548y;
        this.f83549z *= vec3d.f83549z;
        return this;
    }

    public final Vec3d set(Vec3d vec3d) {
        this.f83547x = vec3d.f83547x;
        this.f83548y = vec3d.f83548y;
        this.f83549z = vec3d.f83549z;
        return this;
    }

    public final Vec3d subtractLocal(Vec3i vec3i) {
        this.f83547x -= vec3i.f83550x;
        this.f83548y -= vec3i.f83551y;
        this.f83549z -= vec3i.f83552z;
        return this;
    }

    public Vec3d(Vec3d vec3d) {
        this(vec3d.f83547x, vec3d.f83548y, vec3d.f83549z);
    }

    public Vec3d(Vec3i vec3i) {
        this(vec3i.f83550x, vec3i.f83551y, vec3i.f83552z);
    }

    public final Vec3d addLocal(double d10, double d11, double d12) {
        this.f83547x += d10;
        this.f83548y += d11;
        this.f83549z += d12;
        return this;
    }

    public final double distanceSq(double d10, double d11, double d12) {
        double d13 = d10 - this.f83547x;
        double d14 = d11 - this.f83548y;
        double d15 = d12 - this.f83549z;
        return (d13 * d13) + (d14 * d14) + (d15 * d15);
    }

    public final Vec3d multLocal(Vec3i vec3i) {
        this.f83547x *= vec3i.f83550x;
        this.f83548y *= vec3i.f83551y;
        this.f83549z *= vec3i.f83552z;
        return this;
    }

    public final Vec3d set(Vec3i vec3i) {
        this.f83547x = vec3i.f83550x;
        this.f83548y = vec3i.f83551y;
        this.f83549z = vec3i.f83552z;
        return this;
    }

    public final Vec3d subtractLocal(double d10, double d11, double d12) {
        this.f83547x -= d10;
        this.f83548y -= d11;
        this.f83549z -= d12;
        return this;
    }

    public Vec3d(Vector3f vector3f) {
        this(vector3f.f81611x, vector3f.f81612y, vector3f.f81613z);
    }

    public final Vec3d set(Vector3f vector3f) {
        this.f83547x = vector3f.f81611x;
        this.f83548y = vector3f.f81612y;
        this.f83549z = vector3f.f81613z;
        return this;
    }

    public Vec3d set(int i10, double d10) {
        if (i10 == 0) {
            this.f83547x = d10;
        } else if (i10 == 1) {
            this.f83548y = d10;
        } else if (i10 == 2) {
            this.f83549z = d10;
        } else {
            throw new IndexOutOfBoundsException("Index:" + i10);
        }
        return this;
    }
}
