package javax.vecmath;

import java.io.Serializable;

public class Quat4d extends Tuple4d implements Serializable {
    static final double EPS = 1.0E-12d;
    static final double EPS2 = 1.0E-30d;
    static final double PIO2 = 1.57079632679d;
    static final long serialVersionUID = 7577479888820201099L;

    public Quat4d(double d10, double d11, double d12, double d13) {
        double sqrt = 1.0d / Math.sqrt((((d10 * d10) + (d11 * d11)) + (d12 * d12)) + (d13 * d13));
        this.f92847x = d10 * sqrt;
        this.f92848y = d11 * sqrt;
        this.f92849z = d12 * sqrt;
        this.f92846w = d13 * sqrt;
    }

    public final void conjugate(Quat4d quat4d) {
        this.f92847x = -quat4d.f92847x;
        this.f92848y = -quat4d.f92848y;
        this.f92849z = -quat4d.f92849z;
        this.f92846w = quat4d.f92846w;
    }

    public final void interpolate(Quat4d quat4d, double d10) {
        double d11;
        double d12 = this.f92847x;
        double d13 = quat4d.f92847x;
        double d14 = this.f92848y;
        double d15 = quat4d.f92848y;
        double d16 = (d12 * d13) + (d14 * d15);
        double d17 = this.f92849z;
        double d18 = quat4d.f92849z;
        double d19 = d16 + (d17 * d18);
        double d20 = this.f92846w;
        double d21 = quat4d.f92846w;
        double d22 = d19 + (d20 * d21);
        if (d22 < 0.0d) {
            quat4d.f92847x = -d13;
            quat4d.f92848y = -d15;
            quat4d.f92849z = -d18;
            quat4d.f92846w = -d21;
            d22 = -d22;
        }
        if (1.0d - d22 > 1.0E-12d) {
            double acos = Math.acos(d22);
            double sin = Math.sin(acos);
            d11 = Math.sin((1.0d - d10) * acos) / sin;
            d10 = Math.sin(d10 * acos) / sin;
        } else {
            d11 = 1.0d - d10;
        }
        this.f92846w = (this.f92846w * d11) + (quat4d.f92846w * d10);
        this.f92847x = (this.f92847x * d11) + (quat4d.f92847x * d10);
        this.f92848y = (this.f92848y * d11) + (quat4d.f92848y * d10);
        this.f92849z = (d11 * this.f92849z) + (d10 * quat4d.f92849z);
    }

    public final void inverse(Quat4d quat4d) {
        double d10 = quat4d.f92846w;
        double d11 = quat4d.f92847x;
        double d12 = quat4d.f92848y;
        double d13 = quat4d.f92849z;
        double d14 = 1.0d / ((((d10 * d10) + (d11 * d11)) + (d12 * d12)) + (d13 * d13));
        this.f92846w = d10 * d14;
        double d15 = -d14;
        this.f92847x = d11 * d15;
        this.f92848y = d12 * d15;
        this.f92849z = d15 * d13;
    }

    public final void mul(Quat4d quat4d, Quat4d quat4d2) {
        if (this != quat4d && this != quat4d2) {
            double d10 = quat4d.f92846w * quat4d2.f92846w;
            double d11 = quat4d.f92847x;
            double d12 = quat4d2.f92847x;
            double d13 = quat4d.f92848y;
            double d14 = quat4d2.f92848y;
            double d15 = (d10 - (d11 * d12)) - (d13 * d14);
            double d16 = quat4d.f92849z;
            double d17 = quat4d2.f92849z;
            this.f92846w = d15 - (d16 * d17);
            double d18 = quat4d.f92846w;
            double d19 = d12 * d18;
            double d20 = quat4d2.f92846w;
            this.f92847x = ((d19 + (d11 * d20)) + (d13 * d17)) - (d16 * d14);
            double d21 = quat4d.f92847x;
            double d22 = ((d18 * d14) + (d13 * d20)) - (d21 * d17);
            double d23 = quat4d2.f92847x;
            this.f92848y = d22 + (d16 * d23);
            this.f92849z = (((d18 * d17) + (d20 * d16)) + (d21 * quat4d2.f92848y)) - (quat4d.f92848y * d23);
            return;
        }
        double d24 = quat4d.f92846w;
        double d25 = quat4d2.f92846w;
        double d26 = quat4d.f92847x;
        double d27 = quat4d2.f92847x;
        double d28 = (d24 * d25) - (d26 * d27);
        double d29 = quat4d.f92848y;
        double d30 = quat4d2.f92848y;
        double d31 = d28 - (d29 * d30);
        double d32 = quat4d.f92849z;
        double d33 = quat4d2.f92849z;
        double d34 = d31 - (d32 * d33);
        this.f92849z = (((d24 * d33) + (d25 * d32)) + (d26 * d30)) - (d29 * d27);
        this.f92846w = d34;
        this.f92847x = (((d24 * d27) + (d25 * d26)) + (d29 * d33)) - (d32 * d30);
        this.f92848y = (((d24 * d30) + (d25 * d29)) - (d26 * d33)) + (d32 * d27);
    }

    public final void mulInverse(Quat4d quat4d, Quat4d quat4d2) {
        Quat4d quat4d3 = new Quat4d(quat4d2);
        quat4d3.inverse();
        mul(quat4d, quat4d3);
    }

    public final void normalize(Quat4d quat4d) {
        double d10 = quat4d.f92847x;
        double d11 = quat4d.f92848y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = quat4d.f92849z;
        double d14 = d12 + (d13 * d13);
        double d15 = quat4d.f92846w;
        double d16 = d14 + (d15 * d15);
        if (d16 > 0.0d) {
            double sqrt = 1.0d / Math.sqrt(d16);
            this.f92847x = quat4d.f92847x * sqrt;
            this.f92848y = quat4d.f92848y * sqrt;
            this.f92849z = quat4d.f92849z * sqrt;
            this.f92846w = sqrt * quat4d.f92846w;
            return;
        }
        this.f92847x = 0.0d;
        this.f92848y = 0.0d;
        this.f92849z = 0.0d;
        this.f92846w = 0.0d;
    }

    public final void set(Matrix4f matrix4f) {
        float f10 = matrix4f.m00;
        float f11 = matrix4f.m11;
        float f12 = matrix4f.m22;
        double d10 = (f10 + f11 + f12 + matrix4f.m33) * 0.25d;
        if (d10 < 0.0d) {
            this.f92846w = 0.0d;
            this.f92847x = 0.0d;
            this.f92848y = 0.0d;
            this.f92849z = 1.0d;
            return;
        }
        if (d10 >= EPS2) {
            double sqrt = Math.sqrt(d10);
            this.f92846w = sqrt;
            double d11 = 0.25d / sqrt;
            this.f92847x = (matrix4f.m21 - matrix4f.m12) * d11;
            this.f92848y = (matrix4f.m02 - matrix4f.m20) * d11;
            this.f92849z = (matrix4f.m10 - matrix4f.m01) * d11;
            return;
        }
        this.f92846w = 0.0d;
        double d12 = (f11 + f12) * (-0.5d);
        if (d12 < 0.0d) {
            this.f92847x = 0.0d;
            this.f92848y = 0.0d;
            this.f92849z = 1.0d;
            return;
        }
        if (d12 >= EPS2) {
            double sqrt2 = Math.sqrt(d12);
            this.f92847x = sqrt2;
            double d13 = 1.0d / (sqrt2 * 2.0d);
            this.f92848y = matrix4f.m10 * d13;
            this.f92849z = matrix4f.m20 * d13;
            return;
        }
        this.f92847x = 0.0d;
        double d14 = (1.0d - f12) * 0.5d;
        if (d14 >= EPS2) {
            double sqrt3 = Math.sqrt(d14);
            this.f92848y = sqrt3;
            this.f92849z = matrix4f.m21 / (sqrt3 * 2.0d);
        } else {
            this.f92848y = 0.0d;
            this.f92849z = 1.0d;
        }
    }

    public final void mulInverse(Quat4d quat4d) {
        Quat4d quat4d2 = new Quat4d(quat4d);
        quat4d2.inverse();
        mul(quat4d2);
    }

    public final void conjugate() {
        this.f92847x = -this.f92847x;
        this.f92848y = -this.f92848y;
        this.f92849z = -this.f92849z;
    }

    public final void inverse() {
        double d10 = this.f92846w;
        double d11 = this.f92847x;
        double d12 = this.f92848y;
        double d13 = this.f92849z;
        double d14 = 1.0d / ((((d10 * d10) + (d11 * d11)) + (d12 * d12)) + (d13 * d13));
        this.f92846w = d10 * d14;
        double d15 = -d14;
        this.f92847x = d11 * d15;
        this.f92848y = d12 * d15;
        this.f92849z = d13 * d15;
    }

    public Quat4d(double[] dArr) {
        double d10 = dArr[0];
        double d11 = dArr[1];
        double d12 = dArr[2];
        double d13 = dArr[3];
        double sqrt = 1.0d / Math.sqrt((((d10 * d10) + (d11 * d11)) + (d12 * d12)) + (d13 * d13));
        this.f92847x = dArr[0] * sqrt;
        this.f92848y = dArr[1] * sqrt;
        this.f92849z = dArr[2] * sqrt;
        this.f92846w = dArr[3] * sqrt;
    }

    public final void mul(Quat4d quat4d) {
        double d10 = this.f92846w;
        double d11 = quat4d.f92846w;
        double d12 = this.f92847x;
        double d13 = quat4d.f92847x;
        double d14 = this.f92848y;
        double d15 = quat4d.f92848y;
        double d16 = ((d10 * d11) - (d12 * d13)) - (d14 * d15);
        double d17 = this.f92849z;
        double d18 = quat4d.f92849z;
        double d19 = d16 - (d17 * d18);
        this.f92849z = (((d10 * d18) + (d11 * d17)) + (d12 * d15)) - (d14 * d13);
        this.f92846w = d19;
        this.f92847x = (((d10 * d13) + (d11 * d12)) + (d14 * d18)) - (d17 * d15);
        this.f92848y = (((d10 * d15) + (d11 * d14)) - (d12 * d18)) + (d17 * d13);
    }

    public final void interpolate(Quat4d quat4d, Quat4d quat4d2, double d10) {
        double d11;
        double d12;
        double d13 = quat4d2.f92847x;
        double d14 = quat4d.f92847x;
        double d15 = quat4d2.f92848y;
        double d16 = quat4d.f92848y;
        double d17 = (d13 * d14) + (d15 * d16);
        double d18 = quat4d2.f92849z;
        double d19 = quat4d.f92849z;
        double d20 = d17 + (d18 * d19);
        double d21 = quat4d2.f92846w;
        double d22 = quat4d.f92846w;
        double d23 = d20 + (d21 * d22);
        if (d23 < 0.0d) {
            quat4d.f92847x = -d14;
            quat4d.f92848y = -d16;
            quat4d.f92849z = -d19;
            quat4d.f92846w = -d22;
            d23 = -d23;
        }
        if (1.0d - d23 > 1.0E-12d) {
            double acos = Math.acos(d23);
            double sin = Math.sin(acos);
            d11 = Math.sin((1.0d - d10) * acos) / sin;
            d12 = Math.sin(acos * d10) / sin;
        } else {
            d11 = 1.0d - d10;
            d12 = d10;
        }
        this.f92846w = (quat4d.f92846w * d11) + (quat4d2.f92846w * d12);
        this.f92847x = (quat4d.f92847x * d11) + (quat4d2.f92847x * d12);
        this.f92848y = (quat4d.f92848y * d11) + (quat4d2.f92848y * d12);
        this.f92849z = (d11 * quat4d.f92849z) + (d12 * quat4d2.f92849z);
    }

    public final void normalize() {
        double d10 = this.f92847x;
        double d11 = this.f92848y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f92849z;
        double d14 = d12 + (d13 * d13);
        double d15 = this.f92846w;
        double d16 = d14 + (d15 * d15);
        if (d16 > 0.0d) {
            double sqrt = 1.0d / Math.sqrt(d16);
            this.f92847x *= sqrt;
            this.f92848y *= sqrt;
            this.f92849z *= sqrt;
            this.f92846w *= sqrt;
            return;
        }
        this.f92847x = 0.0d;
        this.f92848y = 0.0d;
        this.f92849z = 0.0d;
        this.f92846w = 0.0d;
    }

    public Quat4d(Quat4d quat4d) {
        super(quat4d);
    }

    public Quat4d(Quat4f quat4f) {
        super(quat4f);
    }

    public Quat4d(Tuple4f tuple4f) {
        float f10 = tuple4f.f92851x;
        float f11 = tuple4f.f92852y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = tuple4f.f92853z;
        float f14 = f12 + (f13 * f13);
        float f15 = tuple4f.f92850w;
        double sqrt = 1.0d / Math.sqrt(f14 + (f15 * f15));
        this.f92847x = tuple4f.f92851x * sqrt;
        this.f92848y = tuple4f.f92852y * sqrt;
        this.f92849z = tuple4f.f92853z * sqrt;
        this.f92846w = tuple4f.f92850w * sqrt;
    }

    public Quat4d(Tuple4d tuple4d) {
        double d10 = tuple4d.f92847x;
        double d11 = tuple4d.f92848y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = tuple4d.f92849z;
        double d14 = d12 + (d13 * d13);
        double d15 = tuple4d.f92846w;
        double sqrt = 1.0d / Math.sqrt(d14 + (d15 * d15));
        this.f92847x = tuple4d.f92847x * sqrt;
        this.f92848y = tuple4d.f92848y * sqrt;
        this.f92849z = tuple4d.f92849z * sqrt;
        this.f92846w = tuple4d.f92846w * sqrt;
    }

    public final void set(Matrix4d matrix4d) {
        double d10 = matrix4d.m00;
        double d11 = matrix4d.m11;
        double d12 = matrix4d.m22;
        double d13 = (d10 + d11 + d12 + matrix4d.m33) * 0.25d;
        if (d13 < 0.0d) {
            this.f92846w = 0.0d;
            this.f92847x = 0.0d;
            this.f92848y = 0.0d;
            this.f92849z = 1.0d;
            return;
        }
        if (d13 >= EPS2) {
            double sqrt = Math.sqrt(d13);
            this.f92846w = sqrt;
            double d14 = 0.25d / sqrt;
            this.f92847x = (matrix4d.m21 - matrix4d.m12) * d14;
            this.f92848y = (matrix4d.m02 - matrix4d.m20) * d14;
            this.f92849z = (matrix4d.m10 - matrix4d.m01) * d14;
            return;
        }
        this.f92846w = 0.0d;
        double d15 = (d11 + d12) * (-0.5d);
        if (d15 < 0.0d) {
            this.f92847x = 0.0d;
            this.f92848y = 0.0d;
            this.f92849z = 1.0d;
            return;
        }
        if (d15 >= EPS2) {
            double sqrt2 = Math.sqrt(d15);
            this.f92847x = sqrt2;
            double d16 = 0.5d / sqrt2;
            this.f92848y = matrix4d.m10 * d16;
            this.f92849z = matrix4d.m20 * d16;
            return;
        }
        this.f92847x = 0.0d;
        double d17 = (1.0d - d12) * 0.5d;
        if (d17 >= EPS2) {
            double sqrt3 = Math.sqrt(d17);
            this.f92848y = sqrt3;
            this.f92849z = matrix4d.m21 / (sqrt3 * 2.0d);
        } else {
            this.f92848y = 0.0d;
            this.f92849z = 1.0d;
        }
    }

    public Quat4d() {
    }

    public final void set(Matrix3f matrix3f) {
        float f10 = matrix3f.m00;
        float f11 = matrix3f.m11;
        float f12 = matrix3f.m22;
        double d10 = (f10 + f11 + f12 + 1.0d) * 0.25d;
        if (d10 < 0.0d) {
            this.f92846w = 0.0d;
            this.f92847x = 0.0d;
            this.f92848y = 0.0d;
            this.f92849z = 1.0d;
            return;
        }
        if (d10 >= EPS2) {
            double sqrt = Math.sqrt(d10);
            this.f92846w = sqrt;
            double d11 = 0.25d / sqrt;
            this.f92847x = (matrix3f.m21 - matrix3f.m12) * d11;
            this.f92848y = (matrix3f.m02 - matrix3f.m20) * d11;
            this.f92849z = (matrix3f.m10 - matrix3f.m01) * d11;
            return;
        }
        this.f92846w = 0.0d;
        double d12 = (f11 + f12) * (-0.5d);
        if (d12 < 0.0d) {
            this.f92847x = 0.0d;
            this.f92848y = 0.0d;
            this.f92849z = 1.0d;
            return;
        }
        if (d12 >= EPS2) {
            double sqrt2 = Math.sqrt(d12);
            this.f92847x = sqrt2;
            double d13 = 0.5d / sqrt2;
            this.f92848y = matrix3f.m10 * d13;
            this.f92849z = matrix3f.m20 * d13;
            return;
        }
        this.f92847x = 0.0d;
        double d14 = (1.0d - f12) * 0.5d;
        if (d14 >= EPS2) {
            double sqrt3 = Math.sqrt(d14);
            this.f92848y = sqrt3;
            this.f92849z = matrix3f.m21 / (sqrt3 * 2.0d);
        }
        this.f92848y = 0.0d;
        this.f92849z = 1.0d;
    }

    public final void set(Matrix3d matrix3d) {
        double d10 = matrix3d.m00;
        double d11 = matrix3d.m11;
        double d12 = matrix3d.m22;
        double d13 = (d10 + d11 + d12 + 1.0d) * 0.25d;
        if (d13 < 0.0d) {
            this.f92846w = 0.0d;
            this.f92847x = 0.0d;
            this.f92848y = 0.0d;
            this.f92849z = 1.0d;
            return;
        }
        if (d13 >= EPS2) {
            double sqrt = Math.sqrt(d13);
            this.f92846w = sqrt;
            double d14 = 0.25d / sqrt;
            this.f92847x = (matrix3d.m21 - matrix3d.m12) * d14;
            this.f92848y = (matrix3d.m02 - matrix3d.m20) * d14;
            this.f92849z = (matrix3d.m10 - matrix3d.m01) * d14;
            return;
        }
        this.f92846w = 0.0d;
        double d15 = (d11 + d12) * (-0.5d);
        if (d15 < 0.0d) {
            this.f92847x = 0.0d;
            this.f92848y = 0.0d;
            this.f92849z = 1.0d;
            return;
        }
        if (d15 >= EPS2) {
            double sqrt2 = Math.sqrt(d15);
            this.f92847x = sqrt2;
            double d16 = 0.5d / sqrt2;
            this.f92848y = matrix3d.m10 * d16;
            this.f92849z = matrix3d.m20 * d16;
            return;
        }
        this.f92847x = 0.0d;
        double d17 = (1.0d - d12) * 0.5d;
        if (d17 >= EPS2) {
            double sqrt3 = Math.sqrt(d17);
            this.f92848y = sqrt3;
            this.f92849z = matrix3d.m21 / (sqrt3 * 2.0d);
        } else {
            this.f92848y = 0.0d;
            this.f92849z = 1.0d;
        }
    }

    public final void set(AxisAngle4f axisAngle4f) {
        float f10 = axisAngle4f.f92821x;
        float f11 = axisAngle4f.f92822y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = axisAngle4f.f92823z;
        double sqrt = Math.sqrt(f12 + (f13 * f13));
        if (sqrt < 1.0E-12d) {
            this.f92846w = 0.0d;
            this.f92847x = 0.0d;
            this.f92848y = 0.0d;
            this.f92849z = 0.0d;
            return;
        }
        double sin = Math.sin(axisAngle4f.angle / 2.0d);
        double d10 = 1.0d / sqrt;
        this.f92846w = Math.cos(axisAngle4f.angle / 2.0d);
        this.f92847x = axisAngle4f.f92821x * d10 * sin;
        this.f92848y = axisAngle4f.f92822y * d10 * sin;
        this.f92849z = axisAngle4f.f92823z * d10 * sin;
    }

    public final void set(AxisAngle4d axisAngle4d) {
        double d10 = axisAngle4d.f92818x;
        double d11 = axisAngle4d.f92819y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = axisAngle4d.f92820z;
        double sqrt = Math.sqrt(d12 + (d13 * d13));
        if (sqrt < 1.0E-12d) {
            this.f92846w = 0.0d;
            this.f92847x = 0.0d;
            this.f92848y = 0.0d;
            this.f92849z = 0.0d;
            return;
        }
        double d14 = 1.0d / sqrt;
        double sin = Math.sin(axisAngle4d.angle / 2.0d);
        this.f92846w = Math.cos(axisAngle4d.angle / 2.0d);
        this.f92847x = axisAngle4d.f92818x * d14 * sin;
        this.f92848y = axisAngle4d.f92819y * d14 * sin;
        this.f92849z = axisAngle4d.f92820z * d14 * sin;
    }
}
