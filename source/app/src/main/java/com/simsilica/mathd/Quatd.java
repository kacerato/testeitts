package com.simsilica.mathd;

import com.jme3.math.Quaternion;
import java.io.Serializable;

public final class Quatd implements Cloneable, Serializable {
    static final long serialVersionUID = 42;

    public double f83543w;

    public double f83544x;

    public double f83545y;

    public double f83546z;

    public Quatd() {
        this(0.0d, 0.0d, 0.0d, 1.0d);
    }

    public final Quatd add(Quatd quatd) {
        return new Quatd(this.f83544x + quatd.f83544x, this.f83545y + quatd.f83545y, this.f83546z + quatd.f83546z, this.f83543w + quatd.f83543w);
    }

    public final Quatd addLocal(Quatd quatd) {
        this.f83544x += quatd.f83544x;
        this.f83545y += quatd.f83545y;
        this.f83546z += quatd.f83546z;
        this.f83543w += quatd.f83543w;
        return this;
    }

    public final Quatd addScaledVectorLocal(Vec3d vec3d, double d10) {
        Quatd quatd = new Quatd(vec3d.f83547x * d10, vec3d.f83548y * d10, vec3d.f83549z * d10, 0.0d);
        quatd.multLocal(this);
        this.f83544x += quatd.f83544x * 0.5d;
        this.f83545y += quatd.f83545y * 0.5d;
        this.f83546z += quatd.f83546z * 0.5d;
        this.f83543w += quatd.f83543w * 0.5d;
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != Quatd.class) {
            return false;
        }
        Quatd quatd = (Quatd) obj;
        return Double.compare(this.f83544x, quatd.f83544x) == 0 && Double.compare(this.f83545y, quatd.f83545y) == 0 && Double.compare(this.f83546z, quatd.f83546z) == 0 && Double.compare(this.f83543w, quatd.f83543w) == 0;
    }

    public Quatd fromAngles(double[] dArr) {
        return fromAngles(dArr[0], dArr[1], dArr[2]);
    }

    public double get(int i10) {
        if (i10 == 0) {
            return this.f83544x;
        }
        if (i10 == 1) {
            return this.f83545y;
        }
        if (i10 == 2) {
            return this.f83546z;
        }
        if (i10 == 3) {
            return this.f83543w;
        }
        throw new IndexOutOfBoundsException("Index:" + i10);
    }

    public int hashCode() {
        long doubleToLongBits = ((Double.doubleToLongBits(this.f83544x) ^ (Double.doubleToLongBits(this.f83545y) * 31)) ^ (Double.doubleToLongBits(this.f83546z) * 31)) ^ (Double.doubleToLongBits(this.f83543w) * 31);
        return ((int) (doubleToLongBits >> 32)) ^ ((int) doubleToLongBits);
    }

    public Quatd inverse() {
        double lengthSq = lengthSq();
        if (lengthSq <= 0.0d) {
            return null;
        }
        double d10 = 1.0d / lengthSq;
        return new Quatd((-this.f83544x) * d10, (-this.f83545y) * d10, (-this.f83546z) * d10, this.f83543w * d10);
    }

    public boolean isRotationIdentity() {
        if (this.f83544x != 0.0d || this.f83545y != 0.0d || this.f83546z != 0.0d) {
            return false;
        }
        double d10 = this.f83543w;
        return (d10 == 0.0d || Double.isNaN(d10)) ? false : true;
    }

    public boolean isSimilar(Quatd quatd, double d10) {
        return quatd != null && Double.compare(Math.abs(quatd.f83544x - this.f83544x), d10) <= 0 && Double.compare(Math.abs(quatd.f83545y - this.f83545y), d10) <= 0 && Double.compare(Math.abs(quatd.f83546z - this.f83546z), d10) <= 0 && Double.compare(Math.abs(quatd.f83543w - this.f83543w), d10) <= 0;
    }

    public boolean isZero() {
        return this.f83544x == 0.0d && this.f83545y == 0.0d && this.f83546z == 0.0d && this.f83543w == 0.0d;
    }

    public final double lengthSq() {
        double d10 = this.f83544x;
        double d11 = this.f83545y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f83546z;
        double d14 = d12 + (d13 * d13);
        double d15 = this.f83543w;
        return d14 + (d15 * d15);
    }

    public final Quatd mult(Quatd quatd) {
        double d10 = quatd.f83544x;
        double d11 = quatd.f83545y;
        double d12 = quatd.f83546z;
        double d13 = quatd.f83543w;
        double d14 = this.f83544x;
        double d15 = this.f83545y;
        double d16 = (d14 * d13) + (d15 * d12);
        double d17 = this.f83546z;
        double d18 = d16 - (d17 * d11);
        double d19 = this.f83543w;
        return new Quatd(d18 + (d19 * d10), ((-d14) * d12) + (d15 * d13) + (d17 * d10) + (d19 * d11), ((d14 * d11) - (d15 * d10)) + (d17 * d13) + (d19 * d12), ((((-d14) * d10) - (d15 * d11)) - (d17 * d12)) + (d19 * d13));
    }

    public final Quatd multLocal(Quatd quatd) {
        double d10 = quatd.f83544x;
        double d11 = quatd.f83545y;
        double d12 = quatd.f83546z;
        double d13 = quatd.f83543w;
        double d14 = this.f83544x;
        double d15 = this.f83545y;
        double d16 = (d14 * d13) + (d15 * d12);
        double d17 = this.f83546z;
        double d18 = d16 - (d17 * d11);
        double d19 = this.f83543w;
        this.f83544x = d18 + (d19 * d10);
        this.f83545y = ((-d14) * d12) + (d15 * d13) + (d17 * d10) + (d19 * d11);
        this.f83546z = ((d14 * d11) - (d15 * d10)) + (d17 * d13) + (d19 * d12);
        this.f83543w = ((((-d14) * d10) - (d15 * d11)) - (d17 * d12)) + (d19 * d13);
        return this;
    }

    public final Quatd normalizeLocal() {
        double lengthSq = lengthSq();
        if (lengthSq == 0.0d) {
            this.f83543w = 1.0d;
            return this;
        }
        double sqrt = 1.0d / Math.sqrt(lengthSq);
        this.f83544x *= sqrt;
        this.f83545y *= sqrt;
        this.f83546z *= sqrt;
        this.f83543w *= sqrt;
        return this;
    }

    public final Quatd set(double d10, double d11, double d12, double d13) {
        this.f83544x = d10;
        this.f83545y = d11;
        this.f83546z = d12;
        this.f83543w = d13;
        return this;
    }

    public Quatd slerpLocal(Quatd quatd, Quatd quatd2, double d10) {
        double d11;
        double d12 = quatd.f83544x;
        double d13 = quatd2.f83544x;
        if (d12 == d13 && quatd.f83545y == quatd2.f83545y && quatd.f83546z == quatd2.f83546z && quatd.f83543w == quatd2.f83543w) {
            set(quatd);
            return this;
        }
        double d14 = quatd2.f83545y;
        double d15 = quatd2.f83546z;
        double d16 = quatd2.f83543w;
        double d17 = (d12 * d13) + (quatd.f83545y * d14) + (quatd.f83546z * d15) + (quatd.f83543w * d16);
        if (d17 < 0.0d) {
            d13 = -d13;
            d14 = -d14;
            d15 = -d15;
            d16 = -d16;
            d17 = -d17;
        }
        double d18 = 1.0d - d10;
        if (d17 < 0.9d) {
            double acos = Math.acos(d17);
            double sin = 1.0d / Math.sin(acos);
            d18 = Math.sin(d18 * acos) * sin;
            d11 = Math.sin(acos * d10) * sin;
        } else {
            d11 = d10;
        }
        this.f83544x = (quatd.f83544x * d18) + (d13 * d11);
        this.f83545y = (quatd.f83545y * d18) + (d14 * d11);
        this.f83546z = (quatd.f83546z * d18) + (d15 * d11);
        this.f83543w = (d18 * quatd.f83543w) + (d11 * d16);
        return this;
    }

    public final Quatd subtract(Quatd quatd) {
        return new Quatd(this.f83544x - quatd.f83544x, this.f83545y - quatd.f83545y, this.f83546z - quatd.f83546z, this.f83543w - quatd.f83543w);
    }

    public final Quatd subtractLocal(Quatd quatd) {
        this.f83544x -= quatd.f83544x;
        this.f83545y -= quatd.f83545y;
        this.f83546z -= quatd.f83546z;
        this.f83543w -= quatd.f83543w;
        return this;
    }

    public double[] toAngles(double[] dArr) {
        double[] dArr2 = dArr;
        if (dArr2 == null) {
            dArr2 = new double[3];
        } else if (dArr2.length != 3) {
            throw new IllegalArgumentException("Angles array must have three elements");
        }
        double d10 = this.f83543w;
        double d11 = d10 * d10;
        double d12 = this.f83544x;
        double d13 = d12 * d12;
        double d14 = this.f83545y;
        double d15 = d14 * d14;
        double d16 = this.f83546z;
        double d17 = d16 * d16;
        double d18 = d13 + d15 + d17 + d11;
        double d19 = (d12 * d14) + (d16 * d10);
        if (d19 > 0.499d * d18) {
            dArr2[1] = Math.atan2(d12, d10) * 2.0d;
            dArr2[2] = 1.5707963267948966d;
            dArr2[0] = 0.0d;
        } else if (d19 < (-0.499d) * d18) {
            dArr2[1] = Math.atan2(d12, d10) * (-2.0d);
            dArr2[2] = -1.5707963267948966d;
            dArr2[0] = 0.0d;
        } else {
            dArr2[1] = Math.atan2(((d14 * 2.0d) * d10) - ((d12 * 2.0d) * d16), ((d13 - d15) - d17) + d11);
            dArr2[2] = Math.asin((d19 * 2.0d) / d18);
            dArr2[0] = Math.atan2(((this.f83544x * 2.0d) * this.f83543w) - ((this.f83545y * 2.0d) * this.f83546z), (((-d13) + d15) - d17) + d11);
        }
        return dArr2;
    }

    public Quaternion toQuaternion() {
        return new Quaternion((float) this.f83544x, (float) this.f83545y, (float) this.f83546z, (float) this.f83543w);
    }

    public Matrix3d toRotationMatrix() {
        double lengthSq = 2.0d / lengthSq();
        double d10 = this.f83544x;
        double d11 = d10 * lengthSq;
        double d12 = this.f83545y;
        double d13 = d12 * lengthSq;
        double d14 = this.f83546z;
        double d15 = lengthSq * d14;
        double d16 = d10 * d11;
        double d17 = d10 * d13;
        double d18 = d10 * d15;
        double d19 = this.f83543w;
        double d20 = d11 * d19;
        double d21 = d12 * d13;
        double d22 = d12 * d15;
        double d23 = d13 * d19;
        double d24 = d14 * d15;
        double d25 = d19 * d15;
        return new Matrix3d(1.0d - (d21 + d24), d17 - d25, d18 + d23, d17 + d25, 1.0d - (d16 + d24), d22 - d20, d18 - d23, d22 + d20, 1.0d - (d16 + d21));
    }

    public String toString() {
        return "Quatd[" + this.f83544x + ", " + this.f83545y + ", " + this.f83546z + ", " + this.f83543w + "]";
    }

    public Quatd(double d10, double d11, double d12, double d13) {
        this.f83544x = d10;
        this.f83545y = d11;
        this.f83546z = d12;
        this.f83543w = d13;
    }

    public final Quatd m1321clone() {
        return new Quatd(this.f83544x, this.f83545y, this.f83546z, this.f83543w);
    }

    public Quatd fromAngles(double d10, double d11, double d12) {
        double d13 = d12 * 0.5d;
        double sin = Math.sin(d13);
        double cos = Math.cos(d13);
        double d14 = d11 * 0.5d;
        double sin2 = Math.sin(d14);
        double cos2 = Math.cos(d14);
        double d15 = 0.5d * d10;
        double sin3 = Math.sin(d15);
        double cos3 = Math.cos(d15);
        double d16 = cos2 * cos;
        double d17 = sin2 * sin;
        double d18 = cos2 * sin;
        double d19 = sin2 * cos;
        this.f83543w = (d16 * cos3) - (d17 * sin3);
        this.f83544x = (d16 * sin3) + (d17 * cos3);
        this.f83545y = (d19 * cos3) + (d18 * sin3);
        this.f83546z = (d18 * cos3) - (d19 * sin3);
        normalizeLocal();
        return this;
    }

    public final Quatd set(Quatd quatd) {
        this.f83544x = quatd.f83544x;
        this.f83545y = quatd.f83545y;
        this.f83546z = quatd.f83546z;
        this.f83543w = quatd.f83543w;
        return this;
    }

    public Quatd(Quatd quatd) {
        this(quatd.f83544x, quatd.f83545y, quatd.f83546z, quatd.f83543w);
    }

    public final Quatd mult(Quatd quatd, Quatd quatd2) {
        double d10 = quatd.f83544x;
        double d11 = quatd.f83545y;
        double d12 = quatd.f83546z;
        double d13 = quatd.f83543w;
        double d14 = this.f83544x;
        double d15 = this.f83545y;
        double d16 = (d14 * d13) + (d15 * d12);
        double d17 = this.f83546z;
        double d18 = d16 - (d17 * d11);
        double d19 = this.f83543w;
        double d20 = d18 + (d19 * d10);
        double d21 = ((-d14) * d12) + (d15 * d13) + (d17 * d10) + (d19 * d11);
        double d22 = ((d14 * d11) - (d15 * d10)) + (d17 * d13) + (d19 * d12);
        double d23 = ((((-d14) * d10) - (d15 * d11)) - (d17 * d12)) + (d19 * d13);
        if (quatd2 == null) {
            return new Quatd(d20, d21, d22, d23);
        }
        quatd2.set(d20, d21, d22, d23);
        return quatd2;
    }

    public Quatd(Quaternion quaternion) {
        this.f83544x = quaternion.getX();
        this.f83545y = quaternion.getY();
        this.f83546z = quaternion.getZ();
        this.f83543w = quaternion.getW();
    }

    public final Quatd set(Quaternion quaternion) {
        this.f83544x = quaternion.getX();
        this.f83545y = quaternion.getY();
        this.f83546z = quaternion.getZ();
        this.f83543w = quaternion.getW();
        return this;
    }

    public Quatd set(int i10, double d10) {
        if (i10 == 0) {
            this.f83544x = d10;
        } else if (i10 == 1) {
            this.f83545y = d10;
        } else if (i10 == 2) {
            this.f83546z = d10;
        } else if (i10 == 3) {
            this.f83543w = d10;
        } else {
            throw new IndexOutOfBoundsException("Index:" + i10);
        }
        return this;
    }

    public Vec3d mult(Vec3d vec3d) {
        double d10 = vec3d.f83547x;
        if (d10 == 0.0d && vec3d.f83548y == 0.0d && vec3d.f83549z == 0.0d) {
            return new Vec3d();
        }
        double d11 = vec3d.f83548y;
        double d12 = vec3d.f83549z;
        double d13 = this.f83543w;
        double d14 = this.f83545y;
        double d15 = (d13 * d13 * d10) + (d14 * 2.0d * d13 * d12);
        double d16 = this.f83546z;
        double d17 = this.f83544x;
        return new Vec3d((((((d15 - (((d16 * 2.0d) * d13) * d11)) + ((d17 * d17) * d10)) + (((d14 * 2.0d) * d17) * d11)) + (((d16 * 2.0d) * d17) * d12)) - ((d16 * d16) * d10)) - ((d14 * d14) * d10), (((((((((d17 * 2.0d) * d14) * d10) + ((d14 * d14) * d11)) + (((d16 * 2.0d) * d14) * d12)) + (((d13 * 2.0d) * d16) * d10)) - ((d16 * d16) * d11)) + ((d13 * d13) * d11)) - (((d17 * 2.0d) * d13) * d12)) - ((d17 * d17) * d11), (((((((((d17 * 2.0d) * d16) * d10) + (((d14 * 2.0d) * d16) * d11)) + ((d16 * d16) * d12)) - (((d13 * 2.0d) * d14) * d10)) - ((d14 * d14) * d12)) + (((d13 * 2.0d) * d17) * d11)) - ((d17 * d17) * d12)) + (d13 * d13 * d12));
    }

    public Vec3d mult(Vec3d vec3d, Vec3d vec3d2) {
        double d10 = vec3d.f83547x;
        if (d10 == 0.0d && vec3d.f83548y == 0.0d && vec3d.f83549z == 0.0d) {
            if (vec3d != vec3d2) {
                vec3d2.set(0.0d, 0.0d, 0.0d);
            }
            return vec3d2;
        }
        double d11 = vec3d.f83548y;
        double d12 = vec3d.f83549z;
        double d13 = this.f83543w;
        double d14 = this.f83545y;
        double d15 = (d13 * d13 * d10) + (d14 * 2.0d * d13 * d12);
        double d16 = this.f83546z;
        double d17 = this.f83544x;
        vec3d2.set((((((d15 - (((d16 * 2.0d) * d13) * d11)) + ((d17 * d17) * d10)) + (((d14 * 2.0d) * d17) * d11)) + (((d16 * 2.0d) * d17) * d12)) - ((d16 * d16) * d10)) - ((d14 * d14) * d10), (((((((((d17 * 2.0d) * d14) * d10) + ((d14 * d14) * d11)) + (((d16 * 2.0d) * d14) * d12)) + (((d13 * 2.0d) * d16) * d10)) - ((d16 * d16) * d11)) + ((d13 * d13) * d11)) - (((d17 * 2.0d) * d13) * d12)) - ((d17 * d17) * d11), (((((((((d17 * 2.0d) * d16) * d10) + (((d14 * 2.0d) * d16) * d11)) + ((d16 * d16) * d12)) - (((d13 * 2.0d) * d14) * d10)) - ((d14 * d14) * d12)) + (((d13 * 2.0d) * d17) * d11)) - ((d17 * d17) * d12)) + (d13 * d13 * d12));
        return vec3d2;
    }
}
