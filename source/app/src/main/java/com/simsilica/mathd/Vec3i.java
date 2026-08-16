package com.simsilica.mathd;

import com.jme3.math.Vector3f;
import java.io.Serializable;

public class Vec3i implements Cloneable, Serializable {
    static final long serialVersionUID = 42;

    public int f83550x;

    public int f83551y;

    public int f83552z;

    public Vec3i() {
    }

    public final Vec3i add(int i10, int i11, int i12) {
        return new Vec3i(this.f83550x + i10, this.f83551y + i11, this.f83552z + i12);
    }

    public final Vec3i addLocal(Vec3i vec3i) {
        this.f83550x += vec3i.f83550x;
        this.f83551y += vec3i.f83551y;
        this.f83552z += vec3i.f83552z;
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Vec3i vec3i = (Vec3i) obj;
        return this.f83550x == vec3i.f83550x && this.f83551y == vec3i.f83551y && this.f83552z == vec3i.f83552z;
    }

    public final int get(int i10) {
        if (i10 == 0) {
            return this.f83550x;
        }
        if (i10 == 1) {
            return this.f83551y;
        }
        if (i10 == 2) {
            return this.f83552z;
        }
        throw new IndexOutOfBoundsException(String.valueOf(i10));
    }

    public final double getDistance(Vec3i vec3i) {
        return Math.sqrt(getDistanceSq(vec3i));
    }

    public final int getDistanceSq(Vec3i vec3i) {
        int i10 = vec3i.f83550x - this.f83550x;
        int i11 = vec3i.f83551y - this.f83551y;
        int i12 = vec3i.f83552z - this.f83552z;
        return (i10 * i10) + (i11 * i11) + (i12 * i12);
    }

    public int hashCode() {
        int i10 = this.f83550x + 1406;
        int i11 = i10 + (i10 * 37) + this.f83551y;
        return i11 + (i11 * 37) + this.f83552z;
    }

    public final double length() {
        return Math.sqrt(lengthSq());
    }

    public final double lengthSq() {
        int i10 = this.f83550x;
        int i11 = this.f83551y;
        int i12 = (i10 * i10) + (i11 * i11);
        int i13 = this.f83552z;
        return i12 + (i13 * i13);
    }

    public Vec3i maxLocal(int i10, int i11, int i12) {
        this.f83550x = Math.max(this.f83550x, i10);
        this.f83551y = Math.max(this.f83551y, i11);
        this.f83552z = Math.max(this.f83552z, i12);
        return this;
    }

    public Vec3i minLocal(int i10, int i11, int i12) {
        this.f83550x = Math.min(this.f83550x, i10);
        this.f83551y = Math.min(this.f83551y, i11);
        this.f83552z = Math.min(this.f83552z, i12);
        return this;
    }

    public final Vec3i mult(int i10) {
        return new Vec3i(this.f83550x * i10, this.f83551y * i10, this.f83552z * i10);
    }

    public final Vec3i multLocal(int i10) {
        this.f83550x *= i10;
        this.f83551y *= i10;
        this.f83552z *= i10;
        return this;
    }

    public final Vec3i set(int i10, int i11, int i12) {
        this.f83550x = i10;
        this.f83551y = i11;
        this.f83552z = i12;
        return this;
    }

    public final Vec3i subtract(Vec3i vec3i) {
        return new Vec3i(this.f83550x - vec3i.f83550x, this.f83551y - vec3i.f83551y, this.f83552z - vec3i.f83552z);
    }

    public final Vec3i subtractLocal(Vec3i vec3i) {
        this.f83550x -= vec3i.f83550x;
        this.f83551y -= vec3i.f83551y;
        this.f83552z -= vec3i.f83552z;
        return this;
    }

    public String toDisplay() {
        return "[" + this.f83550x + ", " + this.f83551y + ", " + this.f83552z + "]";
    }

    public String toString() {
        return "Vec3i[" + this.f83550x + ", " + this.f83551y + ", " + this.f83552z + "]";
    }

    public Vec3d toVec3d() {
        return new Vec3d(this.f83550x, this.f83551y, this.f83552z);
    }

    public Vector3f toVector3f() {
        return new Vector3f(this.f83550x, this.f83551y, this.f83552z);
    }

    public Vec3i(int i10, int i11, int i12) {
        this.f83550x = i10;
        this.f83551y = i11;
        this.f83552z = i12;
    }

    public final Vec3i add(Vec3i vec3i) {
        return new Vec3i(this.f83550x + vec3i.f83550x, this.f83551y + vec3i.f83551y, this.f83552z + vec3i.f83552z);
    }

    public Vec3i m1324clone() {
        try {
            return (Vec3i) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException("Error cloning", e10);
        }
    }

    public final Vec3i subtract(int i10, int i11, int i12) {
        return new Vec3i(this.f83550x - i10, this.f83551y - i11, this.f83552z - i12);
    }

    public final Vec3i addLocal(int i10, int i11, int i12) {
        this.f83550x += i10;
        this.f83551y += i11;
        this.f83552z += i12;
        return this;
    }

    public Vec3i maxLocal(Vec3i vec3i) {
        this.f83550x = Math.max(vec3i.f83550x, this.f83550x);
        this.f83551y = Math.max(vec3i.f83551y, this.f83551y);
        this.f83552z = Math.max(vec3i.f83552z, this.f83552z);
        return this;
    }

    public Vec3i minLocal(Vec3i vec3i) {
        this.f83550x = Math.min(vec3i.f83550x, this.f83550x);
        this.f83551y = Math.min(vec3i.f83551y, this.f83551y);
        this.f83552z = Math.min(vec3i.f83552z, this.f83552z);
        return this;
    }

    public final Vec3i set(Vec3i vec3i) {
        this.f83550x = vec3i.f83550x;
        this.f83551y = vec3i.f83551y;
        this.f83552z = vec3i.f83552z;
        return this;
    }

    public final Vec3i subtractLocal(int i10, int i11, int i12) {
        this.f83550x -= i10;
        this.f83551y -= i11;
        this.f83552z -= i12;
        return this;
    }

    public Vec3i(Vector3f vector3f) {
        this((int) vector3f.f81611x, (int) vector3f.f81612y, (int) vector3f.f81613z);
    }

    public Vec3i(Vec3i vec3i) {
        this(vec3i.f83550x, vec3i.f83551y, vec3i.f83552z);
    }

    public final Vec3i set(int i10, int i11) {
        if (i10 == 0) {
            this.f83550x = i11;
        } else if (i10 == 1) {
            this.f83551y = i11;
        } else if (i10 == 2) {
            this.f83552z = i11;
        } else {
            throw new IndexOutOfBoundsException(String.valueOf(i10));
        }
        return this;
    }
}
