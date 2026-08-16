package com.simsilica.mathd;

import com.jme3.math.Vector4f;
import java.io.Serializable;

public final class Vec4d implements Cloneable, Serializable {
    static final long serialVersionUID = 42;

    public double f83553w;

    public double f83554x;

    public double f83555y;

    public double f83556z;

    public Vec4d() {
    }

    public final Vec4d add(Vec4d vec4d) {
        return new Vec4d(this.f83554x + vec4d.f83554x, this.f83555y + vec4d.f83555y, this.f83556z + vec4d.f83556z, this.f83553w + vec4d.f83553w);
    }

    public final Vec4d addLocal(Vec4d vec4d) {
        this.f83554x += vec4d.f83554x;
        this.f83555y += vec4d.f83555y;
        this.f83556z += vec4d.f83556z;
        this.f83553w += vec4d.f83553w;
        return this;
    }

    public final Vec4d addScaledVectorLocal(Vec4d vec4d, double d10) {
        this.f83554x += vec4d.f83554x * d10;
        this.f83555y += vec4d.f83555y * d10;
        this.f83556z += vec4d.f83556z * d10;
        this.f83553w += vec4d.f83553w * d10;
        return this;
    }

    public final double distance(Vec4d vec4d) {
        return Math.sqrt(distanceSq(vec4d));
    }

    public final double distanceSq(Vec4d vec4d) {
        double d10 = vec4d.f83554x - this.f83554x;
        double d11 = vec4d.f83555y - this.f83555y;
        double d12 = vec4d.f83556z - this.f83556z;
        double d13 = vec4d.f83553w - this.f83553w;
        return (d10 * d10) + (d11 * d11) + (d12 * d12) + (d13 * d13);
    }

    public final Vec4d divide(double d10) {
        return new Vec4d(this.f83554x / d10, this.f83555y / d10, this.f83556z / d10, this.f83553w / d10);
    }

    public final Vec4d divideLocal(double d10) {
        this.f83554x /= d10;
        this.f83555y /= d10;
        this.f83556z /= d10;
        this.f83553w /= d10;
        return this;
    }

    public final double dot(Vec4d vec4d) {
        return (this.f83554x * vec4d.f83554x) + (this.f83555y * vec4d.f83555y) + (this.f83556z * vec4d.f83556z) + (this.f83553w * vec4d.f83553w);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != Vec4d.class) {
            return false;
        }
        Vec4d vec4d = (Vec4d) obj;
        return vec4d.f83554x == this.f83554x && vec4d.f83555y == this.f83555y && vec4d.f83556z == this.f83556z && vec4d.f83553w == this.f83553w;
    }

    public double get(int i10) {
        if (i10 == 0) {
            return this.f83554x;
        }
        if (i10 == 1) {
            return this.f83555y;
        }
        if (i10 == 2) {
            return this.f83556z;
        }
        if (i10 == 3) {
            return this.f83553w;
        }
        throw new IndexOutOfBoundsException("Index:" + i10);
    }

    public int hashCode() {
        long doubleToLongBits = ((Double.doubleToLongBits(this.f83554x) ^ (Double.doubleToLongBits(this.f83555y) * 31)) ^ (Double.doubleToLongBits(this.f83556z) * 31)) ^ (Double.doubleToLongBits(this.f83553w) * 31);
        return ((int) (doubleToLongBits >> 32)) ^ ((int) doubleToLongBits);
    }

    public final double length() {
        return Math.sqrt(lengthSq());
    }

    public final double lengthSq() {
        double d10 = this.f83554x;
        double d11 = this.f83555y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f83556z;
        double d14 = d12 + (d13 * d13);
        double d15 = this.f83553w;
        return d14 + (d15 * d15);
    }

    public final Vec4d maxLocal(Vec4d vec4d) {
        double d10 = this.f83554x;
        double d11 = vec4d.f83554x;
        if (d10 <= d11) {
            d10 = d11;
        }
        this.f83554x = d10;
        double d12 = this.f83555y;
        double d13 = vec4d.f83555y;
        if (d12 <= d13) {
            d12 = d13;
        }
        this.f83555y = d12;
        double d14 = this.f83556z;
        double d15 = vec4d.f83556z;
        if (d14 <= d15) {
            d14 = d15;
        }
        this.f83556z = d14;
        double d16 = this.f83553w;
        double d17 = vec4d.f83553w;
        if (d16 <= d17) {
            d16 = d17;
        }
        this.f83553w = d16;
        return this;
    }

    public final Vec4d minLocal(Vec4d vec4d) {
        double d10 = this.f83554x;
        double d11 = vec4d.f83554x;
        if (d10 >= d11) {
            d10 = d11;
        }
        this.f83554x = d10;
        double d12 = this.f83555y;
        double d13 = vec4d.f83555y;
        if (d12 >= d13) {
            d12 = d13;
        }
        this.f83555y = d12;
        double d14 = this.f83556z;
        double d15 = vec4d.f83556z;
        if (d14 >= d15) {
            d14 = d15;
        }
        this.f83556z = d14;
        double d16 = this.f83553w;
        double d17 = vec4d.f83553w;
        if (d16 >= d17) {
            d16 = d17;
        }
        this.f83553w = d16;
        return this;
    }

    public final Vec4d mult(double d10) {
        return new Vec4d(this.f83554x * d10, this.f83555y * d10, this.f83556z * d10, this.f83553w * d10);
    }

    public final Vec4d multLocal(double d10) {
        this.f83554x *= d10;
        this.f83555y *= d10;
        this.f83556z *= d10;
        this.f83553w *= d10;
        return this;
    }

    public final Vec4d normalize() {
        return mult(1.0d / length());
    }

    public final Vec4d normalizeLocal() {
        return multLocal(1.0d / length());
    }

    public final Vec4d set(double d10, double d11, double d12, double d13) {
        this.f83554x = d10;
        this.f83555y = d11;
        this.f83556z = d12;
        this.f83553w = d13;
        return this;
    }

    public final Vec4d subtract(Vec4d vec4d) {
        return new Vec4d(this.f83554x - vec4d.f83554x, this.f83555y - vec4d.f83555y, this.f83556z - vec4d.f83556z, this.f83553w - vec4d.f83553w);
    }

    public final Vec4d subtractLocal(Vec4d vec4d) {
        this.f83554x -= vec4d.f83554x;
        this.f83555y -= vec4d.f83555y;
        this.f83556z -= vec4d.f83556z;
        this.f83553w -= vec4d.f83553w;
        return this;
    }

    public String toString() {
        return "Vec3[" + this.f83554x + ", " + this.f83555y + ", " + this.f83556z + ", " + this.f83553w + "]";
    }

    public Vector4f toVector4f() {
        return new Vector4f((float) this.f83554x, (float) this.f83555y, (float) this.f83556z, (float) this.f83553w);
    }

    public final Vec4d zeroEpsilon(double d10) {
        double d11 = this.f83554x;
        double d12 = -d10;
        if (d11 > d12 && d11 < d10) {
            this.f83554x = 0.0d;
        }
        double d13 = this.f83555y;
        if (d13 > d12 && d13 < d10) {
            this.f83555y = 0.0d;
        }
        double d14 = this.f83556z;
        if (d14 > d12 && d14 < d10) {
            this.f83556z = 0.0d;
        }
        double d15 = this.f83553w;
        if (d15 > d12 && d15 < d10) {
            this.f83553w = 0.0d;
        }
        return this;
    }

    public Vec4d(double d10, double d11, double d12, double d13) {
        this.f83554x = d10;
        this.f83555y = d11;
        this.f83556z = d12;
        this.f83553w = d13;
    }

    public final Vec4d add(double d10, double d11, double d12, double d13) {
        return new Vec4d(this.f83554x + d10, this.f83555y + d11, this.f83556z + d12, this.f83553w + d13);
    }

    public final Vec4d m1325clone() {
        return new Vec4d(this.f83554x, this.f83555y, this.f83556z, this.f83553w);
    }

    public final Vec4d divide(Vec4d vec4d) {
        return new Vec4d(this.f83554x / vec4d.f83554x, this.f83555y / vec4d.f83555y, this.f83556z / vec4d.f83556z, this.f83553w / vec4d.f83553w);
    }

    public final double dot(double d10, double d11, double d12, double d13) {
        return (this.f83554x * d10) + (this.f83555y * d11) + (this.f83556z * d12) + (this.f83553w * d13);
    }

    public final Vec4d mult(Vec4d vec4d) {
        return new Vec4d(this.f83554x * vec4d.f83554x, this.f83555y * vec4d.f83555y, this.f83556z * vec4d.f83556z, this.f83553w * vec4d.f83553w);
    }

    public final Vec4d subtract(double d10, double d11, double d12, double d13) {
        return new Vec4d(this.f83554x - d10, this.f83555y - d11, this.f83556z - d12, this.f83553w - d13);
    }

    public final Vec4d addLocal(double d10, double d11, double d12, double d13) {
        this.f83554x += d10;
        this.f83555y += d11;
        this.f83556z += d12;
        this.f83553w += d13;
        return this;
    }

    public final Vec4d divideLocal(Vec4d vec4d) {
        this.f83554x /= vec4d.f83554x;
        this.f83555y /= vec4d.f83555y;
        this.f83556z /= vec4d.f83556z;
        this.f83553w /= vec4d.f83553w;
        return this;
    }

    public final Vec4d multLocal(Vec4d vec4d) {
        this.f83554x *= vec4d.f83554x;
        this.f83555y *= vec4d.f83555y;
        this.f83556z *= vec4d.f83556z;
        this.f83553w *= vec4d.f83553w;
        return this;
    }

    public final Vec4d set(Vec4d vec4d) {
        this.f83554x = vec4d.f83554x;
        this.f83555y = vec4d.f83555y;
        this.f83556z = vec4d.f83556z;
        this.f83553w = vec4d.f83553w;
        return this;
    }

    public final Vec4d subtractLocal(double d10, double d11, double d12, double d13) {
        this.f83554x -= d10;
        this.f83555y -= d11;
        this.f83556z -= d12;
        this.f83553w -= d13;
        return this;
    }

    public Vec4d(Vec4d vec4d) {
        this(vec4d.f83554x, vec4d.f83555y, vec4d.f83556z, vec4d.f83553w);
    }

    public Vec4d(Vector4f vector4f) {
        this(vector4f.f81615x, vector4f.f81616y, vector4f.f81617z, vector4f.f81614w);
    }

    public Vec4d set(int i10, double d10) {
        if (i10 == 0) {
            this.f83554x = d10;
        } else if (i10 == 1) {
            this.f83555y = d10;
        } else if (i10 == 2) {
            this.f83556z = d10;
        } else if (i10 == 3) {
            this.f83553w = d10;
        } else {
            throw new IndexOutOfBoundsException("Index:" + i10);
        }
        return this;
    }
}
