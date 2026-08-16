package com.simsilica.mathd;

import java.io.Serializable;

public class Matrix4d implements Cloneable, Serializable {
    static final long serialVersionUID = 42;
    public double m00;
    public double m01;
    public double m02;
    public double m03;
    public double m10;
    public double m11;
    public double m12;
    public double m13;
    public double m20;
    public double m21;
    public double m22;
    public double m23;
    public double m30;
    public double m31;
    public double m32;
    public double m33;

    public Matrix4d() {
        makeIdentity();
    }

    public double determinant() {
        double d10 = this.m00;
        double d11 = this.m11;
        double d12 = this.m01;
        double d13 = this.m10;
        double d14 = (d10 * d11) - (d12 * d13);
        double d15 = this.m12;
        double d16 = this.m02;
        double d17 = (d10 * d15) - (d16 * d13);
        double d18 = this.m13;
        double d19 = d10 * d18;
        double d20 = this.m03;
        double d21 = d19 - (d13 * d20);
        double d22 = (d12 * d15) - (d16 * d11);
        double d23 = (d12 * d18) - (d11 * d20);
        double d24 = (d16 * d18) - (d20 * d15);
        double d25 = this.m20;
        double d26 = this.m31;
        double d27 = this.m21;
        double d28 = this.m30;
        double d29 = (d25 * d26) - (d27 * d28);
        double d30 = this.m32;
        double d31 = this.m22;
        double d32 = (d25 * d30) - (d31 * d28);
        double d33 = this.m33;
        double d34 = d25 * d33;
        double d35 = this.m23;
        double d36 = d34 - (d28 * d35);
        double d37 = (d27 * d30) - (d31 * d26);
        return (((((d14 * ((d31 * d33) - (d35 * d30))) - (d17 * ((d27 * d33) - (d26 * d35)))) + (d21 * d37)) + (d22 * d36)) - (d23 * d32)) + (d24 * d29);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Matrix4d matrix4d = (Matrix4d) obj;
        return Double.compare(this.m00, matrix4d.m00) == 0 && Double.compare(this.m01, matrix4d.m01) == 0 && Double.compare(this.m02, matrix4d.m02) == 0 && Double.compare(this.m03, matrix4d.m03) == 0 && Double.compare(this.m10, matrix4d.m10) == 0 && Double.compare(this.m11, matrix4d.m11) == 0 && Double.compare(this.m12, matrix4d.m12) == 0 && Double.compare(this.m13, matrix4d.m13) == 0 && Double.compare(this.m20, matrix4d.m20) == 0 && Double.compare(this.m21, matrix4d.m21) == 0 && Double.compare(this.m22, matrix4d.m22) == 0 && Double.compare(this.m23, matrix4d.m23) == 0 && Double.compare(this.m30, matrix4d.m30) == 0 && Double.compare(this.m31, matrix4d.m31) == 0 && Double.compare(this.m32, matrix4d.m32) == 0 && Double.compare(this.m33, matrix4d.m33) == 0;
    }

    public int hashCode() {
        long doubleToLongBits = ((((((((((((((Double.doubleToLongBits(this.m00) ^ (Double.doubleToLongBits(this.m01) * 2)) ^ (Double.doubleToLongBits(this.m02) * 3)) ^ (Double.doubleToLongBits(this.m03) * 4)) ^ (Double.doubleToLongBits(this.m10) * 5)) ^ (Double.doubleToLongBits(this.m11) * 6)) ^ (Double.doubleToLongBits(this.m12) * 7)) ^ (Double.doubleToLongBits(this.m13) * 8)) ^ (Double.doubleToLongBits(this.m20) * 9)) ^ (Double.doubleToLongBits(this.m21) * 10)) ^ (Double.doubleToLongBits(this.m22) * 11)) ^ (Double.doubleToLongBits(this.m23) * 12)) ^ (Double.doubleToLongBits(this.m30) * 13)) ^ (Double.doubleToLongBits(this.m31) * 14)) ^ (Double.doubleToLongBits(this.m32) * 15)) ^ (Double.doubleToLongBits(this.m33) * 16);
        return ((int) (doubleToLongBits >> 32)) ^ ((int) doubleToLongBits);
    }

    public Matrix4d invert() {
        double d10 = this.m00;
        double d11 = this.m11;
        double d12 = this.m01;
        double d13 = this.m10;
        double d14 = (d10 * d11) - (d12 * d13);
        double d15 = this.m12;
        double d16 = this.m02;
        double d17 = (d10 * d15) - (d16 * d13);
        double d18 = this.m13;
        double d19 = d10 * d18;
        double d20 = this.m03;
        double d21 = d19 - (d20 * d13);
        double d22 = (d12 * d15) - (d16 * d11);
        double d23 = (d12 * d18) - (d20 * d11);
        double d24 = (d16 * d18) - (d20 * d15);
        double d25 = this.m20;
        double d26 = this.m31;
        double d27 = this.m21;
        double d28 = this.m30;
        double d29 = (d25 * d26) - (d27 * d28);
        double d30 = this.m32;
        double d31 = this.m22;
        double d32 = (d25 * d30) - (d31 * d28);
        double d33 = this.m33;
        double d34 = d25 * d33;
        double d35 = this.m23;
        double d36 = d34 - (d35 * d28);
        double d37 = (d27 * d30) - (d31 * d26);
        double d38 = (d27 * d33) - (d35 * d26);
        double d39 = (d31 * d33) - (d35 * d30);
        double d40 = (((((d14 * d39) - (d17 * d38)) + (d21 * d37)) + (d22 * d36)) - (d23 * d32)) + (d24 * d29);
        if (d40 == 0.0d) {
            return new Matrix4d();
        }
        double d41 = ((d11 * d39) - (d15 * d38)) + (d18 * d37);
        double d42 = (((-d13) * d39) + (d15 * d36)) - (d18 * d32);
        double d43 = ((d13 * d38) - (d11 * d36)) + (d18 * d29);
        double d44 = (((-d13) * d37) + (d11 * d32)) - (d15 * d29);
        double d45 = (((-d28) * d24) + (d30 * d21)) - (d33 * d17);
        double d46 = ((d28 * d23) - (d26 * d21)) + (d33 * d14);
        double d47 = (((-d28) * d22) + (d26 * d17)) - (d30 * d14);
        double d48 = 1.0d / d40;
        return new Matrix4d(d41 * d48, ((((-d12) * d39) + (d16 * d38)) - (d20 * d37)) * d48, (((d26 * d24) - (d30 * d23)) + (d33 * d22)) * d48, ((((-d27) * d24) + (d31 * d23)) - (d35 * d22)) * d48, d42 * d48, (((d10 * d39) - (d16 * d36)) + (d20 * d32)) * d48, d45 * d48, (((d25 * d24) - (d31 * d21)) + (d35 * d17)) * d48, d43 * d48, ((((-d10) * d38) + (d36 * d12)) - (d20 * d29)) * d48, d46 * d48, ((((-d25) * d23) + (d21 * d27)) - (d35 * d14)) * d48, d44 * d48, (((d10 * d37) - (d12 * d32)) + (d16 * d29)) * d48, d47 * d48, (((d25 * d22) - (d27 * d17)) + (d31 * d14)) * d48);
    }

    public boolean isIdentity() {
        return this.m00 == 1.0d && this.m01 == 0.0d && this.m02 == 0.0d && this.m03 == 0.0d && this.m10 == 0.0d && this.m11 == 1.0d && this.m12 == 0.0d && this.m13 == 0.0d && this.m20 == 0.0d && this.m21 == 0.0d && this.m22 == 1.0d && this.m23 == 0.0d && this.m30 == 0.0d && this.m31 == 0.0d && this.m32 == 0.0d && this.m33 == 1.0d;
    }

    public void makeIdentity() {
        this.m03 = 0.0d;
        this.m02 = 0.0d;
        this.m01 = 0.0d;
        this.m13 = 0.0d;
        this.m12 = 0.0d;
        this.m10 = 0.0d;
        this.m23 = 0.0d;
        this.m21 = 0.0d;
        this.m20 = 0.0d;
        this.m32 = 0.0d;
        this.m31 = 0.0d;
        this.m30 = 0.0d;
        this.m33 = 1.0d;
        this.m22 = 1.0d;
        this.m11 = 1.0d;
        this.m00 = 1.0d;
    }

    public Matrix4d mult(Matrix4d matrix4d) {
        double d10 = this.m00;
        double d11 = matrix4d.m00;
        double d12 = this.m01;
        double d13 = matrix4d.m10;
        double d14 = this.m02;
        double d15 = matrix4d.m20;
        double d16 = (d10 * d11) + (d12 * d13) + (d14 * d15);
        double d17 = this.m03;
        double d18 = matrix4d.m30;
        double d19 = d16 + (d17 * d18);
        double d20 = matrix4d.m01;
        double d21 = d10 * d20;
        double d22 = matrix4d.m11;
        double d23 = d21 + (d12 * d22);
        double d24 = matrix4d.m21;
        double d25 = d23 + (d14 * d24);
        double d26 = matrix4d.m31;
        double d27 = d25 + (d17 * d26);
        double d28 = matrix4d.m02;
        double d29 = d10 * d28;
        double d30 = matrix4d.m12;
        double d31 = d29 + (d12 * d30);
        double d32 = matrix4d.m22;
        double d33 = d31 + (d14 * d32);
        double d34 = matrix4d.m32;
        double d35 = d33 + (d17 * d34);
        double d36 = matrix4d.m03;
        double d37 = d10 * d36;
        double d38 = matrix4d.m13;
        double d39 = d37 + (d12 * d38);
        double d40 = matrix4d.m23;
        double d41 = d39 + (d14 * d40);
        double d42 = matrix4d.m33;
        double d43 = d41 + (d17 * d42);
        double d44 = this.m10;
        double d45 = this.m11;
        double d46 = this.m12;
        double d47 = this.m13;
        double d48 = (d44 * d11) + (d45 * d13) + (d46 * d15) + (d47 * d18);
        double d49 = (d44 * d20) + (d45 * d22) + (d46 * d24) + (d47 * d26);
        double d50 = (d44 * d28) + (d45 * d30) + (d46 * d32) + (d47 * d34);
        double d51 = (d44 * d36) + (d45 * d38) + (d46 * d40) + (d47 * d42);
        double d52 = this.m20;
        double d53 = this.m21;
        double d54 = this.m22;
        double d55 = (d52 * d11) + (d53 * d13) + (d54 * d15);
        double d56 = this.m23;
        double d57 = d55 + (d56 * d18);
        double d58 = (d52 * d20) + (d53 * d22) + (d54 * d24) + (d56 * d26);
        double d59 = (d52 * d28) + (d53 * d30) + (d54 * d32) + (d56 * d34);
        double d60 = (d52 * d36) + (d53 * d38) + (d54 * d40) + (d56 * d42);
        double d61 = this.m30;
        double d62 = this.m31;
        double d63 = this.m32;
        double d64 = (d61 * d11) + (d62 * d13) + (d63 * d15);
        double d65 = this.m33;
        return new Matrix4d(d19, d27, d35, d43, d48, d49, d50, d51, d57, d58, d59, d60, d64 + (d18 * d65), (d61 * d20) + (d62 * d22) + (d63 * d24) + (d65 * d26), (d61 * d28) + (d62 * d30) + (d63 * d32) + (d65 * d34), (d61 * d36) + (d62 * d38) + (d63 * d40) + (d65 * d42));
    }

    public void setTransform(Vec3d vec3d, Matrix3d matrix3d) {
        this.m00 = matrix3d.m00;
        this.m01 = matrix3d.m01;
        this.m02 = matrix3d.m02;
        this.m03 = vec3d.f83547x;
        this.m10 = matrix3d.m10;
        this.m11 = matrix3d.m11;
        this.m12 = matrix3d.m12;
        this.m13 = vec3d.f83548y;
        this.m20 = matrix3d.m20;
        this.m21 = matrix3d.m21;
        this.m22 = matrix3d.m22;
        this.m23 = vec3d.f83549z;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public Matrix3d toRotationMatrix() {
        return new Matrix3d(this.m00, this.m01, this.m02, this.m10, this.m11, this.m12, this.m20, this.m21, this.m22);
    }

    public String toString() {
        return "Matrix4d[{" + this.m00 + ", " + this.m01 + ", " + this.m02 + ", " + this.m03 + "}, {" + this.m10 + ", " + this.m11 + ", " + this.m12 + ", " + this.m13 + "}, {" + this.m20 + ", " + this.m21 + ", " + this.m22 + ", " + this.m23 + "}, {" + this.m30 + ", " + this.m31 + ", " + this.m32 + ", " + this.m33 + "}]";
    }

    public Matrix4d transpose() {
        return new Matrix4d(this.m00, this.m10, this.m20, this.m30, this.m01, this.m11, this.m21, this.m31, this.m02, this.m12, this.m22, this.m32, this.m03, this.m13, this.m23, this.m33);
    }

    public Matrix4d m1320clone() {
        return new Matrix4d(this.m00, this.m01, this.m02, this.m03, this.m10, this.m11, this.m12, this.m13, this.m20, this.m21, this.m22, this.m23, this.m30, this.m31, this.m32, this.m33);
    }

    public Matrix4d(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18, double d19, double d20, double d21, double d22, double d23, double d24, double d25) {
        this.m00 = d10;
        this.m01 = d11;
        this.m02 = d12;
        this.m03 = d13;
        this.m10 = d14;
        this.m11 = d15;
        this.m12 = d16;
        this.m13 = d17;
        this.m20 = d18;
        this.m21 = d19;
        this.m22 = d20;
        this.m23 = d21;
        this.m30 = d22;
        this.m31 = d23;
        this.m32 = d24;
        this.m33 = d25;
    }

    public Vec3d mult(Vec3d vec3d) {
        double d10 = vec3d.f83547x;
        double d11 = vec3d.f83548y;
        double d12 = vec3d.f83549z;
        return new Vec3d((this.m00 * d10) + (this.m01 * d11) + (this.m02 * d12) + this.m03, (this.m10 * d10) + (this.m11 * d11) + (this.m12 * d12) + this.m13, (this.m20 * d10) + (this.m21 * d11) + (this.m22 * d12) + this.m23);
    }

    public Vec3d mult(Vec3d vec3d, Vec3d vec3d2) {
        double d10 = vec3d.f83547x;
        double d11 = vec3d.f83548y;
        double d12 = vec3d.f83549z;
        double d13 = (this.m00 * d10) + (this.m01 * d11) + (this.m02 * d12) + this.m03;
        double d14 = (this.m10 * d10) + (this.m11 * d11) + (this.m12 * d12) + this.m13;
        double d15 = (this.m20 * d10) + (this.m21 * d11) + (this.m22 * d12) + this.m23;
        if (vec3d2 == null) {
            return new Vec3d(d13, d14, d15);
        }
        vec3d2.set(d13, d14, d15);
        return vec3d2;
    }
}
