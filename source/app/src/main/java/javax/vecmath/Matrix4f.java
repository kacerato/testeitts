package javax.vecmath;

import java.io.Serializable;

public class Matrix4f implements Serializable, Cloneable {
    private static final double EPS = 1.0E-8d;
    static final long serialVersionUID = -8405036035410109353L;
    public float m00;
    public float m01;
    public float m02;
    public float m03;
    public float m10;
    public float m11;
    public float m12;
    public float m13;
    public float m20;
    public float m21;
    public float m22;
    public float m23;
    public float m30;
    public float m31;
    public float m32;
    public float m33;

    public Matrix4f(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24, float f25) {
        this.m00 = f10;
        this.m01 = f11;
        this.m02 = f12;
        this.m03 = f13;
        this.m10 = f14;
        this.m11 = f15;
        this.m12 = f16;
        this.m13 = f17;
        this.m20 = f18;
        this.m21 = f19;
        this.m22 = f20;
        this.m23 = f21;
        this.m30 = f22;
        this.m31 = f23;
        this.m32 = f24;
        this.m33 = f25;
    }

    private final void getScaleRotate(double[] dArr, double[] dArr2) {
        Matrix3d.compute_svd(new double[]{this.m00, this.m01, this.m02, this.m10, this.m11, this.m12, this.m20, this.m21, this.m22}, dArr, dArr2);
    }

    public static void luBacksubstitution(double[] dArr, int[] iArr, double[] dArr2) {
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = -1;
            for (int i12 = 0; i12 < 4; i12++) {
                int i13 = (iArr[i12] * 4) + i10;
                double d10 = dArr2[i13];
                int i14 = i12 * 4;
                int i15 = i10 + i14;
                dArr2[i13] = dArr2[i15];
                if (i11 >= 0) {
                    for (int i16 = i11; i16 <= i12 - 1; i16++) {
                        d10 -= dArr[i14 + i16] * dArr2[(i16 * 4) + i10];
                    }
                } else if (d10 != 0.0d) {
                    i11 = i12;
                }
                dArr2[i15] = d10;
            }
            int i17 = i10 + 12;
            double d11 = dArr2[i17] / dArr[15];
            dArr2[i17] = d11;
            int i18 = i10 + 8;
            double d12 = (dArr2[i18] - (dArr[11] * d11)) / dArr[10];
            dArr2[i18] = d12;
            int i19 = i10 + 4;
            double d13 = ((dArr2[i19] - (dArr[6] * d12)) - (dArr[7] * dArr2[i17])) / dArr[5];
            dArr2[i19] = d13;
            dArr2[i10] = (((dArr2[i10] - (dArr[1] * d13)) - (dArr[2] * dArr2[i18])) - (dArr[3] * dArr2[i17])) / dArr[0];
        }
    }

    public static boolean luDecomposition(double[] dArr, int[] iArr) {
        double[] dArr2 = new double[4];
        int i10 = 4;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = i10 - 1;
            if (i10 == 0) {
                for (int i14 = 0; i14 < 4; i14++) {
                    for (int i15 = 0; i15 < i14; i15++) {
                        int i16 = i15 * 4;
                        int i17 = i16 + i14;
                        double d10 = dArr[i17];
                        int i18 = i14;
                        int i19 = i15;
                        while (true) {
                            int i20 = i19 - 1;
                            if (i19 != 0) {
                                d10 -= dArr[i16] * dArr[i18];
                                i16++;
                                i18 += 4;
                                i19 = i20;
                            }
                        }
                        dArr[i17] = d10;
                    }
                    int i21 = -1;
                    double d11 = 0.0d;
                    for (int i22 = i14; i22 < 4; i22++) {
                        int i23 = i22 * 4;
                        int i24 = i23 + i14;
                        double d12 = dArr[i24];
                        int i25 = i14;
                        int i26 = i25;
                        while (true) {
                            int i27 = i25 - 1;
                            if (i25 == 0) {
                                break;
                            }
                            d12 -= dArr[i23] * dArr[i26];
                            i23++;
                            i26 += 4;
                            i25 = i27;
                        }
                        dArr[i24] = d12;
                        double abs = dArr2[i22] * Math.abs(d12);
                        if (abs >= d11) {
                            i21 = i22;
                            d11 = abs;
                        }
                    }
                    if (i21 < 0) {
                        throw new RuntimeException(VecMathI18N.getString("Matrix4f13"));
                    }
                    if (i14 != i21) {
                        int i28 = i21 * 4;
                        int i29 = i14 * 4;
                        int i30 = 4;
                        while (true) {
                            int i31 = i30 - 1;
                            if (i30 == 0) {
                                break;
                            }
                            double d13 = dArr[i28];
                            dArr[i28] = dArr[i29];
                            dArr[i29] = d13;
                            i29++;
                            i28++;
                            i30 = i31;
                        }
                        dArr2[i21] = dArr2[i14];
                    }
                    iArr[i14] = i21;
                    double d14 = dArr[(i14 * 4) + i14];
                    if (d14 == 0.0d) {
                        return false;
                    }
                    if (i14 != 3) {
                        double d15 = 1.0d / d14;
                        int i32 = ((i14 + 1) * 4) + i14;
                        int i33 = 3 - i14;
                        while (true) {
                            int i34 = i33 - 1;
                            if (i33 != 0) {
                                dArr[i32] = dArr[i32] * d15;
                                i32 += 4;
                                i33 = i34;
                            }
                        }
                    }
                }
                return true;
            }
            int i35 = 4;
            double d16 = 0.0d;
            while (true) {
                int i36 = i35 - 1;
                if (i35 == 0) {
                    break;
                }
                int i37 = i11 + 1;
                double abs2 = Math.abs(dArr[i11]);
                if (abs2 > d16) {
                    i11 = i37;
                    i35 = i36;
                    d16 = abs2;
                } else {
                    i11 = i37;
                    i35 = i36;
                }
            }
            if (d16 == 0.0d) {
                return false;
            }
            dArr2[i12] = 1.0d / d16;
            i12++;
            i10 = i13;
        }
    }

    public final void add(float f10) {
        this.m00 += f10;
        this.m01 += f10;
        this.m02 += f10;
        this.m03 += f10;
        this.m10 += f10;
        this.m11 += f10;
        this.m12 += f10;
        this.m13 += f10;
        this.m20 += f10;
        this.m21 += f10;
        this.m22 += f10;
        this.m23 += f10;
        this.m30 += f10;
        this.m31 += f10;
        this.m32 += f10;
        this.m33 += f10;
    }

    public Object clone() {
        try {
            return (Matrix4f) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public final float determinant() {
        float f10 = this.m00;
        float f11 = this.m11;
        float f12 = this.m22;
        float f13 = this.m33;
        float f14 = this.m12;
        float f15 = this.m23;
        float f16 = this.m31;
        float f17 = this.m13;
        float f18 = this.m21;
        float f19 = this.m32;
        float f20 = f10 * (((((((f11 * f12) * f13) + ((f14 * f15) * f16)) + ((f17 * f18) * f19)) - ((f17 * f12) * f16)) - ((f11 * f15) * f19)) - ((f14 * f18) * f13));
        float f21 = this.m01;
        float f22 = this.m10;
        float f23 = this.m30;
        float f24 = (f22 * f12 * f13) + (f14 * f15 * f23);
        float f25 = this.m20;
        return ((f20 - (f21 * ((((f24 + ((f17 * f25) * f19)) - ((f17 * f12) * f23)) - ((f22 * f15) * f19)) - ((f14 * f25) * f13)))) + (this.m02 * (((((((f22 * f18) * f13) + ((f11 * f15) * f23)) + ((f17 * f25) * f16)) - ((f17 * f18) * f23)) - ((f15 * f22) * f16)) - ((f11 * f25) * f13)))) - (this.m03 * (((((((f22 * f18) * f19) + ((f11 * f12) * f23)) + ((f14 * f25) * f16)) - ((f14 * f18) * f23)) - ((f22 * f12) * f16)) - ((f11 * f25) * f19)));
    }

    public boolean epsilonEquals(Matrix4f matrix4f, float f10) {
        boolean z10 = Math.abs(this.m00 - matrix4f.m00) <= f10;
        if (Math.abs(this.m01 - matrix4f.m01) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m02 - matrix4f.m02) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m03 - matrix4f.m03) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m10 - matrix4f.m10) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m11 - matrix4f.m11) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m12 - matrix4f.m12) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m13 - matrix4f.m13) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m20 - matrix4f.m20) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m21 - matrix4f.m21) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m22 - matrix4f.m22) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m23 - matrix4f.m23) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m30 - matrix4f.m30) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m31 - matrix4f.m31) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m32 - matrix4f.m32) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m33 - matrix4f.m33) > f10) {
            return false;
        }
        return z10;
    }

    public boolean equals(Matrix4f matrix4f) {
        try {
            if (this.m00 == matrix4f.m00 && this.m01 == matrix4f.m01 && this.m02 == matrix4f.m02 && this.m03 == matrix4f.m03 && this.m10 == matrix4f.m10 && this.m11 == matrix4f.m11 && this.m12 == matrix4f.m12 && this.m13 == matrix4f.m13 && this.m20 == matrix4f.m20 && this.m21 == matrix4f.m21 && this.m22 == matrix4f.m22 && this.m23 == matrix4f.m23 && this.m30 == matrix4f.m30 && this.m31 == matrix4f.m31 && this.m32 == matrix4f.m32) {
                return this.m33 == matrix4f.m33;
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final void get(Matrix3d matrix3d) {
        double[] dArr = new double[9];
        getScaleRotate(new double[3], dArr);
        matrix3d.m00 = dArr[0];
        matrix3d.m01 = dArr[1];
        matrix3d.m02 = dArr[2];
        matrix3d.m10 = dArr[3];
        matrix3d.m11 = dArr[4];
        matrix3d.m12 = dArr[5];
        matrix3d.m20 = dArr[6];
        matrix3d.m21 = dArr[7];
        matrix3d.m22 = dArr[8];
    }

    public final void getColumn(int i10, Vector4f vector4f) {
        if (i10 == 0) {
            vector4f.f92851x = this.m00;
            vector4f.f92852y = this.m10;
            vector4f.f92853z = this.m20;
            vector4f.f92850w = this.m30;
            return;
        }
        if (i10 == 1) {
            vector4f.f92851x = this.m01;
            vector4f.f92852y = this.m11;
            vector4f.f92853z = this.m21;
            vector4f.f92850w = this.m31;
            return;
        }
        if (i10 == 2) {
            vector4f.f92851x = this.m02;
            vector4f.f92852y = this.m12;
            vector4f.f92853z = this.m22;
            vector4f.f92850w = this.m32;
            return;
        }
        if (i10 == 3) {
            vector4f.f92851x = this.m03;
            vector4f.f92852y = this.m13;
            vector4f.f92853z = this.m23;
            vector4f.f92850w = this.m33;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f4"));
    }

    public final float getElement(int i10, int i11) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        if (i11 == 0) {
                            return this.m30;
                        }
                        if (i11 == 1) {
                            return this.m31;
                        }
                        if (i11 == 2) {
                            return this.m32;
                        }
                        if (i11 == 3) {
                            return this.m33;
                        }
                    }
                } else {
                    if (i11 == 0) {
                        return this.m20;
                    }
                    if (i11 == 1) {
                        return this.m21;
                    }
                    if (i11 == 2) {
                        return this.m22;
                    }
                    if (i11 == 3) {
                        return this.m23;
                    }
                }
            } else {
                if (i11 == 0) {
                    return this.m10;
                }
                if (i11 == 1) {
                    return this.m11;
                }
                if (i11 == 2) {
                    return this.m12;
                }
                if (i11 == 3) {
                    return this.m13;
                }
            }
        } else {
            if (i11 == 0) {
                return this.m00;
            }
            if (i11 == 1) {
                return this.m01;
            }
            if (i11 == 2) {
                return this.m02;
            }
            if (i11 == 3) {
                return this.m03;
            }
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f1"));
    }

    public final float getM00() {
        return this.m00;
    }

    public final float getM01() {
        return this.m01;
    }

    public final float getM02() {
        return this.m02;
    }

    public final float getM03() {
        return this.m03;
    }

    public final float getM10() {
        return this.m10;
    }

    public final float getM11() {
        return this.m11;
    }

    public final float getM12() {
        return this.m12;
    }

    public final float getM13() {
        return this.m13;
    }

    public final float getM20() {
        return this.m20;
    }

    public final float getM21() {
        return this.m21;
    }

    public final float getM22() {
        return this.m22;
    }

    public final float getM23() {
        return this.m23;
    }

    public final float getM30() {
        return this.m30;
    }

    public final float getM31() {
        return this.m31;
    }

    public final float getM32() {
        return this.m32;
    }

    public final float getM33() {
        return this.m33;
    }

    public final void getRotationScale(Matrix3f matrix3f) {
        matrix3f.m00 = this.m00;
        matrix3f.m01 = this.m01;
        matrix3f.m02 = this.m02;
        matrix3f.m10 = this.m10;
        matrix3f.m11 = this.m11;
        matrix3f.m12 = this.m12;
        matrix3f.m20 = this.m20;
        matrix3f.m21 = this.m21;
        matrix3f.m22 = this.m22;
    }

    public final void getRow(int i10, Vector4f vector4f) {
        if (i10 == 0) {
            vector4f.f92851x = this.m00;
            vector4f.f92852y = this.m01;
            vector4f.f92853z = this.m02;
            vector4f.f92850w = this.m03;
            return;
        }
        if (i10 == 1) {
            vector4f.f92851x = this.m10;
            vector4f.f92852y = this.m11;
            vector4f.f92853z = this.m12;
            vector4f.f92850w = this.m13;
            return;
        }
        if (i10 == 2) {
            vector4f.f92851x = this.m20;
            vector4f.f92852y = this.m21;
            vector4f.f92853z = this.m22;
            vector4f.f92850w = this.m23;
            return;
        }
        if (i10 == 3) {
            vector4f.f92851x = this.m30;
            vector4f.f92852y = this.m31;
            vector4f.f92853z = this.m32;
            vector4f.f92850w = this.m33;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f2"));
    }

    public final float getScale() {
        double[] dArr = new double[3];
        getScaleRotate(dArr, new double[9]);
        return (float) Matrix3d.max3(dArr);
    }

    public int hashCode() {
        long floatToIntBits = ((((((((((((((((((((((((((((((VecMathUtil.floatToIntBits(this.m00) + 31) * 31) + VecMathUtil.floatToIntBits(this.m01)) * 31) + VecMathUtil.floatToIntBits(this.m02)) * 31) + VecMathUtil.floatToIntBits(this.m03)) * 31) + VecMathUtil.floatToIntBits(this.m10)) * 31) + VecMathUtil.floatToIntBits(this.m11)) * 31) + VecMathUtil.floatToIntBits(this.m12)) * 31) + VecMathUtil.floatToIntBits(this.m13)) * 31) + VecMathUtil.floatToIntBits(this.m20)) * 31) + VecMathUtil.floatToIntBits(this.m21)) * 31) + VecMathUtil.floatToIntBits(this.m22)) * 31) + VecMathUtil.floatToIntBits(this.m23)) * 31) + VecMathUtil.floatToIntBits(this.m30)) * 31) + VecMathUtil.floatToIntBits(this.m31)) * 31) + VecMathUtil.floatToIntBits(this.m32)) * 31) + VecMathUtil.floatToIntBits(this.m33);
        return (int) (floatToIntBits ^ (floatToIntBits >> 32));
    }

    public final void invert(Matrix4f matrix4f) {
        invertGeneral(matrix4f);
    }

    public final void invertGeneral(Matrix4f matrix4f) {
        double[] dArr = new double[16];
        int[] iArr = new int[4];
        double[] dArr2 = {matrix4f.m00, matrix4f.m01, matrix4f.m02, matrix4f.m03, matrix4f.m10, matrix4f.m11, matrix4f.m12, matrix4f.m13, matrix4f.m20, matrix4f.m21, matrix4f.m22, matrix4f.m23, matrix4f.m30, matrix4f.m31, matrix4f.m32, matrix4f.m33};
        if (!luDecomposition(dArr2, iArr)) {
            throw new SingularMatrixException(VecMathI18N.getString("Matrix4f12"));
        }
        for (int i10 = 0; i10 < 16; i10++) {
            dArr[i10] = 0.0d;
        }
        dArr[0] = 1.0d;
        dArr[5] = 1.0d;
        dArr[10] = 1.0d;
        dArr[15] = 1.0d;
        luBacksubstitution(dArr2, iArr, dArr);
        this.m00 = (float) dArr[0];
        this.m01 = (float) dArr[1];
        this.m02 = (float) dArr[2];
        this.m03 = (float) dArr[3];
        this.m10 = (float) dArr[4];
        this.m11 = (float) dArr[5];
        this.m12 = (float) dArr[6];
        this.m13 = (float) dArr[7];
        this.m20 = (float) dArr[8];
        this.m21 = (float) dArr[9];
        this.m22 = (float) dArr[10];
        this.m23 = (float) dArr[11];
        this.m30 = (float) dArr[12];
        this.m31 = (float) dArr[13];
        this.m32 = (float) dArr[14];
        this.m33 = (float) dArr[15];
    }

    public final void mul(float f10) {
        this.m00 *= f10;
        this.m01 *= f10;
        this.m02 *= f10;
        this.m03 *= f10;
        this.m10 *= f10;
        this.m11 *= f10;
        this.m12 *= f10;
        this.m13 *= f10;
        this.m20 *= f10;
        this.m21 *= f10;
        this.m22 *= f10;
        this.m23 *= f10;
        this.m30 *= f10;
        this.m31 *= f10;
        this.m32 *= f10;
        this.m33 *= f10;
    }

    public final void mulTransposeBoth(Matrix4f matrix4f, Matrix4f matrix4f2) {
        if (this == matrix4f || this == matrix4f2) {
            float f10 = matrix4f.m00;
            float f11 = matrix4f2.m00;
            float f12 = matrix4f.m10;
            float f13 = matrix4f2.m01;
            float f14 = matrix4f.m20;
            float f15 = matrix4f2.m02;
            float f16 = matrix4f.m30;
            float f17 = matrix4f2.m03;
            float f18 = (f10 * f11) + (f12 * f13) + (f14 * f15) + (f16 * f17);
            float f19 = matrix4f2.m10;
            float f20 = matrix4f2.m11;
            float f21 = matrix4f2.m12;
            float f22 = matrix4f2.m13;
            float f23 = (f10 * f19) + (f12 * f20) + (f14 * f21) + (f16 * f22);
            float f24 = matrix4f2.m20;
            float f25 = matrix4f2.m21;
            float f26 = (f10 * f24) + (f12 * f25);
            float f27 = matrix4f2.m22;
            float f28 = f26 + (f14 * f27);
            float f29 = matrix4f2.m23;
            float f30 = f28 + (f16 * f29);
            float f31 = matrix4f2.m30;
            float f32 = f10 * f31;
            float f33 = matrix4f2.m31;
            float f34 = f32 + (f12 * f33);
            float f35 = matrix4f2.m32;
            float f36 = matrix4f2.m33;
            float f37 = f34 + (f14 * f35) + (f16 * f36);
            float f38 = matrix4f.m01;
            float f39 = matrix4f.m11;
            float f40 = (f38 * f11) + (f39 * f13);
            float f41 = matrix4f.m21;
            float f42 = f40 + (f41 * f15);
            float f43 = matrix4f.m31;
            float f44 = f42 + (f43 * f17);
            float f45 = (f38 * f19) + (f39 * f20) + (f41 * f21) + (f43 * f22);
            float f46 = (f38 * f24) + (f39 * f25) + (f41 * f27) + (f43 * f29);
            float f47 = (f38 * f31) + (f39 * f33) + (f41 * f35) + (f43 * f36);
            float f48 = matrix4f.m02;
            float f49 = matrix4f.m12;
            float f50 = matrix4f.m22;
            float f51 = matrix4f.m32;
            float f52 = (f48 * f11) + (f49 * f13) + (f50 * f15) + (f51 * f17);
            float f53 = (f48 * f19) + (f49 * f20) + (f50 * f21) + (f51 * f22);
            float f54 = (f48 * f24) + (f49 * f25) + (f50 * f27) + (f51 * f29);
            float f55 = (f48 * f31) + (f49 * f33) + (f50 * f35) + (f51 * f36);
            float f56 = matrix4f.m03;
            float f57 = matrix4f.m13;
            float f58 = matrix4f.m23;
            float f59 = matrix4f.m33;
            this.m00 = f18;
            this.m01 = f23;
            this.m02 = f30;
            this.m03 = f37;
            this.m10 = f44;
            this.m11 = f45;
            this.m12 = f46;
            this.m13 = f47;
            this.m20 = f52;
            this.m21 = f53;
            this.m22 = f54;
            this.m23 = f55;
            this.m30 = (f11 * f56) + (f57 * f13) + (f58 * f15) + (f17 * f59);
            this.m31 = (f19 * f56) + (f20 * f57) + (f21 * f58) + (f22 * f59);
            this.m32 = (f24 * f56) + (f57 * f25) + (f58 * f27) + (f59 * f29);
            this.m33 = (f56 * f31) + (f57 * f33) + (f58 * f35) + (f59 * f36);
            return;
        }
        float f60 = matrix4f.m00 * matrix4f2.m00;
        float f61 = matrix4f.m10;
        float f62 = f60 + (matrix4f2.m01 * f61);
        float f63 = matrix4f.m20;
        float f64 = f62 + (matrix4f2.m02 * f63);
        float f65 = matrix4f.m30;
        this.m00 = f64 + (matrix4f2.m03 * f65);
        float f66 = matrix4f.m00;
        float f67 = matrix4f2.m10 * f66;
        float f68 = matrix4f2.m11;
        float f69 = matrix4f2.m12;
        float f70 = matrix4f2.m13;
        this.m01 = f67 + (f61 * f68) + (f63 * f69) + (f65 * f70);
        float f71 = matrix4f2.m20;
        float f72 = matrix4f2.m21;
        float f73 = matrix4f2.m22;
        float f74 = matrix4f2.m23;
        this.m02 = (f66 * f71) + (f61 * f72) + (f63 * f73) + (f65 * f74);
        float f75 = matrix4f2.m30;
        float f76 = matrix4f2.m31;
        float f77 = (f66 * f75) + (f61 * f76);
        float f78 = matrix4f2.m32;
        float f79 = f77 + (f63 * f78);
        float f80 = matrix4f2.m33;
        this.m03 = f79 + (f65 * f80);
        float f81 = matrix4f.m01;
        float f82 = matrix4f2.m00;
        float f83 = f81 * f82;
        float f84 = matrix4f.m11;
        float f85 = matrix4f2.m01;
        float f86 = f83 + (f84 * f85);
        float f87 = matrix4f.m21;
        float f88 = matrix4f2.m02;
        float f89 = f86 + (f87 * f88);
        float f90 = matrix4f.m31;
        float f91 = matrix4f2.m03;
        this.m10 = f89 + (f90 * f91);
        float f92 = matrix4f2.m10;
        this.m11 = (f81 * f92) + (f84 * f68) + (f69 * f87) + (f70 * f90);
        float f93 = matrix4f.m11;
        this.m12 = (f71 * f81) + (f72 * f93) + (f87 * f73) + (f90 * f74);
        this.m13 = (f81 * f75) + (f93 * f76) + (f87 * f78) + (f90 * f80);
        float f94 = matrix4f.m02;
        float f95 = matrix4f.m12;
        float f96 = (f94 * f82) + (f95 * f85);
        float f97 = matrix4f.m22;
        float f98 = matrix4f.m32;
        this.m20 = f96 + (f97 * f88) + (f98 * f91);
        float f99 = matrix4f2.m11;
        float f100 = matrix4f2.m12;
        float f101 = matrix4f2.m13;
        this.m21 = (f94 * f92) + (f95 * f99) + (f97 * f100) + (f98 * f101);
        float f102 = matrix4f2.m20;
        float f103 = f94 * f102;
        float f104 = matrix4f2.m21;
        this.m22 = f103 + (f95 * f104) + (f97 * f73) + (f74 * f98);
        this.m23 = (f94 * f75) + (f95 * f76) + (matrix4f.m22 * f78) + (f98 * f80);
        float f105 = matrix4f.m03;
        float f106 = matrix4f.m13;
        float f107 = matrix4f.m23;
        float f108 = matrix4f.m33;
        this.m30 = (f105 * f82) + (f106 * f85) + (f107 * f88) + (f108 * f91);
        this.m31 = (f92 * f105) + (f99 * f106) + (f100 * f107) + (f101 * f108);
        this.m32 = (f105 * f102) + (f104 * f106) + (matrix4f2.m22 * f107) + (matrix4f2.m23 * f108);
        this.m33 = (f105 * matrix4f2.m30) + (f106 * matrix4f2.m31) + (f107 * matrix4f2.m32) + (f108 * f80);
    }

    public final void mulTransposeLeft(Matrix4f matrix4f, Matrix4f matrix4f2) {
        if (this == matrix4f || this == matrix4f2) {
            float f10 = matrix4f.m00;
            float f11 = matrix4f2.m00;
            float f12 = matrix4f.m10;
            float f13 = matrix4f2.m10;
            float f14 = matrix4f.m20;
            float f15 = matrix4f2.m20;
            float f16 = matrix4f.m30;
            float f17 = matrix4f2.m30;
            float f18 = (f10 * f11) + (f12 * f13) + (f14 * f15) + (f16 * f17);
            float f19 = matrix4f2.m01;
            float f20 = matrix4f2.m11;
            float f21 = matrix4f2.m21;
            float f22 = matrix4f2.m31;
            float f23 = (f10 * f19) + (f12 * f20) + (f14 * f21) + (f16 * f22);
            float f24 = matrix4f2.m02;
            float f25 = matrix4f2.m12;
            float f26 = (f10 * f24) + (f12 * f25);
            float f27 = matrix4f2.m22;
            float f28 = f26 + (f14 * f27);
            float f29 = matrix4f2.m32;
            float f30 = f28 + (f16 * f29);
            float f31 = matrix4f2.m03;
            float f32 = f10 * f31;
            float f33 = matrix4f2.m13;
            float f34 = f32 + (f12 * f33);
            float f35 = matrix4f2.m23;
            float f36 = matrix4f2.m33;
            float f37 = f34 + (f14 * f35) + (f16 * f36);
            float f38 = matrix4f.m01;
            float f39 = matrix4f.m11;
            float f40 = (f38 * f11) + (f39 * f13);
            float f41 = matrix4f.m21;
            float f42 = f40 + (f41 * f15);
            float f43 = matrix4f.m31;
            float f44 = f42 + (f43 * f17);
            float f45 = (f38 * f19) + (f39 * f20) + (f41 * f21) + (f43 * f22);
            float f46 = (f38 * f24) + (f39 * f25) + (f41 * f27) + (f43 * f29);
            float f47 = (f38 * f31) + (f39 * f33) + (f41 * f35) + (f43 * f36);
            float f48 = matrix4f.m02;
            float f49 = matrix4f.m12;
            float f50 = matrix4f.m22;
            float f51 = matrix4f.m32;
            float f52 = (f48 * f11) + (f49 * f13) + (f50 * f15) + (f51 * f17);
            float f53 = (f48 * f19) + (f49 * f20) + (f50 * f21) + (f51 * f22);
            float f54 = (f48 * f24) + (f49 * f25) + (f50 * f27) + (f51 * f29);
            float f55 = (f48 * f31) + (f49 * f33) + (f50 * f35) + (f51 * f36);
            float f56 = matrix4f.m03;
            float f57 = matrix4f.m13;
            float f58 = matrix4f.m23;
            float f59 = matrix4f.m33;
            this.m00 = f18;
            this.m01 = f23;
            this.m02 = f30;
            this.m03 = f37;
            this.m10 = f44;
            this.m11 = f45;
            this.m12 = f46;
            this.m13 = f47;
            this.m20 = f52;
            this.m21 = f53;
            this.m22 = f54;
            this.m23 = f55;
            this.m30 = (f11 * f56) + (f57 * f13) + (f58 * f15) + (f17 * f59);
            this.m31 = (f19 * f56) + (f20 * f57) + (f21 * f58) + (f22 * f59);
            this.m32 = (f24 * f56) + (f57 * f25) + (f58 * f27) + (f59 * f29);
            this.m33 = (f56 * f31) + (f57 * f33) + (f58 * f35) + (f59 * f36);
            return;
        }
        float f60 = matrix4f.m00 * matrix4f2.m00;
        float f61 = matrix4f.m10;
        float f62 = matrix4f2.m10;
        float f63 = matrix4f.m20;
        float f64 = matrix4f2.m20;
        float f65 = matrix4f.m30;
        float f66 = matrix4f2.m30;
        this.m00 = f60 + (f61 * f62) + (f63 * f64) + (f65 * f66);
        float f67 = matrix4f.m00;
        float f68 = matrix4f2.m01 * f67;
        float f69 = matrix4f2.m11;
        float f70 = matrix4f2.m21;
        float f71 = matrix4f2.m31;
        this.m01 = f68 + (f61 * f69) + (f63 * f70) + (f65 * f71);
        float f72 = matrix4f2.m02 * f67;
        float f73 = matrix4f2.m12;
        float f74 = matrix4f2.m22;
        float f75 = f72 + (f61 * f73) + (f63 * f74);
        float f76 = matrix4f2.m32;
        this.m02 = f75 + (f65 * f76);
        float f77 = f67 * matrix4f2.m03;
        float f78 = matrix4f2.m13;
        float f79 = f77 + (f61 * f78);
        float f80 = matrix4f2.m23;
        float f81 = f79 + (f63 * f80);
        float f82 = matrix4f2.m33;
        this.m03 = f81 + (f65 * f82);
        float f83 = matrix4f.m01;
        float f84 = matrix4f2.m00;
        float f85 = f83 * f84;
        float f86 = matrix4f.m11;
        float f87 = f85 + (f62 * f86);
        float f88 = matrix4f.m21;
        float f89 = f87 + (f88 * f64);
        float f90 = matrix4f.m31;
        this.m10 = f89 + (f90 * f66);
        float f91 = matrix4f2.m01;
        this.m11 = (f83 * f91) + (f86 * f69) + (f88 * f70) + (f90 * f71);
        float f92 = matrix4f2.m02;
        float f93 = f83 * f92;
        float f94 = matrix4f.m11;
        this.m12 = f93 + (f73 * f94) + (f88 * f74) + (f90 * f76);
        float f95 = matrix4f2.m03;
        this.m13 = (f83 * f95) + (f94 * f78) + (f88 * f80) + (f90 * f82);
        float f96 = matrix4f.m02;
        float f97 = matrix4f.m12;
        float f98 = matrix4f2.m10;
        float f99 = matrix4f.m22;
        float f100 = matrix4f.m32;
        this.m20 = (f96 * f84) + (f97 * f98) + (f99 * f64) + (f100 * f66);
        float f101 = f96 * f91;
        float f102 = matrix4f2.m11;
        this.m21 = f101 + (f97 * f102) + (f70 * f99) + (f100 * f71);
        float f103 = matrix4f2.m12;
        this.m22 = (f96 * f92) + (f97 * f103) + (f99 * f74) + (f100 * f76);
        float f104 = matrix4f2.m13;
        this.m23 = (f96 * f95) + (f97 * f104) + (matrix4f.m22 * f80) + (f100 * f82);
        float f105 = matrix4f.m03;
        float f106 = matrix4f.m13;
        float f107 = (f105 * f84) + (f98 * f106);
        float f108 = matrix4f.m23;
        float f109 = f107 + (matrix4f2.m20 * f108);
        float f110 = matrix4f.m33;
        this.m30 = f109 + (f110 * f66);
        this.m31 = (f105 * f91) + (f102 * f106) + (matrix4f2.m21 * f108) + (f71 * f110);
        this.m32 = (f105 * f92) + (f103 * f106) + (matrix4f2.m22 * f108) + (f76 * f110);
        this.m33 = (f105 * f95) + (f106 * f104) + (f108 * matrix4f2.m23) + (f110 * f82);
    }

    public final void mulTransposeRight(Matrix4f matrix4f, Matrix4f matrix4f2) {
        if (this == matrix4f || this == matrix4f2) {
            float f10 = matrix4f.m00;
            float f11 = matrix4f2.m00;
            float f12 = matrix4f.m01;
            float f13 = matrix4f2.m01;
            float f14 = matrix4f.m02;
            float f15 = matrix4f2.m02;
            float f16 = matrix4f.m03;
            float f17 = matrix4f2.m03;
            float f18 = (f10 * f11) + (f12 * f13) + (f14 * f15) + (f16 * f17);
            float f19 = matrix4f2.m10;
            float f20 = matrix4f2.m11;
            float f21 = matrix4f2.m12;
            float f22 = matrix4f2.m13;
            float f23 = (f10 * f19) + (f12 * f20) + (f14 * f21) + (f16 * f22);
            float f24 = matrix4f2.m20;
            float f25 = matrix4f2.m21;
            float f26 = (f10 * f24) + (f12 * f25);
            float f27 = matrix4f2.m22;
            float f28 = f26 + (f14 * f27);
            float f29 = matrix4f2.m23;
            float f30 = f28 + (f16 * f29);
            float f31 = matrix4f2.m30;
            float f32 = f10 * f31;
            float f33 = matrix4f2.m31;
            float f34 = f32 + (f12 * f33);
            float f35 = matrix4f2.m32;
            float f36 = matrix4f2.m33;
            float f37 = f34 + (f14 * f35) + (f16 * f36);
            float f38 = matrix4f.m10;
            float f39 = matrix4f.m11;
            float f40 = (f38 * f11) + (f39 * f13);
            float f41 = matrix4f.m12;
            float f42 = f40 + (f41 * f15);
            float f43 = matrix4f.m13;
            float f44 = f42 + (f43 * f17);
            float f45 = (f38 * f19) + (f39 * f20) + (f41 * f21) + (f43 * f22);
            float f46 = (f38 * f24) + (f39 * f25) + (f41 * f27) + (f43 * f29);
            float f47 = (f38 * f31) + (f39 * f33) + (f41 * f35) + (f43 * f36);
            float f48 = matrix4f.m20;
            float f49 = matrix4f.m21;
            float f50 = matrix4f.m22;
            float f51 = matrix4f.m23;
            float f52 = (f48 * f11) + (f49 * f13) + (f50 * f15) + (f51 * f17);
            float f53 = (f48 * f19) + (f49 * f20) + (f50 * f21) + (f51 * f22);
            float f54 = (f48 * f24) + (f49 * f25) + (f50 * f27) + (f51 * f29);
            float f55 = (f48 * f31) + (f49 * f33) + (f50 * f35) + (f51 * f36);
            float f56 = matrix4f.m30;
            float f57 = matrix4f.m31;
            float f58 = matrix4f.m32;
            float f59 = matrix4f.m33;
            this.m00 = f18;
            this.m01 = f23;
            this.m02 = f30;
            this.m03 = f37;
            this.m10 = f44;
            this.m11 = f45;
            this.m12 = f46;
            this.m13 = f47;
            this.m20 = f52;
            this.m21 = f53;
            this.m22 = f54;
            this.m23 = f55;
            this.m30 = (f11 * f56) + (f57 * f13) + (f58 * f15) + (f17 * f59);
            this.m31 = (f19 * f56) + (f20 * f57) + (f21 * f58) + (f22 * f59);
            this.m32 = (f24 * f56) + (f57 * f25) + (f58 * f27) + (f59 * f29);
            this.m33 = (f56 * f31) + (f57 * f33) + (f58 * f35) + (f59 * f36);
            return;
        }
        float f60 = matrix4f.m00 * matrix4f2.m00;
        float f61 = matrix4f.m01;
        float f62 = f60 + (matrix4f2.m01 * f61);
        float f63 = matrix4f.m02;
        float f64 = f62 + (matrix4f2.m02 * f63);
        float f65 = matrix4f.m03;
        this.m00 = f64 + (matrix4f2.m03 * f65);
        float f66 = matrix4f.m00;
        float f67 = matrix4f2.m10 * f66;
        float f68 = matrix4f2.m11;
        float f69 = f67 + (f61 * f68);
        float f70 = matrix4f2.m12;
        float f71 = matrix4f2.m13;
        this.m01 = f69 + (f63 * f70) + (f65 * f71);
        float f72 = matrix4f2.m20;
        float f73 = matrix4f.m01;
        float f74 = matrix4f2.m21;
        float f75 = matrix4f2.m22;
        float f76 = (f66 * f72) + (f73 * f74) + (f63 * f75);
        float f77 = matrix4f2.m23;
        this.m02 = f76 + (f65 * f77);
        float f78 = matrix4f2.m30;
        float f79 = matrix4f2.m31;
        float f80 = (f66 * f78) + (f73 * f79);
        float f81 = matrix4f.m02;
        float f82 = matrix4f2.m32;
        float f83 = f80 + (f81 * f82);
        float f84 = matrix4f2.m33;
        this.m03 = f83 + (f65 * f84);
        float f85 = matrix4f.m10;
        float f86 = matrix4f2.m00;
        float f87 = f85 * f86;
        float f88 = matrix4f.m11;
        float f89 = matrix4f2.m01;
        float f90 = f87 + (f88 * f89);
        float f91 = matrix4f.m12;
        float f92 = matrix4f2.m02;
        float f93 = f90 + (f91 * f92);
        float f94 = matrix4f.m13;
        float f95 = matrix4f2.m03;
        this.m10 = f93 + (f94 * f95);
        float f96 = matrix4f.m10;
        float f97 = matrix4f2.m10;
        this.m11 = (f96 * f97) + (f88 * f68) + (f70 * f91) + (f71 * f94);
        float f98 = matrix4f.m11;
        this.m12 = (f72 * f96) + (f74 * f98) + (f91 * f75) + (f94 * f77);
        this.m13 = (f96 * f78) + (f98 * f79) + (matrix4f.m12 * f82) + (f94 * f84);
        float f99 = matrix4f.m20 * f86;
        float f100 = matrix4f.m21;
        float f101 = matrix4f.m22;
        float f102 = matrix4f.m23;
        this.m20 = f99 + (f100 * f89) + (f101 * f92) + (f102 * f95);
        float f103 = matrix4f.m20;
        float f104 = matrix4f2.m11;
        float f105 = (f103 * f97) + (f100 * f104);
        float f106 = matrix4f2.m12;
        float f107 = matrix4f2.m13;
        this.m21 = f105 + (f101 * f106) + (f102 * f107);
        float f108 = matrix4f2.m20;
        float f109 = f103 * f108;
        float f110 = matrix4f.m21;
        float f111 = matrix4f2.m21;
        this.m22 = f109 + (f110 * f111) + (f101 * f75) + (f77 * f102);
        this.m23 = (f103 * f78) + (f110 * f79) + (matrix4f.m22 * f82) + (f102 * f84);
        float f112 = matrix4f.m30 * f86;
        float f113 = matrix4f.m31;
        float f114 = matrix4f.m32;
        float f115 = matrix4f.m33;
        this.m30 = f112 + (f113 * f89) + (f114 * f92) + (f115 * f95);
        float f116 = matrix4f.m30;
        this.m31 = (f97 * f116) + (f113 * f104) + (f106 * f114) + (f107 * f115);
        float f117 = matrix4f.m31;
        this.m32 = (f116 * f108) + (f111 * f117) + (f114 * matrix4f2.m22) + (matrix4f2.m23 * f115);
        this.m33 = (f116 * matrix4f2.m30) + (f117 * matrix4f2.m31) + (matrix4f.m32 * matrix4f2.m32) + (f115 * f84);
    }

    public final void negate() {
        this.m00 = -this.m00;
        this.m01 = -this.m01;
        this.m02 = -this.m02;
        this.m03 = -this.m03;
        this.m10 = -this.m10;
        this.m11 = -this.m11;
        this.m12 = -this.m12;
        this.m13 = -this.m13;
        this.m20 = -this.m20;
        this.m21 = -this.m21;
        this.m22 = -this.m22;
        this.m23 = -this.m23;
        this.m30 = -this.m30;
        this.m31 = -this.m31;
        this.m32 = -this.m32;
        this.m33 = -this.m33;
    }

    public final void rotX(float f10) {
        double d10 = f10;
        float sin = (float) Math.sin(d10);
        float cos = (float) Math.cos(d10);
        this.m00 = 1.0f;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m03 = 0.0f;
        this.m10 = 0.0f;
        this.m11 = cos;
        this.m12 = -sin;
        this.m13 = 0.0f;
        this.m20 = 0.0f;
        this.m21 = sin;
        this.m22 = cos;
        this.m23 = 0.0f;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void rotY(float f10) {
        double d10 = f10;
        float sin = (float) Math.sin(d10);
        float cos = (float) Math.cos(d10);
        this.m00 = cos;
        this.m01 = 0.0f;
        this.m02 = sin;
        this.m03 = 0.0f;
        this.m10 = 0.0f;
        this.m11 = 1.0f;
        this.m12 = 0.0f;
        this.m13 = 0.0f;
        this.m20 = -sin;
        this.m21 = 0.0f;
        this.m22 = cos;
        this.m23 = 0.0f;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void rotZ(float f10) {
        double d10 = f10;
        float sin = (float) Math.sin(d10);
        float cos = (float) Math.cos(d10);
        this.m00 = cos;
        this.m01 = -sin;
        this.m02 = 0.0f;
        this.m03 = 0.0f;
        this.m10 = sin;
        this.m11 = cos;
        this.m12 = 0.0f;
        this.m13 = 0.0f;
        this.m20 = 0.0f;
        this.m21 = 0.0f;
        this.m22 = 1.0f;
        this.m23 = 0.0f;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void set(Quat4f quat4f) {
        float f10 = quat4f.f92852y;
        float f11 = quat4f.f92853z;
        this.m00 = (1.0f - ((f10 * 2.0f) * f10)) - ((f11 * 2.0f) * f11);
        float f12 = quat4f.f92851x;
        float f13 = quat4f.f92850w;
        this.m10 = ((f12 * f10) + (f13 * f11)) * 2.0f;
        this.m20 = ((f12 * f11) - (f13 * f10)) * 2.0f;
        this.m01 = ((f12 * f10) - (f13 * f11)) * 2.0f;
        this.m11 = (1.0f - ((f12 * 2.0f) * f12)) - ((f11 * 2.0f) * f11);
        this.m21 = ((f10 * f11) + (f13 * f12)) * 2.0f;
        this.m02 = ((f12 * f11) + (f13 * f10)) * 2.0f;
        this.m12 = ((f11 * f10) - (f13 * f12)) * 2.0f;
        this.m22 = (1.0f - ((f12 * 2.0f) * f12)) - ((2.0f * f10) * f10);
        this.m03 = 0.0f;
        this.m13 = 0.0f;
        this.m23 = 0.0f;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void setColumn(int i10, float f10, float f11, float f12, float f13) {
        if (i10 == 0) {
            this.m00 = f10;
            this.m10 = f11;
            this.m20 = f12;
            this.m30 = f13;
            return;
        }
        if (i10 == 1) {
            this.m01 = f10;
            this.m11 = f11;
            this.m21 = f12;
            this.m31 = f13;
            return;
        }
        if (i10 == 2) {
            this.m02 = f10;
            this.m12 = f11;
            this.m22 = f12;
            this.m32 = f13;
            return;
        }
        if (i10 == 3) {
            this.m03 = f10;
            this.m13 = f11;
            this.m23 = f12;
            this.m33 = f13;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f9"));
    }

    public final void setElement(int i10, int i11, float f10) {
        if (i10 == 0) {
            if (i11 == 0) {
                this.m00 = f10;
                return;
            }
            if (i11 == 1) {
                this.m01 = f10;
                return;
            } else if (i11 == 2) {
                this.m02 = f10;
                return;
            } else {
                if (i11 != 3) {
                    throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f0"));
                }
                this.m03 = f10;
                return;
            }
        }
        if (i10 == 1) {
            if (i11 == 0) {
                this.m10 = f10;
                return;
            }
            if (i11 == 1) {
                this.m11 = f10;
                return;
            } else if (i11 == 2) {
                this.m12 = f10;
                return;
            } else {
                if (i11 != 3) {
                    throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f0"));
                }
                this.m13 = f10;
                return;
            }
        }
        if (i10 == 2) {
            if (i11 == 0) {
                this.m20 = f10;
                return;
            }
            if (i11 == 1) {
                this.m21 = f10;
                return;
            } else if (i11 == 2) {
                this.m22 = f10;
                return;
            } else {
                if (i11 != 3) {
                    throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f0"));
                }
                this.m23 = f10;
                return;
            }
        }
        if (i10 != 3) {
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f0"));
        }
        if (i11 == 0) {
            this.m30 = f10;
            return;
        }
        if (i11 == 1) {
            this.m31 = f10;
        } else if (i11 == 2) {
            this.m32 = f10;
        } else {
            if (i11 != 3) {
                throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f0"));
            }
            this.m33 = f10;
        }
    }

    public final void setIdentity() {
        this.m00 = 1.0f;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m03 = 0.0f;
        this.m10 = 0.0f;
        this.m11 = 1.0f;
        this.m12 = 0.0f;
        this.m13 = 0.0f;
        this.m20 = 0.0f;
        this.m21 = 0.0f;
        this.m22 = 1.0f;
        this.m23 = 0.0f;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void setM00(float f10) {
        this.m00 = f10;
    }

    public final void setM01(float f10) {
        this.m01 = f10;
    }

    public final void setM02(float f10) {
        this.m02 = f10;
    }

    public final void setM03(float f10) {
        this.m03 = f10;
    }

    public final void setM10(float f10) {
        this.m10 = f10;
    }

    public final void setM11(float f10) {
        this.m11 = f10;
    }

    public final void setM12(float f10) {
        this.m12 = f10;
    }

    public final void setM13(float f10) {
        this.m13 = f10;
    }

    public final void setM20(float f10) {
        this.m20 = f10;
    }

    public final void setM21(float f10) {
        this.m21 = f10;
    }

    public final void setM22(float f10) {
        this.m22 = f10;
    }

    public final void setM23(float f10) {
        this.m23 = f10;
    }

    public final void setM30(float f10) {
        this.m30 = f10;
    }

    public final void setM31(float f10) {
        this.m31 = f10;
    }

    public final void setM32(float f10) {
        this.m32 = f10;
    }

    public final void setM33(float f10) {
        this.m33 = f10;
    }

    public final void setRotation(Matrix3d matrix3d) {
        double[] dArr = new double[3];
        getScaleRotate(dArr, new double[9]);
        double d10 = matrix3d.m00;
        double d11 = dArr[0];
        this.m00 = (float) (d10 * d11);
        double d12 = matrix3d.m01;
        double d13 = dArr[1];
        this.m01 = (float) (d12 * d13);
        double d14 = matrix3d.m02;
        double d15 = dArr[2];
        this.m02 = (float) (d14 * d15);
        this.m10 = (float) (matrix3d.m10 * d11);
        this.m11 = (float) (matrix3d.m11 * d13);
        this.m12 = (float) (matrix3d.m12 * d15);
        this.m20 = (float) (matrix3d.m20 * d11);
        this.m21 = (float) (matrix3d.m21 * d13);
        this.m22 = (float) (matrix3d.m22 * d15);
    }

    public final void setRotationScale(Matrix3f matrix3f) {
        this.m00 = matrix3f.m00;
        this.m01 = matrix3f.m01;
        this.m02 = matrix3f.m02;
        this.m10 = matrix3f.m10;
        this.m11 = matrix3f.m11;
        this.m12 = matrix3f.m12;
        this.m20 = matrix3f.m20;
        this.m21 = matrix3f.m21;
        this.m22 = matrix3f.m22;
    }

    public final void setRow(int i10, float f10, float f11, float f12, float f13) {
        if (i10 == 0) {
            this.m00 = f10;
            this.m01 = f11;
            this.m02 = f12;
            this.m03 = f13;
            return;
        }
        if (i10 == 1) {
            this.m10 = f10;
            this.m11 = f11;
            this.m12 = f12;
            this.m13 = f13;
            return;
        }
        if (i10 == 2) {
            this.m20 = f10;
            this.m21 = f11;
            this.m22 = f12;
            this.m23 = f13;
            return;
        }
        if (i10 == 3) {
            this.m30 = f10;
            this.m31 = f11;
            this.m32 = f12;
            this.m33 = f13;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f6"));
    }

    public final void setScale(float f10) {
        double[] dArr = new double[9];
        getScaleRotate(new double[3], dArr);
        double d10 = f10;
        this.m00 = (float) (dArr[0] * d10);
        this.m01 = (float) (dArr[1] * d10);
        this.m02 = (float) (dArr[2] * d10);
        this.m10 = (float) (dArr[3] * d10);
        this.m11 = (float) (dArr[4] * d10);
        this.m12 = (float) (dArr[5] * d10);
        this.m20 = (float) (dArr[6] * d10);
        this.m21 = (float) (dArr[7] * d10);
        this.m22 = (float) (dArr[8] * d10);
    }

    public final void setTranslation(Vector3f vector3f) {
        this.m03 = vector3f.f92836x;
        this.m13 = vector3f.f92837y;
        this.m23 = vector3f.f92838z;
    }

    public final void setZero() {
        this.m00 = 0.0f;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m03 = 0.0f;
        this.m10 = 0.0f;
        this.m11 = 0.0f;
        this.m12 = 0.0f;
        this.m13 = 0.0f;
        this.m20 = 0.0f;
        this.m21 = 0.0f;
        this.m22 = 0.0f;
        this.m23 = 0.0f;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 0.0f;
    }

    public final void sub(Matrix4f matrix4f, Matrix4f matrix4f2) {
        this.m00 = matrix4f.m00 - matrix4f2.m00;
        this.m01 = matrix4f.m01 - matrix4f2.m01;
        this.m02 = matrix4f.m02 - matrix4f2.m02;
        this.m03 = matrix4f.m03 - matrix4f2.m03;
        this.m10 = matrix4f.m10 - matrix4f2.m10;
        this.m11 = matrix4f.m11 - matrix4f2.m11;
        this.m12 = matrix4f.m12 - matrix4f2.m12;
        this.m13 = matrix4f.m13 - matrix4f2.m13;
        this.m20 = matrix4f.m20 - matrix4f2.m20;
        this.m21 = matrix4f.m21 - matrix4f2.m21;
        this.m22 = matrix4f.m22 - matrix4f2.m22;
        this.m23 = matrix4f.m23 - matrix4f2.m23;
        this.m30 = matrix4f.m30 - matrix4f2.m30;
        this.m31 = matrix4f.m31 - matrix4f2.m31;
        this.m32 = matrix4f.m32 - matrix4f2.m32;
        this.m33 = matrix4f.m33 - matrix4f2.m33;
    }

    public String toString() {
        return this.m00 + ", " + this.m01 + ", " + this.m02 + ", " + this.m03 + "\n" + this.m10 + ", " + this.m11 + ", " + this.m12 + ", " + this.m13 + "\n" + this.m20 + ", " + this.m21 + ", " + this.m22 + ", " + this.m23 + "\n" + this.m30 + ", " + this.m31 + ", " + this.m32 + ", " + this.m33 + "\n";
    }

    public final void transform(Tuple4f tuple4f, Tuple4f tuple4f2) {
        float f10 = this.m00;
        float f11 = tuple4f.f92851x;
        float f12 = this.m01;
        float f13 = tuple4f.f92852y;
        float f14 = (f10 * f11) + (f12 * f13);
        float f15 = this.m02;
        float f16 = tuple4f.f92853z;
        float f17 = f14 + (f15 * f16);
        float f18 = this.m03;
        float f19 = tuple4f.f92850w;
        float f20 = f17 + (f18 * f19);
        float f21 = (this.m10 * f11) + (this.m11 * f13) + (this.m12 * f16) + (this.m13 * f19);
        float f22 = (this.m20 * f11) + (this.m21 * f13) + (this.m22 * f16) + (this.m23 * f19);
        tuple4f2.f92850w = (this.m30 * f11) + (this.m31 * f13) + (this.m32 * f16) + (this.m33 * f19);
        tuple4f2.f92851x = f20;
        tuple4f2.f92852y = f21;
        tuple4f2.f92853z = f22;
    }

    public final void transpose() {
        float f10 = this.m10;
        this.m10 = this.m01;
        this.m01 = f10;
        float f11 = this.m20;
        this.m20 = this.m02;
        this.m02 = f11;
        float f12 = this.m30;
        this.m30 = this.m03;
        this.m03 = f12;
        float f13 = this.m21;
        this.m21 = this.m12;
        this.m12 = f13;
        float f14 = this.m31;
        this.m31 = this.m13;
        this.m13 = f14;
        float f15 = this.m32;
        this.m32 = this.m23;
        this.m23 = f15;
    }

    public boolean equals(Object obj) {
        try {
            Matrix4f matrix4f = (Matrix4f) obj;
            if (this.m00 == matrix4f.m00 && this.m01 == matrix4f.m01 && this.m02 == matrix4f.m02 && this.m03 == matrix4f.m03 && this.m10 == matrix4f.m10 && this.m11 == matrix4f.m11 && this.m12 == matrix4f.m12 && this.m13 == matrix4f.m13 && this.m20 == matrix4f.m20 && this.m21 == matrix4f.m21 && this.m22 == matrix4f.m22 && this.m23 == matrix4f.m23 && this.m30 == matrix4f.m30 && this.m31 == matrix4f.m31 && this.m32 == matrix4f.m32) {
                return this.m33 == matrix4f.m33;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void invert() {
        invertGeneral(this);
    }

    public final void transform(Tuple4f tuple4f) {
        float f10 = this.m00;
        float f11 = tuple4f.f92851x;
        float f12 = this.m01;
        float f13 = tuple4f.f92852y;
        float f14 = (f10 * f11) + (f12 * f13);
        float f15 = this.m02;
        float f16 = tuple4f.f92853z;
        float f17 = f14 + (f15 * f16);
        float f18 = this.m03;
        float f19 = tuple4f.f92850w;
        float f20 = f17 + (f18 * f19);
        float f21 = (this.m10 * f11) + (this.m11 * f13) + (this.m12 * f16) + (this.m13 * f19);
        float f22 = (this.m20 * f11) + (this.m21 * f13) + (this.m22 * f16) + (this.m23 * f19);
        tuple4f.f92850w = (this.m30 * f11) + (this.m31 * f13) + (this.m32 * f16) + (this.m33 * f19);
        tuple4f.f92851x = f20;
        tuple4f.f92852y = f21;
        tuple4f.f92853z = f22;
    }

    public final void get(Matrix3f matrix3f) {
        double[] dArr = new double[9];
        getScaleRotate(new double[3], dArr);
        matrix3f.m00 = (float) dArr[0];
        matrix3f.m01 = (float) dArr[1];
        matrix3f.m02 = (float) dArr[2];
        matrix3f.m10 = (float) dArr[3];
        matrix3f.m11 = (float) dArr[4];
        matrix3f.m12 = (float) dArr[5];
        matrix3f.m20 = (float) dArr[6];
        matrix3f.m21 = (float) dArr[7];
        matrix3f.m22 = (float) dArr[8];
    }

    public final void setRotation(Matrix3f matrix3f) {
        double[] dArr = new double[3];
        getScaleRotate(dArr, new double[9]);
        double d10 = matrix3f.m00;
        double d11 = dArr[0];
        this.m00 = (float) (d10 * d11);
        double d12 = matrix3f.m01;
        double d13 = dArr[1];
        this.m01 = (float) (d12 * d13);
        double d14 = matrix3f.m02;
        double d15 = dArr[2];
        this.m02 = (float) (d14 * d15);
        this.m10 = (float) (matrix3f.m10 * d11);
        this.m11 = (float) (matrix3f.m11 * d13);
        this.m12 = (float) (matrix3f.m12 * d15);
        this.m20 = (float) (matrix3f.m20 * d11);
        this.m21 = (float) (matrix3f.m21 * d13);
        this.m22 = (float) (matrix3f.m22 * d15);
    }

    public final void transform(Point3f point3f, Point3f point3f2) {
        float f10 = this.m00;
        float f11 = point3f.f92836x;
        float f12 = this.m01;
        float f13 = point3f.f92837y;
        float f14 = (f10 * f11) + (f12 * f13);
        float f15 = this.m02;
        float f16 = point3f.f92838z;
        float f17 = f14 + (f15 * f16) + this.m03;
        float f18 = (this.m10 * f11) + (this.m11 * f13) + (this.m12 * f16) + this.m13;
        point3f2.f92838z = (this.m20 * f11) + (this.m21 * f13) + (this.m22 * f16) + this.m23;
        point3f2.f92836x = f17;
        point3f2.f92837y = f18;
    }

    public final void add(float f10, Matrix4f matrix4f) {
        this.m00 = matrix4f.m00 + f10;
        this.m01 = matrix4f.m01 + f10;
        this.m02 = matrix4f.m02 + f10;
        this.m03 = matrix4f.m03 + f10;
        this.m10 = matrix4f.m10 + f10;
        this.m11 = matrix4f.m11 + f10;
        this.m12 = matrix4f.m12 + f10;
        this.m13 = matrix4f.m13 + f10;
        this.m20 = matrix4f.m20 + f10;
        this.m21 = matrix4f.m21 + f10;
        this.m22 = matrix4f.m22 + f10;
        this.m23 = matrix4f.m23 + f10;
        this.m30 = matrix4f.m30 + f10;
        this.m31 = matrix4f.m31 + f10;
        this.m32 = matrix4f.m32 + f10;
        this.m33 = matrix4f.m33 + f10;
    }

    public final void mul(float f10, Matrix4f matrix4f) {
        this.m00 = matrix4f.m00 * f10;
        this.m01 = matrix4f.m01 * f10;
        this.m02 = matrix4f.m02 * f10;
        this.m03 = matrix4f.m03 * f10;
        this.m10 = matrix4f.m10 * f10;
        this.m11 = matrix4f.m11 * f10;
        this.m12 = matrix4f.m12 * f10;
        this.m13 = matrix4f.m13 * f10;
        this.m20 = matrix4f.m20 * f10;
        this.m21 = matrix4f.m21 * f10;
        this.m22 = matrix4f.m22 * f10;
        this.m23 = matrix4f.m23 * f10;
        this.m30 = matrix4f.m30 * f10;
        this.m31 = matrix4f.m31 * f10;
        this.m32 = matrix4f.m32 * f10;
        this.m33 = matrix4f.m33 * f10;
    }

    public final void negate(Matrix4f matrix4f) {
        this.m00 = -matrix4f.m00;
        this.m01 = -matrix4f.m01;
        this.m02 = -matrix4f.m02;
        this.m03 = -matrix4f.m03;
        this.m10 = -matrix4f.m10;
        this.m11 = -matrix4f.m11;
        this.m12 = -matrix4f.m12;
        this.m13 = -matrix4f.m13;
        this.m20 = -matrix4f.m20;
        this.m21 = -matrix4f.m21;
        this.m22 = -matrix4f.m22;
        this.m23 = -matrix4f.m23;
        this.m30 = -matrix4f.m30;
        this.m31 = -matrix4f.m31;
        this.m32 = -matrix4f.m32;
        this.m33 = -matrix4f.m33;
    }

    public final void set(AxisAngle4f axisAngle4f) {
        float f10 = axisAngle4f.f92821x;
        float f11 = axisAngle4f.f92822y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = axisAngle4f.f92823z;
        float sqrt = (float) Math.sqrt(f12 + (f13 * f13));
        if (sqrt < 1.0E-8d) {
            this.m00 = 1.0f;
            this.m01 = 0.0f;
            this.m02 = 0.0f;
            this.m10 = 0.0f;
            this.m11 = 1.0f;
            this.m12 = 0.0f;
            this.m20 = 0.0f;
            this.m21 = 0.0f;
            this.m22 = 1.0f;
        } else {
            float f14 = 1.0f / sqrt;
            float f15 = axisAngle4f.f92821x * f14;
            float f16 = axisAngle4f.f92822y * f14;
            float f17 = axisAngle4f.f92823z * f14;
            float sin = (float) Math.sin(axisAngle4f.angle);
            float cos = (float) Math.cos(axisAngle4f.angle);
            float f18 = 1.0f - cos;
            this.m00 = (f18 * f15 * f15) + cos;
            float f19 = f15 * f16 * f18;
            float f20 = sin * f17;
            this.m01 = f19 - f20;
            float f21 = f15 * f17 * f18;
            float f22 = sin * f16;
            this.m02 = f21 + f22;
            this.m10 = f19 + f20;
            this.m11 = (f18 * f16 * f16) + cos;
            float f23 = f16 * f17 * f18;
            float f24 = sin * f15;
            this.m12 = f23 - f24;
            this.m20 = f21 - f22;
            this.m21 = f23 + f24;
            this.m22 = (f18 * f17 * f17) + cos;
        }
        this.m03 = 0.0f;
        this.m13 = 0.0f;
        this.m23 = 0.0f;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void sub(Matrix4f matrix4f) {
        this.m00 -= matrix4f.m00;
        this.m01 -= matrix4f.m01;
        this.m02 -= matrix4f.m02;
        this.m03 -= matrix4f.m03;
        this.m10 -= matrix4f.m10;
        this.m11 -= matrix4f.m11;
        this.m12 -= matrix4f.m12;
        this.m13 -= matrix4f.m13;
        this.m20 -= matrix4f.m20;
        this.m21 -= matrix4f.m21;
        this.m22 -= matrix4f.m22;
        this.m23 -= matrix4f.m23;
        this.m30 -= matrix4f.m30;
        this.m31 -= matrix4f.m31;
        this.m32 -= matrix4f.m32;
        this.m33 -= matrix4f.m33;
    }

    public Matrix4f(float[] fArr) {
        this.m00 = fArr[0];
        this.m01 = fArr[1];
        this.m02 = fArr[2];
        this.m03 = fArr[3];
        this.m10 = fArr[4];
        this.m11 = fArr[5];
        this.m12 = fArr[6];
        this.m13 = fArr[7];
        this.m20 = fArr[8];
        this.m21 = fArr[9];
        this.m22 = fArr[10];
        this.m23 = fArr[11];
        this.m30 = fArr[12];
        this.m31 = fArr[13];
        this.m32 = fArr[14];
        this.m33 = fArr[15];
    }

    public final void getColumn(int i10, float[] fArr) {
        if (i10 == 0) {
            fArr[0] = this.m00;
            fArr[1] = this.m10;
            fArr[2] = this.m20;
            fArr[3] = this.m30;
            return;
        }
        if (i10 == 1) {
            fArr[0] = this.m01;
            fArr[1] = this.m11;
            fArr[2] = this.m21;
            fArr[3] = this.m31;
            return;
        }
        if (i10 == 2) {
            fArr[0] = this.m02;
            fArr[1] = this.m12;
            fArr[2] = this.m22;
            fArr[3] = this.m32;
            return;
        }
        if (i10 == 3) {
            fArr[0] = this.m03;
            fArr[1] = this.m13;
            fArr[2] = this.m23;
            fArr[3] = this.m33;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f4"));
    }

    public final void getRow(int i10, float[] fArr) {
        if (i10 == 0) {
            fArr[0] = this.m00;
            fArr[1] = this.m01;
            fArr[2] = this.m02;
            fArr[3] = this.m03;
            return;
        }
        if (i10 == 1) {
            fArr[0] = this.m10;
            fArr[1] = this.m11;
            fArr[2] = this.m12;
            fArr[3] = this.m13;
            return;
        }
        if (i10 == 2) {
            fArr[0] = this.m20;
            fArr[1] = this.m21;
            fArr[2] = this.m22;
            fArr[3] = this.m23;
            return;
        }
        if (i10 == 3) {
            fArr[0] = this.m30;
            fArr[1] = this.m31;
            fArr[2] = this.m32;
            fArr[3] = this.m33;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f2"));
    }

    public final void setColumn(int i10, Vector4f vector4f) {
        if (i10 == 0) {
            this.m00 = vector4f.f92851x;
            this.m10 = vector4f.f92852y;
            this.m20 = vector4f.f92853z;
            this.m30 = vector4f.f92850w;
            return;
        }
        if (i10 == 1) {
            this.m01 = vector4f.f92851x;
            this.m11 = vector4f.f92852y;
            this.m21 = vector4f.f92853z;
            this.m31 = vector4f.f92850w;
            return;
        }
        if (i10 == 2) {
            this.m02 = vector4f.f92851x;
            this.m12 = vector4f.f92852y;
            this.m22 = vector4f.f92853z;
            this.m32 = vector4f.f92850w;
            return;
        }
        if (i10 == 3) {
            this.m03 = vector4f.f92851x;
            this.m13 = vector4f.f92852y;
            this.m23 = vector4f.f92853z;
            this.m33 = vector4f.f92850w;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f9"));
    }

    public final void setRow(int i10, Vector4f vector4f) {
        if (i10 == 0) {
            this.m00 = vector4f.f92851x;
            this.m01 = vector4f.f92852y;
            this.m02 = vector4f.f92853z;
            this.m03 = vector4f.f92850w;
            return;
        }
        if (i10 == 1) {
            this.m10 = vector4f.f92851x;
            this.m11 = vector4f.f92852y;
            this.m12 = vector4f.f92853z;
            this.m13 = vector4f.f92850w;
            return;
        }
        if (i10 == 2) {
            this.m20 = vector4f.f92851x;
            this.m21 = vector4f.f92852y;
            this.m22 = vector4f.f92853z;
            this.m23 = vector4f.f92850w;
            return;
        }
        if (i10 == 3) {
            this.m30 = vector4f.f92851x;
            this.m31 = vector4f.f92852y;
            this.m32 = vector4f.f92853z;
            this.m33 = vector4f.f92850w;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f6"));
    }

    public final void transpose(Matrix4f matrix4f) {
        if (this != matrix4f) {
            this.m00 = matrix4f.m00;
            this.m01 = matrix4f.m10;
            this.m02 = matrix4f.m20;
            this.m03 = matrix4f.m30;
            this.m10 = matrix4f.m01;
            this.m11 = matrix4f.m11;
            this.m12 = matrix4f.m21;
            this.m13 = matrix4f.m31;
            this.m20 = matrix4f.m02;
            this.m21 = matrix4f.m12;
            this.m22 = matrix4f.m22;
            this.m23 = matrix4f.m32;
            this.m30 = matrix4f.m03;
            this.m31 = matrix4f.m13;
            this.m32 = matrix4f.m23;
            this.m33 = matrix4f.m33;
            return;
        }
        transpose();
    }

    public final void transform(Point3f point3f) {
        float f10 = this.m00;
        float f11 = point3f.f92836x;
        float f12 = this.m01;
        float f13 = point3f.f92837y;
        float f14 = (f10 * f11) + (f12 * f13);
        float f15 = this.m02;
        float f16 = point3f.f92838z;
        float f17 = f14 + (f15 * f16) + this.m03;
        float f18 = (this.m10 * f11) + (this.m11 * f13) + (this.m12 * f16) + this.m13;
        point3f.f92838z = (this.m20 * f11) + (this.m21 * f13) + (this.m22 * f16) + this.m23;
        point3f.f92836x = f17;
        point3f.f92837y = f18;
    }

    public final float get(Matrix3f matrix3f, Vector3f vector3f) {
        double[] dArr = new double[9];
        double[] dArr2 = new double[3];
        getScaleRotate(dArr2, dArr);
        matrix3f.m00 = (float) dArr[0];
        matrix3f.m01 = (float) dArr[1];
        matrix3f.m02 = (float) dArr[2];
        matrix3f.m10 = (float) dArr[3];
        matrix3f.m11 = (float) dArr[4];
        matrix3f.m12 = (float) dArr[5];
        matrix3f.m20 = (float) dArr[6];
        matrix3f.m21 = (float) dArr[7];
        matrix3f.m22 = (float) dArr[8];
        vector3f.f92836x = this.m03;
        vector3f.f92837y = this.m13;
        vector3f.f92838z = this.m23;
        return (float) Matrix3d.max3(dArr2);
    }

    public final void setRotation(Quat4f quat4f) {
        double[] dArr = new double[3];
        getScaleRotate(dArr, new double[9]);
        float f10 = quat4f.f92852y;
        float f11 = quat4f.f92853z;
        double d10 = dArr[0];
        this.m00 = (float) (((1.0f - ((f10 * 2.0f) * f10)) - ((f11 * 2.0f) * f11)) * d10);
        float f12 = quat4f.f92851x;
        float f13 = quat4f.f92850w;
        this.m10 = (float) (((f12 * f10) + (f13 * f11)) * 2.0f * d10);
        this.m20 = (float) (((f12 * f11) - (f13 * f10)) * 2.0f * d10);
        double d11 = dArr[1];
        this.m01 = (float) (((f12 * f10) - (f13 * f11)) * 2.0f * d11);
        this.m11 = (float) (((1.0f - ((f12 * 2.0f) * f12)) - ((f11 * 2.0f) * f11)) * d11);
        this.m21 = (float) (((f10 * f11) + (f13 * f12)) * 2.0f * d11);
        double d12 = dArr[2];
        this.m02 = (float) (((f12 * f11) + (f13 * f10)) * 2.0f * d12);
        this.m12 = (float) (((f11 * f10) - (f13 * f12)) * 2.0f * d12);
        this.m22 = (float) (((1.0f - ((f12 * 2.0f) * f12)) - ((2.0f * f10) * f10)) * d12);
    }

    public final void transform(Vector3f vector3f, Vector3f vector3f2) {
        float f10 = this.m00;
        float f11 = vector3f.f92836x;
        float f12 = this.m01;
        float f13 = vector3f.f92837y;
        float f14 = (f10 * f11) + (f12 * f13);
        float f15 = this.m02;
        float f16 = vector3f.f92838z;
        float f17 = f14 + (f15 * f16);
        float f18 = (this.m10 * f11) + (this.m11 * f13) + (this.m12 * f16);
        vector3f2.f92838z = (this.m20 * f11) + (this.m21 * f13) + (this.m22 * f16);
        vector3f2.f92836x = f17;
        vector3f2.f92837y = f18;
    }

    public final void transform(Vector3f vector3f) {
        float f10 = this.m00;
        float f11 = vector3f.f92836x;
        float f12 = this.m01;
        float f13 = vector3f.f92837y;
        float f14 = (f10 * f11) + (f12 * f13);
        float f15 = this.m02;
        float f16 = vector3f.f92838z;
        float f17 = f14 + (f15 * f16);
        float f18 = (this.m10 * f11) + (this.m11 * f13) + (this.m12 * f16);
        vector3f.f92838z = (this.m20 * f11) + (this.m21 * f13) + (this.m22 * f16);
        vector3f.f92836x = f17;
        vector3f.f92837y = f18;
    }

    public final void add(Matrix4f matrix4f, Matrix4f matrix4f2) {
        this.m00 = matrix4f.m00 + matrix4f2.m00;
        this.m01 = matrix4f.m01 + matrix4f2.m01;
        this.m02 = matrix4f.m02 + matrix4f2.m02;
        this.m03 = matrix4f.m03 + matrix4f2.m03;
        this.m10 = matrix4f.m10 + matrix4f2.m10;
        this.m11 = matrix4f.m11 + matrix4f2.m11;
        this.m12 = matrix4f.m12 + matrix4f2.m12;
        this.m13 = matrix4f.m13 + matrix4f2.m13;
        this.m20 = matrix4f.m20 + matrix4f2.m20;
        this.m21 = matrix4f.m21 + matrix4f2.m21;
        this.m22 = matrix4f.m22 + matrix4f2.m22;
        this.m23 = matrix4f.m23 + matrix4f2.m23;
        this.m30 = matrix4f.m30 + matrix4f2.m30;
        this.m31 = matrix4f.m31 + matrix4f2.m31;
        this.m32 = matrix4f.m32 + matrix4f2.m32;
        this.m33 = matrix4f.m33 + matrix4f2.m33;
    }

    public final void mul(Matrix4f matrix4f) {
        float f10 = this.m00;
        float f11 = matrix4f.m00;
        float f12 = this.m01;
        float f13 = matrix4f.m10;
        float f14 = this.m02;
        float f15 = matrix4f.m20;
        float f16 = this.m03;
        float f17 = matrix4f.m30;
        float f18 = (f10 * f11) + (f12 * f13) + (f14 * f15) + (f16 * f17);
        float f19 = matrix4f.m01;
        float f20 = matrix4f.m11;
        float f21 = matrix4f.m21;
        float f22 = matrix4f.m31;
        float f23 = (f10 * f19) + (f12 * f20) + (f14 * f21) + (f16 * f22);
        float f24 = matrix4f.m02;
        float f25 = matrix4f.m12;
        float f26 = (f10 * f24) + (f12 * f25);
        float f27 = matrix4f.m22;
        float f28 = f26 + (f14 * f27);
        float f29 = matrix4f.m32;
        float f30 = f28 + (f16 * f29);
        float f31 = matrix4f.m03;
        float f32 = f10 * f31;
        float f33 = matrix4f.m13;
        float f34 = f32 + (f12 * f33);
        float f35 = matrix4f.m23;
        float f36 = matrix4f.m33;
        float f37 = f34 + (f14 * f35) + (f16 * f36);
        float f38 = this.m10;
        float f39 = this.m11;
        float f40 = (f38 * f11) + (f39 * f13);
        float f41 = this.m12;
        float f42 = f40 + (f41 * f15);
        float f43 = this.m13;
        float f44 = f42 + (f43 * f17);
        float f45 = (f38 * f19) + (f39 * f20) + (f41 * f21) + (f43 * f22);
        float f46 = (f38 * f24) + (f39 * f25) + (f41 * f27) + (f43 * f29);
        float f47 = (f38 * f31) + (f39 * f33) + (f41 * f35) + (f43 * f36);
        float f48 = this.m20;
        float f49 = this.m21;
        float f50 = this.m22;
        float f51 = this.m23;
        float f52 = (f48 * f11) + (f49 * f13) + (f50 * f15) + (f51 * f17);
        float f53 = (f48 * f19) + (f49 * f20) + (f50 * f21) + (f51 * f22);
        float f54 = (f48 * f24) + (f49 * f25) + (f50 * f27) + (f51 * f29);
        float f55 = (f48 * f31) + (f49 * f33) + (f50 * f35) + (f51 * f36);
        float f56 = this.m30;
        float f57 = this.m31;
        float f58 = this.m32;
        float f59 = this.m33;
        this.m00 = f18;
        this.m01 = f23;
        this.m02 = f30;
        this.m03 = f37;
        this.m10 = f44;
        this.m11 = f45;
        this.m12 = f46;
        this.m13 = f47;
        this.m20 = f52;
        this.m21 = f53;
        this.m22 = f54;
        this.m23 = f55;
        this.m30 = (f11 * f56) + (f57 * f13) + (f58 * f15) + (f17 * f59);
        this.m31 = (f19 * f56) + (f20 * f57) + (f21 * f58) + (f22 * f59);
        this.m32 = (f24 * f56) + (f57 * f25) + (f58 * f27) + (f59 * f29);
        this.m33 = (f56 * f31) + (f57 * f33) + (f58 * f35) + (f59 * f36);
    }

    public Matrix4f(Quat4f quat4f, Vector3f vector3f, float f10) {
        double d10 = f10;
        float f11 = quat4f.f92852y;
        float f12 = quat4f.f92853z;
        this.m00 = (float) (((1.0d - ((f11 * 2.0d) * f11)) - ((f12 * 2.0d) * f12)) * d10);
        float f13 = quat4f.f92851x;
        float f14 = quat4f.f92850w;
        this.m10 = (float) (((f13 * f11) + (f14 * f12)) * 2.0d * d10);
        this.m20 = (float) (((f13 * f12) - (f14 * f11)) * 2.0d * d10);
        this.m01 = (float) (((f13 * f11) - (f14 * f12)) * 2.0d * d10);
        this.m11 = (float) (((1.0d - ((f13 * 2.0d) * f13)) - ((f12 * 2.0d) * f12)) * d10);
        this.m21 = (float) (((f11 * f12) + (f14 * f13)) * 2.0d * d10);
        this.m02 = (float) (((f13 * f12) + (f14 * f11)) * 2.0d * d10);
        this.m12 = (float) (((f12 * f11) - (f14 * f13)) * 2.0d * d10);
        this.m22 = (float) (d10 * ((1.0d - ((f13 * 2.0d) * f13)) - ((f11 * 2.0d) * f11)));
        this.m03 = vector3f.f92836x;
        this.m13 = vector3f.f92837y;
        this.m23 = vector3f.f92838z;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void setColumn(int i10, float[] fArr) {
        if (i10 == 0) {
            this.m00 = fArr[0];
            this.m10 = fArr[1];
            this.m20 = fArr[2];
            this.m30 = fArr[3];
            return;
        }
        if (i10 == 1) {
            this.m01 = fArr[0];
            this.m11 = fArr[1];
            this.m21 = fArr[2];
            this.m31 = fArr[3];
            return;
        }
        if (i10 == 2) {
            this.m02 = fArr[0];
            this.m12 = fArr[1];
            this.m22 = fArr[2];
            this.m32 = fArr[3];
            return;
        }
        if (i10 == 3) {
            this.m03 = fArr[0];
            this.m13 = fArr[1];
            this.m23 = fArr[2];
            this.m33 = fArr[3];
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f9"));
    }

    public final void setRow(int i10, float[] fArr) {
        if (i10 == 0) {
            this.m00 = fArr[0];
            this.m01 = fArr[1];
            this.m02 = fArr[2];
            this.m03 = fArr[3];
            return;
        }
        if (i10 == 1) {
            this.m10 = fArr[0];
            this.m11 = fArr[1];
            this.m12 = fArr[2];
            this.m13 = fArr[3];
            return;
        }
        if (i10 == 2) {
            this.m20 = fArr[0];
            this.m21 = fArr[1];
            this.m22 = fArr[2];
            this.m23 = fArr[3];
            return;
        }
        if (i10 == 3) {
            this.m30 = fArr[0];
            this.m31 = fArr[1];
            this.m32 = fArr[2];
            this.m33 = fArr[3];
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4f6"));
    }

    public final void setRotation(Quat4d quat4d) {
        double[] dArr = new double[3];
        getScaleRotate(dArr, new double[9]);
        double d10 = quat4d.f92848y;
        double d11 = quat4d.f92849z;
        double d12 = dArr[0];
        this.m00 = (float) (((1.0d - ((d10 * 2.0d) * d10)) - ((d11 * 2.0d) * d11)) * d12);
        double d13 = quat4d.f92847x;
        double d14 = quat4d.f92846w;
        this.m10 = (float) (((d13 * d10) + (d14 * d11)) * 2.0d * d12);
        this.m20 = (float) (((d13 * d11) - (d14 * d10)) * 2.0d * d12);
        double d15 = dArr[1];
        this.m01 = (float) (((d13 * d10) - (d14 * d11)) * 2.0d * d15);
        this.m11 = (float) (((1.0d - ((d13 * 2.0d) * d13)) - ((d11 * 2.0d) * d11)) * d15);
        this.m21 = (float) (((d10 * d11) + (d14 * d13)) * 2.0d * d15);
        double d16 = dArr[2];
        this.m02 = (float) (((d13 * d11) + (d14 * d10)) * 2.0d * d16);
        this.m12 = (float) (((d11 * d10) - (d14 * d13)) * 2.0d * d16);
        this.m22 = (float) (((1.0d - ((d13 * 2.0d) * d13)) - ((2.0d * d10) * d10)) * d16);
    }

    public final void get(Quat4f quat4f) {
        double[] dArr = new double[9];
        getScaleRotate(new double[3], dArr);
        double d10 = dArr[0] + 1.0d;
        double d11 = dArr[4];
        double d12 = dArr[8];
        double d13 = (d10 + d11 + d12) * 0.25d;
        if ((d13 < 0.0d ? -d13 : d13) >= 1.0E-30d) {
            float sqrt = (float) Math.sqrt(d13);
            quat4f.f92850w = sqrt;
            double d14 = 0.25d / sqrt;
            quat4f.f92851x = (float) ((dArr[7] - dArr[5]) * d14);
            quat4f.f92852y = (float) ((dArr[2] - dArr[6]) * d14);
            quat4f.f92853z = (float) ((dArr[3] - dArr[1]) * d14);
            return;
        }
        quat4f.f92850w = 0.0f;
        double d15 = (d11 + d12) * (-0.5d);
        if ((d15 < 0.0d ? -d15 : d15) >= 1.0E-30d) {
            float sqrt2 = (float) Math.sqrt(d15);
            quat4f.f92851x = sqrt2;
            double d16 = 0.5d / sqrt2;
            quat4f.f92852y = (float) (dArr[3] * d16);
            quat4f.f92853z = (float) (dArr[6] * d16);
            return;
        }
        quat4f.f92851x = 0.0f;
        double d17 = (1.0d - d12) * 0.5d;
        if ((d17 < 0.0d ? -d17 : d17) >= 1.0E-30d) {
            float sqrt3 = (float) Math.sqrt(d17);
            quat4f.f92852y = sqrt3;
            quat4f.f92853z = (float) (dArr[7] / (sqrt3 * 2.0d));
        } else {
            quat4f.f92852y = 0.0f;
            quat4f.f92853z = 1.0f;
        }
    }

    public final void mul(Matrix4f matrix4f, Matrix4f matrix4f2) {
        if (this != matrix4f && this != matrix4f2) {
            float f10 = matrix4f.m00 * matrix4f2.m00;
            float f11 = matrix4f.m01;
            float f12 = matrix4f2.m10;
            float f13 = matrix4f.m02;
            float f14 = matrix4f2.m20;
            float f15 = matrix4f.m03;
            float f16 = matrix4f2.m30;
            this.m00 = f10 + (f11 * f12) + (f13 * f14) + (f15 * f16);
            float f17 = matrix4f.m00;
            float f18 = matrix4f2.m01 * f17;
            float f19 = matrix4f2.m11;
            float f20 = f18 + (f11 * f19);
            float f21 = matrix4f2.m21;
            float f22 = matrix4f2.m31;
            this.m01 = f20 + (f13 * f21) + (f15 * f22);
            float f23 = matrix4f2.m02 * f17;
            float f24 = matrix4f.m01;
            float f25 = matrix4f2.m12;
            float f26 = matrix4f2.m22;
            float f27 = f23 + (f24 * f25) + (f13 * f26);
            float f28 = matrix4f2.m32;
            this.m02 = f27 + (f15 * f28);
            float f29 = f17 * matrix4f2.m03;
            float f30 = matrix4f2.m13;
            float f31 = f29 + (f24 * f30);
            float f32 = matrix4f.m02;
            float f33 = matrix4f2.m23;
            float f34 = f31 + (f32 * f33);
            float f35 = matrix4f2.m33;
            this.m03 = f34 + (f15 * f35);
            float f36 = matrix4f.m10;
            float f37 = matrix4f2.m00;
            float f38 = f36 * f37;
            float f39 = matrix4f.m11;
            float f40 = f38 + (f12 * f39);
            float f41 = matrix4f.m12;
            float f42 = f40 + (f41 * f14);
            float f43 = matrix4f.m13;
            this.m10 = f42 + (f43 * f16);
            float f44 = matrix4f.m10;
            float f45 = matrix4f2.m01;
            this.m11 = (f44 * f45) + (f39 * f19) + (f41 * f21) + (f43 * f22);
            float f46 = matrix4f2.m02;
            float f47 = f44 * f46;
            float f48 = matrix4f.m11;
            this.m12 = f47 + (f25 * f48) + (f41 * f26) + (f43 * f28);
            float f49 = matrix4f2.m03;
            this.m13 = (f44 * f49) + (f48 * f30) + (matrix4f.m12 * f33) + (f43 * f35);
            float f50 = matrix4f.m20 * f37;
            float f51 = matrix4f.m21;
            float f52 = matrix4f2.m10;
            float f53 = matrix4f.m22;
            float f54 = matrix4f.m23;
            this.m20 = f50 + (f51 * f52) + (f53 * f14) + (f54 * f16);
            float f55 = matrix4f.m20;
            float f56 = f55 * f45;
            float f57 = matrix4f2.m11;
            this.m21 = f56 + (f51 * f57) + (f21 * f53) + (f54 * f22);
            float f58 = matrix4f.m21;
            float f59 = matrix4f2.m12;
            this.m22 = (f55 * f46) + (f58 * f59) + (f53 * f26) + (f54 * f28);
            float f60 = matrix4f2.m13;
            this.m23 = (f55 * f49) + (f58 * f60) + (matrix4f.m22 * f33) + (f54 * f35);
            float f61 = matrix4f.m30 * f37;
            float f62 = matrix4f.m31;
            float f63 = f61 + (f52 * f62);
            float f64 = matrix4f.m32;
            float f65 = f63 + (matrix4f2.m20 * f64);
            float f66 = matrix4f.m33;
            this.m30 = f65 + (f66 * f16);
            float f67 = matrix4f.m30;
            this.m31 = (f67 * f45) + (f62 * f57) + (matrix4f2.m21 * f64) + (f66 * f22);
            float f68 = matrix4f.m31;
            this.m32 = (f67 * f46) + (f59 * f68) + (f64 * matrix4f2.m22) + (f28 * f66);
            this.m33 = (f67 * f49) + (f68 * f60) + (matrix4f.m32 * matrix4f2.m23) + (f66 * f35);
            return;
        }
        float f69 = matrix4f.m00;
        float f70 = matrix4f2.m00;
        float f71 = matrix4f.m01;
        float f72 = matrix4f2.m10;
        float f73 = matrix4f.m02;
        float f74 = matrix4f2.m20;
        float f75 = matrix4f.m03;
        float f76 = matrix4f2.m30;
        float f77 = (f69 * f70) + (f71 * f72) + (f73 * f74) + (f75 * f76);
        float f78 = matrix4f2.m01;
        float f79 = matrix4f2.m11;
        float f80 = matrix4f2.m21;
        float f81 = matrix4f2.m31;
        float f82 = (f69 * f78) + (f71 * f79) + (f73 * f80) + (f75 * f81);
        float f83 = matrix4f2.m02;
        float f84 = matrix4f2.m12;
        float f85 = (f69 * f83) + (f71 * f84);
        float f86 = matrix4f2.m22;
        float f87 = f85 + (f73 * f86);
        float f88 = matrix4f2.m32;
        float f89 = f87 + (f75 * f88);
        float f90 = matrix4f2.m03;
        float f91 = f69 * f90;
        float f92 = matrix4f2.m13;
        float f93 = f91 + (f71 * f92);
        float f94 = matrix4f2.m23;
        float f95 = matrix4f2.m33;
        float f96 = f93 + (f73 * f94) + (f75 * f95);
        float f97 = matrix4f.m10;
        float f98 = matrix4f.m11;
        float f99 = (f97 * f70) + (f98 * f72);
        float f100 = matrix4f.m12;
        float f101 = f99 + (f100 * f74);
        float f102 = matrix4f.m13;
        float f103 = f101 + (f102 * f76);
        float f104 = (f97 * f78) + (f98 * f79) + (f100 * f80) + (f102 * f81);
        float f105 = (f97 * f83) + (f98 * f84) + (f100 * f86) + (f102 * f88);
        float f106 = (f97 * f90) + (f98 * f92) + (f100 * f94) + (f102 * f95);
        float f107 = matrix4f.m20;
        float f108 = matrix4f.m21;
        float f109 = matrix4f.m22;
        float f110 = matrix4f.m23;
        float f111 = (f107 * f70) + (f108 * f72) + (f109 * f74) + (f110 * f76);
        float f112 = (f107 * f78) + (f108 * f79) + (f109 * f80) + (f110 * f81);
        float f113 = (f107 * f83) + (f108 * f84) + (f109 * f86) + (f110 * f88);
        float f114 = (f107 * f90) + (f108 * f92) + (f109 * f94) + (f110 * f95);
        float f115 = matrix4f.m30;
        float f116 = matrix4f.m31;
        float f117 = matrix4f.m32;
        float f118 = matrix4f.m33;
        this.m00 = f77;
        this.m01 = f82;
        this.m02 = f89;
        this.m03 = f96;
        this.m10 = f103;
        this.m11 = f104;
        this.m12 = f105;
        this.m13 = f106;
        this.m20 = f111;
        this.m21 = f112;
        this.m22 = f113;
        this.m23 = f114;
        this.m30 = (f70 * f115) + (f116 * f72) + (f117 * f74) + (f76 * f118);
        this.m31 = (f78 * f115) + (f79 * f116) + (f80 * f117) + (f81 * f118);
        this.m32 = (f83 * f115) + (f116 * f84) + (f117 * f86) + (f118 * f88);
        this.m33 = (f115 * f90) + (f116 * f92) + (f117 * f94) + (f118 * f95);
    }

    public final void set(Quat4d quat4d) {
        double d10 = quat4d.f92848y;
        double d11 = quat4d.f92849z;
        this.m00 = (float) ((1.0d - ((d10 * 2.0d) * d10)) - ((d11 * 2.0d) * d11));
        double d12 = quat4d.f92847x;
        double d13 = quat4d.f92846w;
        this.m10 = (float) (((d12 * d10) + (d13 * d11)) * 2.0d);
        this.m20 = (float) (((d12 * d11) - (d13 * d10)) * 2.0d);
        this.m01 = (float) (((d12 * d10) - (d13 * d11)) * 2.0d);
        this.m11 = (float) ((1.0d - ((d12 * 2.0d) * d12)) - ((d11 * 2.0d) * d11));
        this.m21 = (float) (((d10 * d11) + (d13 * d12)) * 2.0d);
        this.m02 = (float) (((d12 * d11) + (d13 * d10)) * 2.0d);
        this.m12 = (float) (((d11 * d10) - (d13 * d12)) * 2.0d);
        this.m22 = (float) ((1.0d - ((d12 * 2.0d) * d12)) - ((2.0d * d10) * d10));
        this.m03 = 0.0f;
        this.m13 = 0.0f;
        this.m23 = 0.0f;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void add(Matrix4f matrix4f) {
        this.m00 += matrix4f.m00;
        this.m01 += matrix4f.m01;
        this.m02 += matrix4f.m02;
        this.m03 += matrix4f.m03;
        this.m10 += matrix4f.m10;
        this.m11 += matrix4f.m11;
        this.m12 += matrix4f.m12;
        this.m13 += matrix4f.m13;
        this.m20 += matrix4f.m20;
        this.m21 += matrix4f.m21;
        this.m22 += matrix4f.m22;
        this.m23 += matrix4f.m23;
        this.m30 += matrix4f.m30;
        this.m31 += matrix4f.m31;
        this.m32 += matrix4f.m32;
        this.m33 += matrix4f.m33;
    }

    public final void setRotation(AxisAngle4f axisAngle4f) {
        double[] dArr = new double[3];
        getScaleRotate(dArr, new double[9]);
        float f10 = axisAngle4f.f92821x;
        float f11 = axisAngle4f.f92822y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = axisAngle4f.f92823z;
        double sqrt = Math.sqrt(f12 + (f13 * f13));
        if (sqrt < 1.0E-8d) {
            this.m00 = 1.0f;
            this.m01 = 0.0f;
            this.m02 = 0.0f;
            this.m10 = 0.0f;
            this.m11 = 1.0f;
            this.m12 = 0.0f;
            this.m20 = 0.0f;
            this.m21 = 0.0f;
            this.m22 = 1.0f;
            return;
        }
        double d10 = 1.0d / sqrt;
        double d11 = axisAngle4f.f92821x * d10;
        double d12 = axisAngle4f.f92822y * d10;
        double d13 = axisAngle4f.f92823z * d10;
        double sin = Math.sin(axisAngle4f.angle);
        double cos = Math.cos(axisAngle4f.angle);
        double d14 = 1.0d - cos;
        float f14 = axisAngle4f.f92821x;
        float f15 = axisAngle4f.f92823z;
        double d15 = f14 * f15;
        float f16 = axisAngle4f.f92822y;
        double d16 = f14 * f16;
        double d17 = f16 * f15;
        double d18 = dArr[0];
        this.m00 = (float) (((d14 * d11 * d11) + cos) * d18);
        double d19 = d16 * d14;
        double d20 = sin * d13;
        double d21 = dArr[1];
        this.m01 = (float) ((d19 - d20) * d21);
        double d22 = d14 * d15;
        double d23 = sin * d12;
        double d24 = dArr[2];
        this.m02 = (float) ((d22 + d23) * d24);
        this.m10 = (float) ((d19 + d20) * d18);
        this.m11 = (float) (((d14 * d12 * d12) + cos) * d21);
        double d25 = d17 * d14;
        double d26 = sin * d11;
        this.m12 = (float) ((d25 - d26) * d24);
        this.m20 = (float) ((d22 - d23) * d18);
        this.m21 = (float) ((d25 + d26) * d21);
        this.m22 = (float) (((d14 * d13 * d13) + cos) * d24);
    }

    public Matrix4f(Matrix4d matrix4d) {
        this.m00 = (float) matrix4d.m00;
        this.m01 = (float) matrix4d.m01;
        this.m02 = (float) matrix4d.m02;
        this.m03 = (float) matrix4d.m03;
        this.m10 = (float) matrix4d.m10;
        this.m11 = (float) matrix4d.m11;
        this.m12 = (float) matrix4d.m12;
        this.m13 = (float) matrix4d.m13;
        this.m20 = (float) matrix4d.m20;
        this.m21 = (float) matrix4d.m21;
        this.m22 = (float) matrix4d.m22;
        this.m23 = (float) matrix4d.m23;
        this.m30 = (float) matrix4d.m30;
        this.m31 = (float) matrix4d.m31;
        this.m32 = (float) matrix4d.m32;
        this.m33 = (float) matrix4d.m33;
    }

    public final void get(Vector3f vector3f) {
        vector3f.f92836x = this.m03;
        vector3f.f92837y = this.m13;
        vector3f.f92838z = this.m23;
    }

    public final void set(AxisAngle4d axisAngle4d) {
        float f10;
        double d10 = axisAngle4d.f92818x;
        double d11 = axisAngle4d.f92819y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = axisAngle4d.f92820z;
        double sqrt = Math.sqrt(d12 + (d13 * d13));
        if (sqrt < 1.0E-8d) {
            this.m00 = 1.0f;
            this.m01 = 0.0f;
            this.m02 = 0.0f;
            this.m10 = 0.0f;
            this.m11 = 1.0f;
            this.m12 = 0.0f;
            this.m20 = 0.0f;
            this.m21 = 0.0f;
            this.m22 = 1.0f;
            f10 = 0.0f;
        } else {
            double d14 = 1.0d / sqrt;
            double d15 = axisAngle4d.f92818x * d14;
            double d16 = axisAngle4d.f92819y * d14;
            double d17 = axisAngle4d.f92820z * d14;
            float sin = (float) Math.sin(axisAngle4d.angle);
            float cos = (float) Math.cos(axisAngle4d.angle);
            float f11 = 1.0f - cos;
            this.m00 = (((float) (d15 * d15)) * f11) + cos;
            float f12 = ((float) (d15 * d16)) * f11;
            float f13 = ((float) d17) * sin;
            this.m01 = f12 - f13;
            float f14 = ((float) (d15 * d17)) * f11;
            float f15 = ((float) d16) * sin;
            this.m02 = f14 + f15;
            this.m10 = f12 + f13;
            this.m11 = (((float) (d16 * d16)) * f11) + cos;
            float f16 = ((float) (d16 * d17)) * f11;
            float f17 = sin * ((float) d15);
            this.m12 = f16 - f17;
            this.m20 = f14 - f15;
            this.m21 = f16 + f17;
            this.m22 = (f11 * ((float) (d17 * d17))) + cos;
            f10 = 0.0f;
        }
        this.m03 = f10;
        this.m13 = f10;
        this.m23 = f10;
        this.m30 = f10;
        this.m31 = f10;
        this.m32 = f10;
        this.m33 = 1.0f;
    }

    public Matrix4f(Matrix4f matrix4f) {
        this.m00 = matrix4f.m00;
        this.m01 = matrix4f.m01;
        this.m02 = matrix4f.m02;
        this.m03 = matrix4f.m03;
        this.m10 = matrix4f.m10;
        this.m11 = matrix4f.m11;
        this.m12 = matrix4f.m12;
        this.m13 = matrix4f.m13;
        this.m20 = matrix4f.m20;
        this.m21 = matrix4f.m21;
        this.m22 = matrix4f.m22;
        this.m23 = matrix4f.m23;
        this.m30 = matrix4f.m30;
        this.m31 = matrix4f.m31;
        this.m32 = matrix4f.m32;
        this.m33 = matrix4f.m33;
    }

    public Matrix4f(Matrix3f matrix3f, Vector3f vector3f, float f10) {
        this.m00 = matrix3f.m00 * f10;
        this.m01 = matrix3f.m01 * f10;
        this.m02 = matrix3f.m02 * f10;
        this.m03 = vector3f.f92836x;
        this.m10 = matrix3f.m10 * f10;
        this.m11 = matrix3f.m11 * f10;
        this.m12 = matrix3f.m12 * f10;
        this.m13 = vector3f.f92837y;
        this.m20 = matrix3f.m20 * f10;
        this.m21 = matrix3f.m21 * f10;
        this.m22 = matrix3f.m22 * f10;
        this.m23 = vector3f.f92838z;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void set(Quat4d quat4d, Vector3d vector3d, double d10) {
        double d11 = quat4d.f92848y;
        double d12 = quat4d.f92849z;
        this.m00 = (float) (((1.0d - ((d11 * 2.0d) * d11)) - ((d12 * 2.0d) * d12)) * d10);
        double d13 = quat4d.f92847x;
        double d14 = quat4d.f92846w;
        this.m10 = (float) (((d13 * d11) + (d14 * d12)) * 2.0d * d10);
        this.m20 = (float) (((d13 * d12) - (d14 * d11)) * 2.0d * d10);
        this.m01 = (float) (((d13 * d11) - (d14 * d12)) * 2.0d * d10);
        this.m11 = (float) (((1.0d - ((d13 * 2.0d) * d13)) - ((d12 * 2.0d) * d12)) * d10);
        this.m21 = (float) (((d11 * d12) + (d14 * d13)) * 2.0d * d10);
        this.m02 = (float) (((d13 * d12) + (d14 * d11)) * 2.0d * d10);
        this.m12 = (float) (d10 * ((d12 * d11) - (d14 * d13)) * 2.0d);
        this.m22 = (float) (d10 * ((1.0d - ((d13 * 2.0d) * d13)) - ((2.0d * d11) * d11)));
        this.m03 = (float) vector3d.f92833x;
        this.m13 = (float) vector3d.f92834y;
        this.m23 = (float) vector3d.f92835z;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public Matrix4f() {
        this.m00 = 0.0f;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m03 = 0.0f;
        this.m10 = 0.0f;
        this.m11 = 0.0f;
        this.m12 = 0.0f;
        this.m13 = 0.0f;
        this.m20 = 0.0f;
        this.m21 = 0.0f;
        this.m22 = 0.0f;
        this.m23 = 0.0f;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 0.0f;
    }

    public final void set(Quat4f quat4f, Vector3f vector3f, float f10) {
        float f11 = quat4f.f92852y;
        float f12 = quat4f.f92853z;
        this.m00 = ((1.0f - ((f11 * 2.0f) * f11)) - ((f12 * 2.0f) * f12)) * f10;
        float f13 = quat4f.f92851x;
        float f14 = quat4f.f92850w;
        this.m10 = ((f13 * f11) + (f14 * f12)) * 2.0f * f10;
        this.m20 = ((f13 * f12) - (f14 * f11)) * 2.0f * f10;
        this.m01 = ((f13 * f11) - (f14 * f12)) * 2.0f * f10;
        this.m11 = ((1.0f - ((f13 * 2.0f) * f13)) - ((f12 * 2.0f) * f12)) * f10;
        this.m21 = ((f11 * f12) + (f14 * f13)) * 2.0f * f10;
        this.m02 = ((f13 * f12) + (f14 * f11)) * 2.0f * f10;
        this.m12 = ((f12 * f11) - (f14 * f13)) * 2.0f * f10;
        this.m22 = f10 * ((1.0f - ((f13 * 2.0f) * f13)) - ((2.0f * f11) * f11));
        this.m03 = vector3f.f92836x;
        this.m13 = vector3f.f92837y;
        this.m23 = vector3f.f92838z;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void set(Matrix4d matrix4d) {
        this.m00 = (float) matrix4d.m00;
        this.m01 = (float) matrix4d.m01;
        this.m02 = (float) matrix4d.m02;
        this.m03 = (float) matrix4d.m03;
        this.m10 = (float) matrix4d.m10;
        this.m11 = (float) matrix4d.m11;
        this.m12 = (float) matrix4d.m12;
        this.m13 = (float) matrix4d.m13;
        this.m20 = (float) matrix4d.m20;
        this.m21 = (float) matrix4d.m21;
        this.m22 = (float) matrix4d.m22;
        this.m23 = (float) matrix4d.m23;
        this.m30 = (float) matrix4d.m30;
        this.m31 = (float) matrix4d.m31;
        this.m32 = (float) matrix4d.m32;
        this.m33 = (float) matrix4d.m33;
    }

    public final void set(Matrix4f matrix4f) {
        this.m00 = matrix4f.m00;
        this.m01 = matrix4f.m01;
        this.m02 = matrix4f.m02;
        this.m03 = matrix4f.m03;
        this.m10 = matrix4f.m10;
        this.m11 = matrix4f.m11;
        this.m12 = matrix4f.m12;
        this.m13 = matrix4f.m13;
        this.m20 = matrix4f.m20;
        this.m21 = matrix4f.m21;
        this.m22 = matrix4f.m22;
        this.m23 = matrix4f.m23;
        this.m30 = matrix4f.m30;
        this.m31 = matrix4f.m31;
        this.m32 = matrix4f.m32;
        this.m33 = matrix4f.m33;
    }

    public final void set(Matrix3f matrix3f) {
        this.m00 = matrix3f.m00;
        this.m01 = matrix3f.m01;
        this.m02 = matrix3f.m02;
        this.m03 = 0.0f;
        this.m10 = matrix3f.m10;
        this.m11 = matrix3f.m11;
        this.m12 = matrix3f.m12;
        this.m13 = 0.0f;
        this.m20 = matrix3f.m20;
        this.m21 = matrix3f.m21;
        this.m22 = matrix3f.m22;
        this.m23 = 0.0f;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void set(Matrix3d matrix3d) {
        this.m00 = (float) matrix3d.m00;
        this.m01 = (float) matrix3d.m01;
        this.m02 = (float) matrix3d.m02;
        this.m03 = 0.0f;
        this.m10 = (float) matrix3d.m10;
        this.m11 = (float) matrix3d.m11;
        this.m12 = (float) matrix3d.m12;
        this.m13 = 0.0f;
        this.m20 = (float) matrix3d.m20;
        this.m21 = (float) matrix3d.m21;
        this.m22 = (float) matrix3d.m22;
        this.m23 = 0.0f;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void set(float f10) {
        this.m00 = f10;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m03 = 0.0f;
        this.m10 = 0.0f;
        this.m11 = f10;
        this.m12 = 0.0f;
        this.m13 = 0.0f;
        this.m20 = 0.0f;
        this.m21 = 0.0f;
        this.m22 = f10;
        this.m23 = 0.0f;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void set(float[] fArr) {
        this.m00 = fArr[0];
        this.m01 = fArr[1];
        this.m02 = fArr[2];
        this.m03 = fArr[3];
        this.m10 = fArr[4];
        this.m11 = fArr[5];
        this.m12 = fArr[6];
        this.m13 = fArr[7];
        this.m20 = fArr[8];
        this.m21 = fArr[9];
        this.m22 = fArr[10];
        this.m23 = fArr[11];
        this.m30 = fArr[12];
        this.m31 = fArr[13];
        this.m32 = fArr[14];
        this.m33 = fArr[15];
    }

    public final void set(Vector3f vector3f) {
        this.m00 = 1.0f;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m03 = vector3f.f92836x;
        this.m10 = 0.0f;
        this.m11 = 1.0f;
        this.m12 = 0.0f;
        this.m13 = vector3f.f92837y;
        this.m20 = 0.0f;
        this.m21 = 0.0f;
        this.m22 = 1.0f;
        this.m23 = vector3f.f92838z;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void set(float f10, Vector3f vector3f) {
        this.m00 = f10;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m03 = vector3f.f92836x;
        this.m10 = 0.0f;
        this.m11 = f10;
        this.m12 = 0.0f;
        this.m13 = vector3f.f92837y;
        this.m20 = 0.0f;
        this.m21 = 0.0f;
        this.m22 = f10;
        this.m23 = vector3f.f92838z;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void set(Vector3f vector3f, float f10) {
        this.m00 = f10;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m03 = vector3f.f92836x * f10;
        this.m10 = 0.0f;
        this.m11 = f10;
        this.m12 = 0.0f;
        this.m13 = vector3f.f92837y * f10;
        this.m20 = 0.0f;
        this.m21 = 0.0f;
        this.m22 = f10;
        this.m23 = f10 * vector3f.f92838z;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void set(Matrix3f matrix3f, Vector3f vector3f, float f10) {
        this.m00 = matrix3f.m00 * f10;
        this.m01 = matrix3f.m01 * f10;
        this.m02 = matrix3f.m02 * f10;
        this.m03 = vector3f.f92836x;
        this.m10 = matrix3f.m10 * f10;
        this.m11 = matrix3f.m11 * f10;
        this.m12 = matrix3f.m12 * f10;
        this.m13 = vector3f.f92837y;
        this.m20 = matrix3f.m20 * f10;
        this.m21 = matrix3f.m21 * f10;
        this.m22 = matrix3f.m22 * f10;
        this.m23 = vector3f.f92838z;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }

    public final void set(Matrix3d matrix3d, Vector3d vector3d, double d10) {
        this.m00 = (float) (matrix3d.m00 * d10);
        this.m01 = (float) (matrix3d.m01 * d10);
        this.m02 = (float) (matrix3d.m02 * d10);
        this.m03 = (float) vector3d.f92833x;
        this.m10 = (float) (matrix3d.m10 * d10);
        this.m11 = (float) (matrix3d.m11 * d10);
        this.m12 = (float) (matrix3d.m12 * d10);
        this.m13 = (float) vector3d.f92834y;
        this.m20 = (float) (matrix3d.m20 * d10);
        this.m21 = (float) (matrix3d.m21 * d10);
        this.m22 = (float) (matrix3d.m22 * d10);
        this.m23 = (float) vector3d.f92835z;
        this.m30 = 0.0f;
        this.m31 = 0.0f;
        this.m32 = 0.0f;
        this.m33 = 1.0f;
    }
}
