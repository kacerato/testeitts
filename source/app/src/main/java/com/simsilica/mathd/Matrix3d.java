package com.simsilica.mathd;

import java.io.Serializable;

public class Matrix3d implements Cloneable, Serializable {
    static final long serialVersionUID = 42;
    public double m00;
    public double m01;
    public double m02;
    public double m10;
    public double m11;
    public double m12;
    public double m20;
    public double m21;
    public double m22;

    public Matrix3d() {
        makeIdentity();
    }

    public Matrix3d addLocal(Matrix3d matrix3d) {
        this.m00 += matrix3d.m00;
        this.m01 += matrix3d.m01;
        this.m02 += matrix3d.m02;
        this.m10 += matrix3d.m10;
        this.m11 += matrix3d.m11;
        this.m12 += matrix3d.m12;
        this.m20 += matrix3d.m20;
        this.m21 += matrix3d.m21;
        this.m22 += matrix3d.m22;
        return this;
    }

    public double determinant() {
        double d10 = this.m11;
        double d11 = this.m22;
        double d12 = this.m12;
        double d13 = this.m21;
        double d14 = (d10 * d11) - (d12 * d13);
        double d15 = this.m20;
        double d16 = this.m10;
        return (this.m00 * d14) + (this.m01 * ((d12 * d15) - (d11 * d16))) + (this.m02 * ((d16 * d13) - (d10 * d15)));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Matrix3d matrix3d = (Matrix3d) obj;
        return Double.compare(this.m00, matrix3d.m00) == 0 && Double.compare(this.m01, matrix3d.m01) == 0 && Double.compare(this.m02, matrix3d.m02) == 0 && Double.compare(this.m10, matrix3d.m10) == 0 && Double.compare(this.m11, matrix3d.m11) == 0 && Double.compare(this.m12, matrix3d.m12) == 0 && Double.compare(this.m20, matrix3d.m20) == 0 && Double.compare(this.m21, matrix3d.m21) == 0 && Double.compare(this.m22, matrix3d.m22) == 0;
    }

    public Vec3d getColumn(int i10) {
        if (i10 == 0) {
            return new Vec3d(this.m00, this.m10, this.m20);
        }
        if (i10 == 1) {
            return new Vec3d(this.m01, this.m11, this.m21);
        }
        if (i10 != 2) {
            return null;
        }
        return new Vec3d(this.m02, this.m12, this.m22);
    }

    public int hashCode() {
        long doubleToLongBits = (((((((Double.doubleToLongBits(this.m00) ^ (Double.doubleToLongBits(this.m01) * 2)) ^ (Double.doubleToLongBits(this.m02) * 3)) ^ (Double.doubleToLongBits(this.m10) * 4)) ^ (Double.doubleToLongBits(this.m11) * 5)) ^ (Double.doubleToLongBits(this.m12) * 6)) ^ (Double.doubleToLongBits(this.m20) * 7)) ^ (Double.doubleToLongBits(this.m21) * 8)) ^ (Double.doubleToLongBits(this.m22) * 9);
        return ((int) (doubleToLongBits >> 32)) ^ ((int) doubleToLongBits);
    }

    public Matrix3d invert() {
        double determinant = determinant();
        if (determinant == 0.0d) {
            return new Matrix3d();
        }
        double d10 = this.m11;
        double d11 = this.m22;
        double d12 = this.m12;
        double d13 = this.m21;
        double d14 = (d10 * d11) - (d12 * d13);
        double d15 = this.m02;
        double d16 = this.m01;
        double d17 = (d15 * d13) - (d16 * d11);
        double d18 = (d16 * d12) - (d15 * d10);
        double d19 = this.m20;
        double d20 = this.m10;
        double d21 = (d12 * d19) - (d20 * d11);
        double d22 = this.m00;
        double d23 = (d11 * d22) - (d15 * d19);
        double d24 = (d15 * d20) - (d12 * d22);
        double d25 = (d20 * d13) - (d10 * d19);
        double d26 = (d19 * d16) - (d13 * d22);
        double d27 = (d22 * d10) - (d20 * d16);
        double d28 = 1.0d / determinant;
        return new Matrix3d(d14 * d28, d17 * d28, d18 * d28, d21 * d28, d23 * d28, d24 * d28, d25 * d28, d26 * d28, d27 * d28);
    }

    public boolean isIdentity() {
        return this.m00 == 1.0d && this.m01 == 0.0d && this.m02 == 0.0d && this.m10 == 0.0d && this.m11 == 1.0d && this.m12 == 0.0d && this.m20 == 0.0d && this.m21 == 0.0d && this.m22 == 1.0d;
    }

    public Matrix3d makeIdentity() {
        this.m21 = 0.0d;
        this.m20 = 0.0d;
        this.m12 = 0.0d;
        this.m10 = 0.0d;
        this.m02 = 0.0d;
        this.m01 = 0.0d;
        this.m22 = 1.0d;
        this.m11 = 1.0d;
        this.m00 = 1.0d;
        return this;
    }

    public Matrix3d mult(Matrix3d matrix3d) {
        double d10 = this.m00;
        double d11 = matrix3d.m00;
        double d12 = this.m01;
        double d13 = matrix3d.m10;
        double d14 = this.m02;
        double d15 = matrix3d.m20;
        double d16 = (d10 * d11) + (d12 * d13) + (d14 * d15);
        double d17 = matrix3d.m01;
        double d18 = d10 * d17;
        double d19 = matrix3d.m11;
        double d20 = d18 + (d12 * d19);
        double d21 = matrix3d.m21;
        double d22 = d20 + (d14 * d21);
        double d23 = matrix3d.m02;
        double d24 = d10 * d23;
        double d25 = matrix3d.m12;
        double d26 = d24 + (d12 * d25);
        double d27 = matrix3d.m22;
        double d28 = d26 + (d14 * d27);
        double d29 = this.m10;
        double d30 = this.m11;
        double d31 = (d29 * d11) + (d30 * d13);
        double d32 = this.m12;
        double d33 = d31 + (d32 * d15);
        double d34 = (d29 * d17) + (d30 * d19) + (d32 * d21);
        double d35 = (d29 * d23) + (d30 * d25) + (d32 * d27);
        double d36 = this.m20;
        double d37 = this.m21;
        double d38 = (d36 * d11) + (d37 * d13);
        double d39 = this.m22;
        return new Matrix3d(d16, d22, d28, d33, d34, d35, d38 + (d15 * d39), (d36 * d17) + (d37 * d19) + (d39 * d21), (d36 * d23) + (d37 * d25) + (d39 * d27));
    }

    public Matrix3d multLocal(Matrix3d matrix3d) {
        double d10 = this.m00;
        double d11 = matrix3d.m00;
        double d12 = this.m01;
        double d13 = matrix3d.m10;
        double d14 = this.m02;
        double d15 = matrix3d.m20;
        double d16 = (d10 * d11) + (d12 * d13) + (d14 * d15);
        double d17 = matrix3d.m01;
        double d18 = d10 * d17;
        double d19 = matrix3d.m11;
        double d20 = d18 + (d12 * d19);
        double d21 = matrix3d.m21;
        double d22 = d20 + (d14 * d21);
        double d23 = matrix3d.m02;
        double d24 = d10 * d23;
        double d25 = matrix3d.m12;
        double d26 = d24 + (d12 * d25);
        double d27 = matrix3d.m22;
        double d28 = d26 + (d14 * d27);
        double d29 = this.m10;
        double d30 = this.m11;
        double d31 = (d29 * d11) + (d30 * d13);
        double d32 = this.m12;
        double d33 = d31 + (d32 * d15);
        double d34 = (d29 * d17) + (d30 * d19) + (d32 * d21);
        double d35 = (d29 * d23) + (d30 * d25) + (d32 * d27);
        double d36 = this.m20;
        double d37 = this.m21;
        double d38 = this.m22;
        this.m00 = d16;
        this.m01 = d22;
        this.m02 = d28;
        this.m10 = d33;
        this.m11 = d34;
        this.m12 = d35;
        this.m20 = (d11 * d36) + (d37 * d13) + (d38 * d15);
        this.m21 = (d17 * d36) + (d19 * d37) + (d38 * d21);
        this.m22 = (d36 * d23) + (d37 * d25) + (d38 * d27);
        return this;
    }

    public Matrix3d set(Matrix3d matrix3d) {
        this.m00 = matrix3d.m00;
        this.m01 = matrix3d.m01;
        this.m02 = matrix3d.m02;
        this.m10 = matrix3d.m10;
        this.m11 = matrix3d.m11;
        this.m12 = matrix3d.m12;
        this.m20 = matrix3d.m20;
        this.m21 = matrix3d.m21;
        this.m22 = matrix3d.m22;
        return this;
    }

    public Matrix3d setColumn(int i10, Vec3d vec3d) {
        if (i10 == 0) {
            this.m00 = vec3d.f83547x;
            this.m10 = vec3d.f83548y;
            this.m20 = vec3d.f83549z;
        } else if (i10 == 1) {
            this.m01 = vec3d.f83547x;
            this.m11 = vec3d.f83548y;
            this.m21 = vec3d.f83549z;
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("Column does not exist:" + i10);
            }
            this.m02 = vec3d.f83547x;
            this.m12 = vec3d.f83548y;
            this.m22 = vec3d.f83549z;
        }
        return this;
    }

    public Matrix3d setSkewSymmetric(Vec3d vec3d) {
        this.m00 = 0.0d;
        this.m11 = 0.0d;
        this.m22 = 0.0d;
        double d10 = vec3d.f83549z;
        this.m01 = -d10;
        double d11 = vec3d.f83548y;
        this.m02 = d11;
        this.m10 = d10;
        double d12 = vec3d.f83547x;
        this.m12 = -d12;
        this.m20 = -d11;
        this.m21 = d12;
        return this;
    }

    public String toString() {
        return "Matrix3d[{" + this.m00 + ", " + this.m01 + ", " + this.m02 + "}, {" + this.m10 + ", " + this.m11 + ", " + this.m12 + "}, {" + this.m20 + ", " + this.m21 + ", " + this.m22 + "}]";
    }

    public Matrix3d transpose() {
        return new Matrix3d(this.m00, this.m10, this.m20, this.m01, this.m11, this.m21, this.m02, this.m12, this.m22);
    }

    public Matrix3d m1319clone() {
        return new Matrix3d(this.m00, this.m01, this.m02, this.m10, this.m11, this.m12, this.m20, this.m21, this.m22);
    }

    public Matrix3d(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        this.m00 = d10;
        this.m01 = d11;
        this.m02 = d12;
        this.m10 = d13;
        this.m11 = d14;
        this.m12 = d15;
        this.m20 = d16;
        this.m21 = d17;
        this.m22 = d18;
    }

    public Vec3d mult(Vec3d vec3d) {
        double d10 = vec3d.f83547x;
        double d11 = vec3d.f83548y;
        double d12 = vec3d.f83549z;
        return new Vec3d((this.m00 * d10) + (this.m01 * d11) + (this.m02 * d12), (this.m10 * d10) + (this.m11 * d11) + (this.m12 * d12), (this.m20 * d10) + (this.m21 * d11) + (this.m22 * d12));
    }

    public Matrix3d multLocal(double d10) {
        this.m00 *= d10;
        this.m01 *= d10;
        this.m02 *= d10;
        this.m10 *= d10;
        this.m11 *= d10;
        this.m12 *= d10;
        this.m20 *= d10;
        this.m21 *= d10;
        this.m22 *= d10;
        return this;
    }
}
