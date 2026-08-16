package javax.vecmath;

import java.io.Serializable;

public class AxisAngle4f implements Serializable, Cloneable {
    static final double EPS = 1.0E-6d;
    static final long serialVersionUID = -163246355858070601L;
    public float angle;

    public float f92821x;

    public float f92822y;

    public float f92823z;

    public AxisAngle4f(float f10, float f11, float f12, float f13) {
        this.f92821x = f10;
        this.f92822y = f11;
        this.f92823z = f12;
        this.angle = f13;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public boolean epsilonEquals(AxisAngle4f axisAngle4f, float f10) {
        float f11 = this.f92821x - axisAngle4f.f92821x;
        if (f11 < 0.0f) {
            f11 = -f11;
        }
        if (f11 > f10) {
            return false;
        }
        float f12 = this.f92822y - axisAngle4f.f92822y;
        if (f12 < 0.0f) {
            f12 = -f12;
        }
        if (f12 > f10) {
            return false;
        }
        float f13 = this.f92823z - axisAngle4f.f92823z;
        if (f13 < 0.0f) {
            f13 = -f13;
        }
        if (f13 > f10) {
            return false;
        }
        float f14 = this.angle - axisAngle4f.angle;
        if (f14 < 0.0f) {
            f14 = -f14;
        }
        return f14 <= f10;
    }

    public boolean equals(AxisAngle4f axisAngle4f) {
        try {
            if (this.f92821x == axisAngle4f.f92821x && this.f92822y == axisAngle4f.f92822y && this.f92823z == axisAngle4f.f92823z) {
                return this.angle == axisAngle4f.angle;
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final void get(float[] fArr) {
        fArr[0] = this.f92821x;
        fArr[1] = this.f92822y;
        fArr[2] = this.f92823z;
        fArr[3] = this.angle;
    }

    public final float getAngle() {
        return this.angle;
    }

    public final float getX() {
        return this.f92821x;
    }

    public final float getY() {
        return this.f92822y;
    }

    public final float getZ() {
        return this.f92823z;
    }

    public int hashCode() {
        long floatToIntBits = ((((((VecMathUtil.floatToIntBits(this.f92821x) + 31) * 31) + VecMathUtil.floatToIntBits(this.f92822y)) * 31) + VecMathUtil.floatToIntBits(this.f92823z)) * 31) + VecMathUtil.floatToIntBits(this.angle);
        return (int) (floatToIntBits ^ (floatToIntBits >> 32));
    }

    public final void set(float f10, float f11, float f12, float f13) {
        this.f92821x = f10;
        this.f92822y = f11;
        this.f92823z = f12;
        this.angle = f13;
    }

    public final void setAngle(float f10) {
        this.angle = f10;
    }

    public final void setX(float f10) {
        this.f92821x = f10;
    }

    public final void setY(float f10) {
        this.f92822y = f10;
    }

    public final void setZ(float f10) {
        this.f92823z = f10;
    }

    public String toString() {
        return "(" + this.f92821x + ", " + this.f92822y + ", " + this.f92823z + ", " + this.angle + ")";
    }

    public boolean equals(Object obj) {
        try {
            AxisAngle4f axisAngle4f = (AxisAngle4f) obj;
            if (this.f92821x == axisAngle4f.f92821x && this.f92822y == axisAngle4f.f92822y && this.f92823z == axisAngle4f.f92823z) {
                return this.angle == axisAngle4f.angle;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void set(float[] fArr) {
        this.f92821x = fArr[0];
        this.f92822y = fArr[1];
        this.f92823z = fArr[2];
        this.angle = fArr[3];
    }

    public AxisAngle4f(float[] fArr) {
        this.f92821x = fArr[0];
        this.f92822y = fArr[1];
        this.f92823z = fArr[2];
        this.angle = fArr[3];
    }

    public final void set(AxisAngle4f axisAngle4f) {
        this.f92821x = axisAngle4f.f92821x;
        this.f92822y = axisAngle4f.f92822y;
        this.f92823z = axisAngle4f.f92823z;
        this.angle = axisAngle4f.angle;
    }

    public AxisAngle4f(AxisAngle4f axisAngle4f) {
        this.f92821x = axisAngle4f.f92821x;
        this.f92822y = axisAngle4f.f92822y;
        this.f92823z = axisAngle4f.f92823z;
        this.angle = axisAngle4f.angle;
    }

    public final void set(AxisAngle4d axisAngle4d) {
        this.f92821x = (float) axisAngle4d.f92818x;
        this.f92822y = (float) axisAngle4d.f92819y;
        this.f92823z = (float) axisAngle4d.f92820z;
        this.angle = (float) axisAngle4d.angle;
    }

    public AxisAngle4f(AxisAngle4d axisAngle4d) {
        this.f92821x = (float) axisAngle4d.f92818x;
        this.f92822y = (float) axisAngle4d.f92819y;
        this.f92823z = (float) axisAngle4d.f92820z;
        this.angle = (float) axisAngle4d.angle;
    }

    public final void set(Vector3f vector3f, float f10) {
        this.f92821x = vector3f.f92836x;
        this.f92822y = vector3f.f92837y;
        this.f92823z = vector3f.f92838z;
        this.angle = f10;
    }

    public AxisAngle4f(Vector3f vector3f, float f10) {
        this.f92821x = vector3f.f92836x;
        this.f92822y = vector3f.f92837y;
        this.f92823z = vector3f.f92838z;
        this.angle = f10;
    }

    public final void set(Quat4f quat4f) {
        float f10 = quat4f.f92851x;
        float f11 = quat4f.f92852y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = quat4f.f92853z;
        double d10 = f12 + (f13 * f13);
        if (d10 > 1.0E-6d) {
            double sqrt = Math.sqrt(d10);
            double d11 = 1.0d / sqrt;
            this.f92821x = (float) (quat4f.f92851x * d11);
            this.f92822y = (float) (quat4f.f92852y * d11);
            this.f92823z = (float) (quat4f.f92853z * d11);
            this.angle = (float) (Math.atan2(sqrt, quat4f.f92850w) * 2.0d);
            return;
        }
        this.f92821x = 0.0f;
        this.f92822y = 1.0f;
        this.f92823z = 0.0f;
        this.angle = 0.0f;
    }

    public AxisAngle4f() {
        this.f92821x = 0.0f;
        this.f92822y = 0.0f;
        this.f92823z = 1.0f;
        this.angle = 0.0f;
    }

    public final void set(Quat4d quat4d) {
        double d10 = quat4d.f92847x;
        double d11 = quat4d.f92848y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = quat4d.f92849z;
        double d14 = d12 + (d13 * d13);
        if (d14 > 1.0E-6d) {
            double sqrt = Math.sqrt(d14);
            double d15 = 1.0d / sqrt;
            this.f92821x = (float) (quat4d.f92847x * d15);
            this.f92822y = (float) (quat4d.f92848y * d15);
            this.f92823z = (float) (quat4d.f92849z * d15);
            this.angle = (float) (Math.atan2(sqrt, quat4d.f92846w) * 2.0d);
            return;
        }
        this.f92821x = 0.0f;
        this.f92822y = 1.0f;
        this.f92823z = 0.0f;
        this.angle = 0.0f;
    }

    public final void set(Matrix4f matrix4f) {
        Matrix3f matrix3f = new Matrix3f();
        matrix4f.get(matrix3f);
        float f10 = matrix3f.m21 - matrix3f.m12;
        this.f92821x = f10;
        float f11 = matrix3f.m02 - matrix3f.m20;
        this.f92822y = f11;
        float f12 = matrix3f.m10 - matrix3f.m01;
        this.f92823z = f12;
        double d10 = (f10 * f10) + (f11 * f11) + (f12 * f12);
        if (d10 > 1.0E-6d) {
            double sqrt = Math.sqrt(d10);
            this.angle = (float) Math.atan2(sqrt * 0.5d, (((matrix3f.m00 + matrix3f.m11) + matrix3f.m22) - 1.0d) * 0.5d);
            double d11 = 1.0d / sqrt;
            this.f92821x = (float) (this.f92821x * d11);
            this.f92822y = (float) (this.f92822y * d11);
            this.f92823z = (float) (this.f92823z * d11);
            return;
        }
        this.f92821x = 0.0f;
        this.f92822y = 1.0f;
        this.f92823z = 0.0f;
        this.angle = 0.0f;
    }

    public final void set(Matrix4d matrix4d) {
        Matrix3d matrix3d = new Matrix3d();
        matrix4d.get(matrix3d);
        float f10 = (float) (matrix3d.m21 - matrix3d.m12);
        this.f92821x = f10;
        float f11 = (float) (matrix3d.m02 - matrix3d.m20);
        this.f92822y = f11;
        float f12 = (float) (matrix3d.m10 - matrix3d.m01);
        this.f92823z = f12;
        double d10 = (f10 * f10) + (f11 * f11) + (f12 * f12);
        if (d10 > 1.0E-6d) {
            double sqrt = Math.sqrt(d10);
            this.angle = (float) Math.atan2(sqrt * 0.5d, (((matrix3d.m00 + matrix3d.m11) + matrix3d.m22) - 1.0d) * 0.5d);
            double d11 = 1.0d / sqrt;
            this.f92821x = (float) (this.f92821x * d11);
            this.f92822y = (float) (this.f92822y * d11);
            this.f92823z = (float) (this.f92823z * d11);
            return;
        }
        this.f92821x = 0.0f;
        this.f92822y = 1.0f;
        this.f92823z = 0.0f;
        this.angle = 0.0f;
    }

    public final void set(Matrix3f matrix3f) {
        float f10 = matrix3f.m21 - matrix3f.m12;
        this.f92821x = f10;
        float f11 = matrix3f.m02 - matrix3f.m20;
        this.f92822y = f11;
        float f12 = matrix3f.m10 - matrix3f.m01;
        this.f92823z = f12;
        double d10 = (f10 * f10) + (f11 * f11) + (f12 * f12);
        if (d10 > 1.0E-6d) {
            double sqrt = Math.sqrt(d10);
            this.angle = (float) Math.atan2(sqrt * 0.5d, (((matrix3f.m00 + matrix3f.m11) + matrix3f.m22) - 1.0d) * 0.5d);
            double d11 = 1.0d / sqrt;
            this.f92821x = (float) (this.f92821x * d11);
            this.f92822y = (float) (this.f92822y * d11);
            this.f92823z = (float) (this.f92823z * d11);
            return;
        }
        this.f92821x = 0.0f;
        this.f92822y = 1.0f;
        this.f92823z = 0.0f;
        this.angle = 0.0f;
    }

    public final void set(Matrix3d matrix3d) {
        float f10 = (float) (matrix3d.m21 - matrix3d.m12);
        this.f92821x = f10;
        float f11 = (float) (matrix3d.m02 - matrix3d.m20);
        this.f92822y = f11;
        float f12 = (float) (matrix3d.m10 - matrix3d.m01);
        this.f92823z = f12;
        double d10 = (f10 * f10) + (f11 * f11) + (f12 * f12);
        if (d10 > 1.0E-6d) {
            double sqrt = Math.sqrt(d10);
            this.angle = (float) Math.atan2(sqrt * 0.5d, (((matrix3d.m00 + matrix3d.m11) + matrix3d.m22) - 1.0d) * 0.5d);
            double d11 = 1.0d / sqrt;
            this.f92821x = (float) (this.f92821x * d11);
            this.f92822y = (float) (this.f92822y * d11);
            this.f92823z = (float) (this.f92823z * d11);
            return;
        }
        this.f92821x = 0.0f;
        this.f92822y = 1.0f;
        this.f92823z = 0.0f;
        this.angle = 0.0f;
    }
}
