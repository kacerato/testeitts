package javax.vecmath;

import java.io.Serializable;

public class AxisAngle4d implements Serializable, Cloneable {
    static final double EPS = 1.0E-12d;
    static final long serialVersionUID = 3644296204459140589L;
    public double angle;

    public double f92818x;

    public double f92819y;

    public double f92820z;

    public AxisAngle4d(double d10, double d11, double d12, double d13) {
        this.f92818x = d10;
        this.f92819y = d11;
        this.f92820z = d12;
        this.angle = d13;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public boolean epsilonEquals(AxisAngle4d axisAngle4d, double d10) {
        double d11 = this.f92818x - axisAngle4d.f92818x;
        if (d11 < 0.0d) {
            d11 = -d11;
        }
        if (d11 > d10) {
            return false;
        }
        double d12 = this.f92819y - axisAngle4d.f92819y;
        if (d12 < 0.0d) {
            d12 = -d12;
        }
        if (d12 > d10) {
            return false;
        }
        double d13 = this.f92820z - axisAngle4d.f92820z;
        if (d13 < 0.0d) {
            d13 = -d13;
        }
        if (d13 > d10) {
            return false;
        }
        double d14 = this.angle - axisAngle4d.angle;
        if (d14 < 0.0d) {
            d14 = -d14;
        }
        return d14 <= d10;
    }

    public boolean equals(AxisAngle4d axisAngle4d) {
        try {
            if (this.f92818x == axisAngle4d.f92818x && this.f92819y == axisAngle4d.f92819y && this.f92820z == axisAngle4d.f92820z) {
                return this.angle == axisAngle4d.angle;
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final void get(double[] dArr) {
        dArr[0] = this.f92818x;
        dArr[1] = this.f92819y;
        dArr[2] = this.f92820z;
        dArr[3] = this.angle;
    }

    public final double getAngle() {
        return this.angle;
    }

    public double getX() {
        return this.f92818x;
    }

    public final double getY() {
        return this.f92819y;
    }

    public double getZ() {
        return this.f92820z;
    }

    public int hashCode() {
        long doubleToLongBits = ((((((VecMathUtil.doubleToLongBits(this.f92818x) + 31) * 31) + VecMathUtil.doubleToLongBits(this.f92819y)) * 31) + VecMathUtil.doubleToLongBits(this.f92820z)) * 31) + VecMathUtil.doubleToLongBits(this.angle);
        return (int) (doubleToLongBits ^ (doubleToLongBits >> 32));
    }

    public final void set(double d10, double d11, double d12, double d13) {
        this.f92818x = d10;
        this.f92819y = d11;
        this.f92820z = d12;
        this.angle = d13;
    }

    public final void setAngle(double d10) {
        this.angle = d10;
    }

    public final void setX(double d10) {
        this.f92818x = d10;
    }

    public final void setY(double d10) {
        this.f92819y = d10;
    }

    public final void setZ(double d10) {
        this.f92820z = d10;
    }

    public String toString() {
        return "(" + this.f92818x + ", " + this.f92819y + ", " + this.f92820z + ", " + this.angle + ")";
    }

    public boolean equals(Object obj) {
        try {
            AxisAngle4d axisAngle4d = (AxisAngle4d) obj;
            if (this.f92818x == axisAngle4d.f92818x && this.f92819y == axisAngle4d.f92819y && this.f92820z == axisAngle4d.f92820z) {
                return this.angle == axisAngle4d.angle;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void set(double[] dArr) {
        this.f92818x = dArr[0];
        this.f92819y = dArr[1];
        this.f92820z = dArr[2];
        this.angle = dArr[3];
    }

    public AxisAngle4d(double[] dArr) {
        this.f92818x = dArr[0];
        this.f92819y = dArr[1];
        this.f92820z = dArr[2];
        this.angle = dArr[3];
    }

    public final void set(AxisAngle4d axisAngle4d) {
        this.f92818x = axisAngle4d.f92818x;
        this.f92819y = axisAngle4d.f92819y;
        this.f92820z = axisAngle4d.f92820z;
        this.angle = axisAngle4d.angle;
    }

    public AxisAngle4d(AxisAngle4d axisAngle4d) {
        this.f92818x = axisAngle4d.f92818x;
        this.f92819y = axisAngle4d.f92819y;
        this.f92820z = axisAngle4d.f92820z;
        this.angle = axisAngle4d.angle;
    }

    public final void set(AxisAngle4f axisAngle4f) {
        this.f92818x = axisAngle4f.f92821x;
        this.f92819y = axisAngle4f.f92822y;
        this.f92820z = axisAngle4f.f92823z;
        this.angle = axisAngle4f.angle;
    }

    public AxisAngle4d(AxisAngle4f axisAngle4f) {
        this.f92818x = axisAngle4f.f92821x;
        this.f92819y = axisAngle4f.f92822y;
        this.f92820z = axisAngle4f.f92823z;
        this.angle = axisAngle4f.angle;
    }

    public final void set(Vector3d vector3d, double d10) {
        this.f92818x = vector3d.f92833x;
        this.f92819y = vector3d.f92834y;
        this.f92820z = vector3d.f92835z;
        this.angle = d10;
    }

    public AxisAngle4d(Vector3d vector3d, double d10) {
        this.f92818x = vector3d.f92833x;
        this.f92819y = vector3d.f92834y;
        this.f92820z = vector3d.f92835z;
        this.angle = d10;
    }

    public final void set(Matrix4f matrix4f) {
        Matrix3d matrix3d = new Matrix3d();
        matrix4f.get(matrix3d);
        double d10 = (float) (matrix3d.m21 - matrix3d.m12);
        this.f92818x = d10;
        double d11 = (float) (matrix3d.m02 - matrix3d.m20);
        this.f92819y = d11;
        double d12 = (float) (matrix3d.m10 - matrix3d.m01);
        this.f92820z = d12;
        double d13 = (d10 * d10) + (d11 * d11) + (d12 * d12);
        if (d13 > 1.0E-12d) {
            double sqrt = Math.sqrt(d13);
            this.angle = (float) Math.atan2(sqrt * 0.5d, (((matrix3d.m00 + matrix3d.m11) + matrix3d.m22) - 1.0d) * 0.5d);
            double d14 = 1.0d / sqrt;
            this.f92818x *= d14;
            this.f92819y *= d14;
            this.f92820z *= d14;
            return;
        }
        this.f92818x = 0.0d;
        this.f92819y = 1.0d;
        this.f92820z = 0.0d;
        this.angle = 0.0d;
    }

    public AxisAngle4d() {
        this.f92818x = 0.0d;
        this.f92819y = 0.0d;
        this.f92820z = 1.0d;
        this.angle = 0.0d;
    }

    public final void set(Matrix4d matrix4d) {
        Matrix3d matrix3d = new Matrix3d();
        matrix4d.get(matrix3d);
        double d10 = (float) (matrix3d.m21 - matrix3d.m12);
        this.f92818x = d10;
        double d11 = (float) (matrix3d.m02 - matrix3d.m20);
        this.f92819y = d11;
        double d12 = (float) (matrix3d.m10 - matrix3d.m01);
        this.f92820z = d12;
        double d13 = (d10 * d10) + (d11 * d11) + (d12 * d12);
        if (d13 > 1.0E-12d) {
            double sqrt = Math.sqrt(d13);
            this.angle = (float) Math.atan2(sqrt * 0.5d, (((matrix3d.m00 + matrix3d.m11) + matrix3d.m22) - 1.0d) * 0.5d);
            double d14 = 1.0d / sqrt;
            this.f92818x *= d14;
            this.f92819y *= d14;
            this.f92820z *= d14;
            return;
        }
        this.f92818x = 0.0d;
        this.f92819y = 1.0d;
        this.f92820z = 0.0d;
        this.angle = 0.0d;
    }

    public final void set(Matrix3f matrix3f) {
        double d10 = matrix3f.m21 - matrix3f.m12;
        this.f92818x = d10;
        double d11 = matrix3f.m02 - matrix3f.m20;
        this.f92819y = d11;
        double d12 = matrix3f.m10 - matrix3f.m01;
        this.f92820z = d12;
        double d13 = (d10 * d10) + (d11 * d11) + (d12 * d12);
        if (d13 > 1.0E-12d) {
            double sqrt = Math.sqrt(d13);
            this.angle = (float) Math.atan2(sqrt * 0.5d, (((matrix3f.m00 + matrix3f.m11) + matrix3f.m22) - 1.0d) * 0.5d);
            double d14 = 1.0d / sqrt;
            this.f92818x *= d14;
            this.f92819y *= d14;
            this.f92820z *= d14;
            return;
        }
        this.f92818x = 0.0d;
        this.f92819y = 1.0d;
        this.f92820z = 0.0d;
        this.angle = 0.0d;
    }

    public final void set(Matrix3d matrix3d) {
        double d10 = (float) (matrix3d.m21 - matrix3d.m12);
        this.f92818x = d10;
        double d11 = (float) (matrix3d.m02 - matrix3d.m20);
        this.f92819y = d11;
        double d12 = (float) (matrix3d.m10 - matrix3d.m01);
        this.f92820z = d12;
        double d13 = (d10 * d10) + (d11 * d11) + (d12 * d12);
        if (d13 > 1.0E-12d) {
            double sqrt = Math.sqrt(d13);
            this.angle = (float) Math.atan2(sqrt * 0.5d, (((matrix3d.m00 + matrix3d.m11) + matrix3d.m22) - 1.0d) * 0.5d);
            double d14 = 1.0d / sqrt;
            this.f92818x *= d14;
            this.f92819y *= d14;
            this.f92820z *= d14;
            return;
        }
        this.f92818x = 0.0d;
        this.f92819y = 1.0d;
        this.f92820z = 0.0d;
        this.angle = 0.0d;
    }

    public final void set(Quat4f quat4f) {
        float f10 = quat4f.f92851x;
        float f11 = quat4f.f92852y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = quat4f.f92853z;
        double d10 = f12 + (f13 * f13);
        if (d10 > 1.0E-12d) {
            double sqrt = Math.sqrt(d10);
            double d11 = 1.0d / sqrt;
            this.f92818x = quat4f.f92851x * d11;
            this.f92819y = quat4f.f92852y * d11;
            this.f92820z = quat4f.f92853z * d11;
            this.angle = Math.atan2(sqrt, quat4f.f92850w) * 2.0d;
            return;
        }
        this.f92818x = 0.0d;
        this.f92819y = 1.0d;
        this.f92820z = 0.0d;
        this.angle = 0.0d;
    }

    public final void set(Quat4d quat4d) {
        double d10 = quat4d.f92847x;
        double d11 = quat4d.f92848y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = quat4d.f92849z;
        double d14 = d12 + (d13 * d13);
        if (d14 > 1.0E-12d) {
            double sqrt = Math.sqrt(d14);
            double d15 = 1.0d / sqrt;
            this.f92818x = quat4d.f92847x * d15;
            this.f92819y = quat4d.f92848y * d15;
            this.f92820z = quat4d.f92849z * d15;
            this.angle = Math.atan2(sqrt, quat4d.f92846w) * 2.0d;
            return;
        }
        this.f92818x = 0.0d;
        this.f92819y = 1.0d;
        this.f92820z = 0.0d;
        this.angle = 0.0d;
    }
}
