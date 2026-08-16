package javax.vecmath;

import java.io.Serializable;

public class Quat4f extends Tuple4f implements Serializable {
    static final double EPS = 1.0E-6d;
    static final double EPS2 = 1.0E-30d;
    static final double PIO2 = 1.57079632679d;
    static final long serialVersionUID = 2675933778405442383L;

    public Quat4f(float f10, float f11, float f12, float f13) {
        float sqrt = (float) (1.0d / Math.sqrt((((f10 * f10) + (f11 * f11)) + (f12 * f12)) + (f13 * f13)));
        this.f92851x = f10 * sqrt;
        this.f92852y = f11 * sqrt;
        this.f92853z = f12 * sqrt;
        this.f92850w = f13 * sqrt;
    }

    public final void conjugate(Quat4f quat4f) {
        this.f92851x = -quat4f.f92851x;
        this.f92852y = -quat4f.f92852y;
        this.f92853z = -quat4f.f92853z;
        this.f92850w = quat4f.f92850w;
    }

    public final void interpolate(Quat4f quat4f, float f10) {
        double d10;
        double d11;
        float f11 = this.f92851x;
        float f12 = quat4f.f92851x;
        float f13 = this.f92852y;
        float f14 = quat4f.f92852y;
        float f15 = (f11 * f12) + (f13 * f14);
        float f16 = this.f92853z;
        float f17 = quat4f.f92853z;
        float f18 = f15 + (f16 * f17);
        float f19 = this.f92850w;
        float f20 = quat4f.f92850w;
        double d12 = f18 + (f19 * f20);
        if (d12 < 0.0d) {
            quat4f.f92851x = -f12;
            quat4f.f92852y = -f14;
            quat4f.f92853z = -f17;
            quat4f.f92850w = -f20;
            d12 = -d12;
        }
        if (1.0d - d12 > 1.0E-6d) {
            double acos = Math.acos(d12);
            double sin = Math.sin(acos);
            double d13 = f10;
            d11 = Math.sin((1.0d - d13) * acos) / sin;
            d10 = Math.sin(d13 * acos) / sin;
        } else {
            d10 = f10;
            d11 = 1.0d - d10;
        }
        this.f92850w = (float) ((this.f92850w * d11) + (quat4f.f92850w * d10));
        this.f92851x = (float) ((this.f92851x * d11) + (quat4f.f92851x * d10));
        this.f92852y = (float) ((this.f92852y * d11) + (quat4f.f92852y * d10));
        this.f92853z = (float) ((d11 * this.f92853z) + (d10 * quat4f.f92853z));
    }

    public final void inverse(Quat4f quat4f) {
        float f10 = quat4f.f92850w;
        float f11 = quat4f.f92851x;
        float f12 = quat4f.f92852y;
        float f13 = quat4f.f92853z;
        float f14 = 1.0f / ((((f10 * f10) + (f11 * f11)) + (f12 * f12)) + (f13 * f13));
        this.f92850w = f10 * f14;
        float f15 = -f14;
        this.f92851x = f11 * f15;
        this.f92852y = f12 * f15;
        this.f92853z = f15 * f13;
    }

    public final void mul(Quat4f quat4f, Quat4f quat4f2) {
        if (this != quat4f && this != quat4f2) {
            float f10 = quat4f.f92850w * quat4f2.f92850w;
            float f11 = quat4f.f92851x;
            float f12 = quat4f2.f92851x;
            float f13 = quat4f.f92852y;
            float f14 = quat4f2.f92852y;
            float f15 = quat4f.f92853z;
            float f16 = quat4f2.f92853z;
            this.f92850w = ((f10 - (f11 * f12)) - (f13 * f14)) - (f15 * f16);
            float f17 = quat4f.f92850w;
            float f18 = quat4f2.f92850w;
            this.f92851x = (((f12 * f17) + (f11 * f18)) + (f13 * f16)) - (f15 * f14);
            float f19 = quat4f.f92851x;
            float f20 = quat4f2.f92851x;
            this.f92852y = (((f14 * f17) + (f13 * f18)) - (f19 * f16)) + (f15 * f20);
            this.f92853z = (((f17 * f16) + (f18 * f15)) + (f19 * quat4f2.f92852y)) - (quat4f.f92852y * f20);
            return;
        }
        float f21 = quat4f.f92850w;
        float f22 = quat4f2.f92850w;
        float f23 = quat4f.f92851x;
        float f24 = quat4f2.f92851x;
        float f25 = quat4f.f92852y;
        float f26 = quat4f2.f92852y;
        float f27 = quat4f.f92853z;
        float f28 = quat4f2.f92853z;
        this.f92853z = (((f21 * f28) + (f22 * f27)) + (f23 * f26)) - (f25 * f24);
        this.f92850w = (((f21 * f22) - (f23 * f24)) - (f25 * f26)) - (f27 * f28);
        this.f92851x = (((f21 * f24) + (f22 * f23)) + (f25 * f28)) - (f27 * f26);
        this.f92852y = (((f21 * f26) + (f22 * f25)) - (f23 * f28)) + (f27 * f24);
    }

    public final void mulInverse(Quat4f quat4f, Quat4f quat4f2) {
        Quat4f quat4f3 = new Quat4f(quat4f2);
        quat4f3.inverse();
        mul(quat4f, quat4f3);
    }

    public final void normalize(Quat4f quat4f) {
        float f10 = quat4f.f92851x;
        float f11 = quat4f.f92852y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = quat4f.f92853z;
        float f14 = f12 + (f13 * f13);
        float f15 = quat4f.f92850w;
        float f16 = f14 + (f15 * f15);
        if (f16 > 0.0f) {
            float sqrt = 1.0f / ((float) Math.sqrt(f16));
            this.f92851x = quat4f.f92851x * sqrt;
            this.f92852y = quat4f.f92852y * sqrt;
            this.f92853z = quat4f.f92853z * sqrt;
            this.f92850w = sqrt * quat4f.f92850w;
            return;
        }
        this.f92851x = 0.0f;
        this.f92852y = 0.0f;
        this.f92853z = 0.0f;
        this.f92850w = 0.0f;
    }

    public final void set(Matrix4f matrix4f) {
        float f10 = matrix4f.m00;
        float f11 = matrix4f.m11;
        float f12 = matrix4f.m22;
        float f13 = (f10 + f11 + f12 + matrix4f.m33) * 0.25f;
        if (f13 < 0.0f) {
            this.f92850w = 0.0f;
            this.f92851x = 0.0f;
            this.f92852y = 0.0f;
            this.f92853z = 1.0f;
            return;
        }
        double d10 = f13;
        if (d10 >= EPS2) {
            float sqrt = (float) Math.sqrt(d10);
            this.f92850w = sqrt;
            float f14 = 0.25f / sqrt;
            this.f92851x = (matrix4f.m21 - matrix4f.m12) * f14;
            this.f92852y = (matrix4f.m02 - matrix4f.m20) * f14;
            this.f92853z = (matrix4f.m10 - matrix4f.m01) * f14;
            return;
        }
        this.f92850w = 0.0f;
        float f15 = (f11 + f12) * (-0.5f);
        if (f15 < 0.0f) {
            this.f92851x = 0.0f;
            this.f92852y = 0.0f;
            this.f92853z = 1.0f;
            return;
        }
        double d11 = f15;
        if (d11 >= EPS2) {
            float sqrt2 = (float) Math.sqrt(d11);
            this.f92851x = sqrt2;
            float f16 = 1.0f / (sqrt2 * 2.0f);
            this.f92852y = matrix4f.m10 * f16;
            this.f92853z = matrix4f.m20 * f16;
            return;
        }
        this.f92851x = 0.0f;
        double d12 = (1.0f - f12) * 0.5f;
        if (d12 >= EPS2) {
            float sqrt3 = (float) Math.sqrt(d12);
            this.f92852y = sqrt3;
            this.f92853z = matrix4f.m21 / (sqrt3 * 2.0f);
        } else {
            this.f92852y = 0.0f;
            this.f92853z = 1.0f;
        }
    }

    public final void mulInverse(Quat4f quat4f) {
        Quat4f quat4f2 = new Quat4f(quat4f);
        quat4f2.inverse();
        mul(quat4f2);
    }

    public final void conjugate() {
        this.f92851x = -this.f92851x;
        this.f92852y = -this.f92852y;
        this.f92853z = -this.f92853z;
    }

    public final void inverse() {
        float f10 = this.f92850w;
        float f11 = this.f92851x;
        float f12 = this.f92852y;
        float f13 = this.f92853z;
        float f14 = 1.0f / ((((f10 * f10) + (f11 * f11)) + (f12 * f12)) + (f13 * f13));
        this.f92850w = f10 * f14;
        float f15 = -f14;
        this.f92851x = f11 * f15;
        this.f92852y = f12 * f15;
        this.f92853z = f13 * f15;
    }

    public Quat4f(float[] fArr) {
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[2];
        float f13 = fArr[3];
        float sqrt = (float) (1.0d / Math.sqrt((((f10 * f10) + (f11 * f11)) + (f12 * f12)) + (f13 * f13)));
        this.f92851x = fArr[0] * sqrt;
        this.f92852y = fArr[1] * sqrt;
        this.f92853z = fArr[2] * sqrt;
        this.f92850w = fArr[3] * sqrt;
    }

    public final void mul(Quat4f quat4f) {
        float f10 = this.f92850w;
        float f11 = quat4f.f92850w;
        float f12 = this.f92851x;
        float f13 = quat4f.f92851x;
        float f14 = this.f92852y;
        float f15 = quat4f.f92852y;
        float f16 = this.f92853z;
        float f17 = quat4f.f92853z;
        this.f92853z = (((f10 * f17) + (f11 * f16)) + (f12 * f15)) - (f14 * f13);
        this.f92850w = (((f10 * f11) - (f12 * f13)) - (f14 * f15)) - (f16 * f17);
        this.f92851x = (((f10 * f13) + (f11 * f12)) + (f14 * f17)) - (f16 * f15);
        this.f92852y = (((f10 * f15) + (f11 * f14)) - (f12 * f17)) + (f16 * f13);
    }

    public final void interpolate(Quat4f quat4f, Quat4f quat4f2, float f10) {
        double d10;
        double d11;
        float f11 = quat4f2.f92851x;
        float f12 = quat4f.f92851x;
        float f13 = quat4f2.f92852y;
        float f14 = quat4f.f92852y;
        float f15 = (f11 * f12) + (f13 * f14);
        float f16 = quat4f2.f92853z;
        float f17 = quat4f.f92853z;
        float f18 = f15 + (f16 * f17);
        float f19 = quat4f2.f92850w;
        float f20 = quat4f.f92850w;
        double d12 = f18 + (f19 * f20);
        if (d12 < 0.0d) {
            quat4f.f92851x = -f12;
            quat4f.f92852y = -f14;
            quat4f.f92853z = -f17;
            quat4f.f92850w = -f20;
            d12 = -d12;
        }
        if (1.0d - d12 > 1.0E-6d) {
            double acos = Math.acos(d12);
            double sin = Math.sin(acos);
            double d13 = f10;
            d11 = Math.sin((1.0d - d13) * acos) / sin;
            d10 = Math.sin(d13 * acos) / sin;
        } else {
            d10 = f10;
            d11 = 1.0d - d10;
        }
        this.f92850w = (float) ((quat4f.f92850w * d11) + (quat4f2.f92850w * d10));
        this.f92851x = (float) ((quat4f.f92851x * d11) + (quat4f2.f92851x * d10));
        this.f92852y = (float) ((quat4f.f92852y * d11) + (quat4f2.f92852y * d10));
        this.f92853z = (float) ((d11 * quat4f.f92853z) + (d10 * quat4f2.f92853z));
    }

    public final void normalize() {
        float f10 = this.f92851x;
        float f11 = this.f92852y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.f92853z;
        float f14 = f12 + (f13 * f13);
        float f15 = this.f92850w;
        float f16 = f14 + (f15 * f15);
        if (f16 > 0.0f) {
            float sqrt = 1.0f / ((float) Math.sqrt(f16));
            this.f92851x *= sqrt;
            this.f92852y *= sqrt;
            this.f92853z *= sqrt;
            this.f92850w *= sqrt;
            return;
        }
        this.f92851x = 0.0f;
        this.f92852y = 0.0f;
        this.f92853z = 0.0f;
        this.f92850w = 0.0f;
    }

    public Quat4f(Quat4f quat4f) {
        super(quat4f);
    }

    public Quat4f(Quat4d quat4d) {
        super(quat4d);
    }

    public Quat4f(Tuple4f tuple4f) {
        float f10 = tuple4f.f92851x;
        float f11 = tuple4f.f92852y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = tuple4f.f92853z;
        float f14 = f12 + (f13 * f13);
        float f15 = tuple4f.f92850w;
        float sqrt = (float) (1.0d / Math.sqrt(f14 + (f15 * f15)));
        this.f92851x = tuple4f.f92851x * sqrt;
        this.f92852y = tuple4f.f92852y * sqrt;
        this.f92853z = tuple4f.f92853z * sqrt;
        this.f92850w = tuple4f.f92850w * sqrt;
    }

    public Quat4f(Tuple4d tuple4d) {
        double d10 = tuple4d.f92847x;
        double d11 = tuple4d.f92848y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = tuple4d.f92849z;
        double d14 = d12 + (d13 * d13);
        double d15 = tuple4d.f92846w;
        double sqrt = 1.0d / Math.sqrt(d14 + (d15 * d15));
        this.f92851x = (float) (tuple4d.f92847x * sqrt);
        this.f92852y = (float) (tuple4d.f92848y * sqrt);
        this.f92853z = (float) (tuple4d.f92849z * sqrt);
        this.f92850w = (float) (tuple4d.f92846w * sqrt);
    }

    public final void set(Matrix4d matrix4d) {
        double d10 = matrix4d.m00;
        double d11 = matrix4d.m11;
        double d12 = matrix4d.m22;
        double d13 = (d10 + d11 + d12 + matrix4d.m33) * 0.25d;
        if (d13 < 0.0d) {
            this.f92850w = 0.0f;
            this.f92851x = 0.0f;
            this.f92852y = 0.0f;
            this.f92853z = 1.0f;
            return;
        }
        if (d13 >= EPS2) {
            float sqrt = (float) Math.sqrt(d13);
            this.f92850w = sqrt;
            double d14 = 0.25d / sqrt;
            this.f92851x = (float) ((matrix4d.m21 - matrix4d.m12) * d14);
            this.f92852y = (float) ((matrix4d.m02 - matrix4d.m20) * d14);
            this.f92853z = (float) ((matrix4d.m10 - matrix4d.m01) * d14);
            return;
        }
        this.f92850w = 0.0f;
        double d15 = (d11 + d12) * (-0.5d);
        if (d15 < 0.0d) {
            this.f92851x = 0.0f;
            this.f92852y = 0.0f;
            this.f92853z = 1.0f;
            return;
        }
        if (d15 >= EPS2) {
            float sqrt2 = (float) Math.sqrt(d15);
            this.f92851x = sqrt2;
            double d16 = 0.5d / sqrt2;
            this.f92852y = (float) (matrix4d.m10 * d16);
            this.f92853z = (float) (matrix4d.m20 * d16);
            return;
        }
        this.f92851x = 0.0f;
        double d17 = (1.0d - d12) * 0.5d;
        if (d17 >= EPS2) {
            float sqrt3 = (float) Math.sqrt(d17);
            this.f92852y = sqrt3;
            this.f92853z = (float) (matrix4d.m21 / (sqrt3 * 2.0d));
        } else {
            this.f92852y = 0.0f;
            this.f92853z = 1.0f;
        }
    }

    public Quat4f() {
    }

    public final void set(Matrix3f matrix3f) {
        float f10 = matrix3f.m00;
        float f11 = matrix3f.m11;
        float f12 = matrix3f.m22;
        float f13 = (f10 + f11 + f12 + 1.0f) * 0.25f;
        if (f13 < 0.0f) {
            this.f92850w = 0.0f;
            this.f92851x = 0.0f;
            this.f92852y = 0.0f;
            this.f92853z = 1.0f;
            return;
        }
        double d10 = f13;
        if (d10 >= EPS2) {
            float sqrt = (float) Math.sqrt(d10);
            this.f92850w = sqrt;
            float f14 = 0.25f / sqrt;
            this.f92851x = (matrix3f.m21 - matrix3f.m12) * f14;
            this.f92852y = (matrix3f.m02 - matrix3f.m20) * f14;
            this.f92853z = (matrix3f.m10 - matrix3f.m01) * f14;
            return;
        }
        this.f92850w = 0.0f;
        float f15 = (f11 + f12) * (-0.5f);
        if (f15 < 0.0f) {
            this.f92851x = 0.0f;
            this.f92852y = 0.0f;
            this.f92853z = 1.0f;
            return;
        }
        double d11 = f15;
        if (d11 >= EPS2) {
            float sqrt2 = (float) Math.sqrt(d11);
            this.f92851x = sqrt2;
            float f16 = 0.5f / sqrt2;
            this.f92852y = matrix3f.m10 * f16;
            this.f92853z = matrix3f.m20 * f16;
            return;
        }
        this.f92851x = 0.0f;
        double d12 = (1.0f - f12) * 0.5f;
        if (d12 >= EPS2) {
            float sqrt3 = (float) Math.sqrt(d12);
            this.f92852y = sqrt3;
            this.f92853z = matrix3f.m21 / (sqrt3 * 2.0f);
        } else {
            this.f92852y = 0.0f;
            this.f92853z = 1.0f;
        }
    }

    public final void set(Matrix3d matrix3d) {
        double d10 = matrix3d.m00;
        double d11 = matrix3d.m11;
        double d12 = matrix3d.m22;
        double d13 = (d10 + d11 + d12 + 1.0d) * 0.25d;
        if (d13 < 0.0d) {
            this.f92850w = 0.0f;
            this.f92851x = 0.0f;
            this.f92852y = 0.0f;
            this.f92853z = 1.0f;
            return;
        }
        if (d13 >= EPS2) {
            float sqrt = (float) Math.sqrt(d13);
            this.f92850w = sqrt;
            double d14 = 0.25d / sqrt;
            this.f92851x = (float) ((matrix3d.m21 - matrix3d.m12) * d14);
            this.f92852y = (float) ((matrix3d.m02 - matrix3d.m20) * d14);
            this.f92853z = (float) ((matrix3d.m10 - matrix3d.m01) * d14);
            return;
        }
        this.f92850w = 0.0f;
        double d15 = (d11 + d12) * (-0.5d);
        if (d15 < 0.0d) {
            this.f92851x = 0.0f;
            this.f92852y = 0.0f;
            this.f92853z = 1.0f;
            return;
        }
        if (d15 >= EPS2) {
            float sqrt2 = (float) Math.sqrt(d15);
            this.f92851x = sqrt2;
            double d16 = 0.5d / sqrt2;
            this.f92852y = (float) (matrix3d.m10 * d16);
            this.f92853z = (float) (matrix3d.m20 * d16);
            return;
        }
        this.f92851x = 0.0f;
        double d17 = (1.0d - d12) * 0.5d;
        if (d17 >= EPS2) {
            float sqrt3 = (float) Math.sqrt(d17);
            this.f92852y = sqrt3;
            this.f92853z = (float) (matrix3d.m21 / (sqrt3 * 2.0d));
        } else {
            this.f92852y = 0.0f;
            this.f92853z = 1.0f;
        }
    }

    public final void set(AxisAngle4f axisAngle4f) {
        float f10 = axisAngle4f.f92821x;
        float f11 = axisAngle4f.f92822y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = axisAngle4f.f92823z;
        float sqrt = (float) Math.sqrt(f12 + (f13 * f13));
        if (sqrt < 1.0E-6d) {
            this.f92850w = 0.0f;
            this.f92851x = 0.0f;
            this.f92852y = 0.0f;
            this.f92853z = 0.0f;
            return;
        }
        float f14 = 1.0f / sqrt;
        float sin = (float) Math.sin(axisAngle4f.angle / 2.0d);
        this.f92850w = (float) Math.cos(axisAngle4f.angle / 2.0d);
        this.f92851x = axisAngle4f.f92821x * f14 * sin;
        this.f92852y = axisAngle4f.f92822y * f14 * sin;
        this.f92853z = axisAngle4f.f92823z * f14 * sin;
    }

    public final void set(AxisAngle4d axisAngle4d) {
        double d10 = axisAngle4d.f92818x;
        double d11 = axisAngle4d.f92819y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = axisAngle4d.f92820z;
        float sqrt = (float) (1.0d / Math.sqrt(d12 + (d13 * d13)));
        if (sqrt < 1.0E-6d) {
            this.f92850w = 0.0f;
            this.f92851x = 0.0f;
            this.f92852y = 0.0f;
            this.f92853z = 0.0f;
            return;
        }
        float f10 = 1.0f / sqrt;
        float sin = (float) Math.sin(axisAngle4d.angle / 2.0d);
        this.f92850w = (float) Math.cos(axisAngle4d.angle / 2.0d);
        this.f92851x = ((float) axisAngle4d.f92818x) * f10 * sin;
        this.f92852y = ((float) axisAngle4d.f92819y) * f10 * sin;
        this.f92853z = ((float) axisAngle4d.f92820z) * f10 * sin;
    }
}
