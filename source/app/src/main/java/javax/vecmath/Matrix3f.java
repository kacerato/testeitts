package javax.vecmath;

import java.io.Serializable;

public class Matrix3f implements Serializable, Cloneable {
    private static final double EPS = 1.0E-8d;
    static final long serialVersionUID = 329697160112089834L;
    public float m00;
    public float m01;
    public float m02;
    public float m10;
    public float m11;
    public float m12;
    public float m20;
    public float m21;
    public float m22;

    public Matrix3f(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        this.m00 = f10;
        this.m01 = f11;
        this.m02 = f12;
        this.m10 = f13;
        this.m11 = f14;
        this.m12 = f15;
        this.m20 = f16;
        this.m21 = f17;
        this.m22 = f18;
    }

    private final void invertGeneral(Matrix3f matrix3f) {
        double[] dArr = new double[9];
        int[] iArr = new int[3];
        double[] dArr2 = {matrix3f.m00, matrix3f.m01, matrix3f.m02, matrix3f.m10, matrix3f.m11, matrix3f.m12, matrix3f.m20, matrix3f.m21, matrix3f.m22};
        if (!luDecomposition(dArr2, iArr)) {
            throw new SingularMatrixException(VecMathI18N.getString("Matrix3f12"));
        }
        for (int i10 = 0; i10 < 9; i10++) {
            dArr[i10] = 0.0d;
        }
        dArr[0] = 1.0d;
        dArr[4] = 1.0d;
        dArr[8] = 1.0d;
        luBacksubstitution(dArr2, iArr, dArr);
        this.m00 = (float) dArr[0];
        this.m01 = (float) dArr[1];
        this.m02 = (float) dArr[2];
        this.m10 = (float) dArr[3];
        this.m11 = (float) dArr[4];
        this.m12 = (float) dArr[5];
        this.m20 = (float) dArr[6];
        this.m21 = (float) dArr[7];
        this.m22 = (float) dArr[8];
    }

    public static void luBacksubstitution(double[] dArr, int[] iArr, double[] dArr2) {
        for (int i10 = 0; i10 < 3; i10++) {
            int i11 = -1;
            for (int i12 = 0; i12 < 3; i12++) {
                int i13 = (iArr[i12] * 3) + i10;
                double d10 = dArr2[i13];
                int i14 = i12 * 3;
                int i15 = i10 + i14;
                dArr2[i13] = dArr2[i15];
                if (i11 >= 0) {
                    for (int i16 = i11; i16 <= i12 - 1; i16++) {
                        d10 -= dArr[i14 + i16] * dArr2[(i16 * 3) + i10];
                    }
                } else if (d10 != 0.0d) {
                    i11 = i12;
                }
                dArr2[i15] = d10;
            }
            int i17 = i10 + 6;
            double d11 = dArr2[i17] / dArr[8];
            dArr2[i17] = d11;
            int i18 = i10 + 3;
            double d12 = (dArr2[i18] - (dArr[5] * d11)) / dArr[4];
            dArr2[i18] = d12;
            dArr2[i10] = ((dArr2[i10] - (dArr[1] * d12)) - (dArr[2] * dArr2[i17])) / dArr[0];
        }
    }

    public static boolean luDecomposition(double[] dArr, int[] iArr) {
        double[] dArr2 = new double[3];
        int i10 = 3;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = i10 - 1;
            if (i10 == 0) {
                for (int i14 = 0; i14 < 3; i14++) {
                    for (int i15 = 0; i15 < i14; i15++) {
                        int i16 = i15 * 3;
                        int i17 = i16 + i14;
                        double d10 = dArr[i17];
                        int i18 = i14;
                        int i19 = i15;
                        while (true) {
                            int i20 = i19 - 1;
                            if (i19 != 0) {
                                d10 -= dArr[i16] * dArr[i18];
                                i16++;
                                i18 += 3;
                                i19 = i20;
                            }
                        }
                        dArr[i17] = d10;
                    }
                    int i21 = -1;
                    double d11 = 0.0d;
                    for (int i22 = i14; i22 < 3; i22++) {
                        int i23 = i22 * 3;
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
                            i26 += 3;
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
                        throw new RuntimeException(VecMathI18N.getString("Matrix3f13"));
                    }
                    if (i14 != i21) {
                        int i28 = i21 * 3;
                        int i29 = i14 * 3;
                        int i30 = 3;
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
                    double d14 = dArr[(i14 * 3) + i14];
                    if (d14 == 0.0d) {
                        return false;
                    }
                    if (i14 != 2) {
                        double d15 = 1.0d / d14;
                        int i32 = ((i14 + 1) * 3) + i14;
                        int i33 = 2 - i14;
                        while (true) {
                            int i34 = i33 - 1;
                            if (i33 != 0) {
                                dArr[i32] = dArr[i32] * d15;
                                i32 += 3;
                                i33 = i34;
                            }
                        }
                    }
                }
                return true;
            }
            int i35 = 3;
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
        this.m10 += f10;
        this.m11 += f10;
        this.m12 += f10;
        this.m20 += f10;
        this.m21 += f10;
        this.m22 += f10;
    }

    public Object clone() {
        try {
            return (Matrix3f) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public final float determinant() {
        float f10 = this.m00;
        float f11 = this.m11;
        float f12 = this.m22;
        float f13 = this.m12;
        float f14 = this.m21;
        float f15 = f10 * ((f11 * f12) - (f13 * f14));
        float f16 = this.m01;
        float f17 = this.m20;
        float f18 = this.m10;
        return f15 + (f16 * ((f13 * f17) - (f12 * f18))) + (this.m02 * ((f18 * f14) - (f11 * f17)));
    }

    public boolean epsilonEquals(Matrix3f matrix3f, float f10) {
        boolean z10 = Math.abs(this.m00 - matrix3f.m00) <= f10;
        if (Math.abs(this.m01 - matrix3f.m01) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m02 - matrix3f.m02) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m10 - matrix3f.m10) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m11 - matrix3f.m11) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m12 - matrix3f.m12) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m20 - matrix3f.m20) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m21 - matrix3f.m21) > f10) {
            z10 = false;
        }
        if (Math.abs(this.m22 - matrix3f.m22) > f10) {
            return false;
        }
        return z10;
    }

    public boolean equals(Matrix3f matrix3f) {
        try {
            if (this.m00 == matrix3f.m00 && this.m01 == matrix3f.m01 && this.m02 == matrix3f.m02 && this.m10 == matrix3f.m10 && this.m11 == matrix3f.m11 && this.m12 == matrix3f.m12 && this.m20 == matrix3f.m20 && this.m21 == matrix3f.m21) {
                return this.m22 == matrix3f.m22;
            }
            return false;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final void getColumn(int i10, Vector3f vector3f) {
        if (i10 == 0) {
            vector3f.f92836x = this.m00;
            vector3f.f92837y = this.m10;
            vector3f.f92838z = this.m20;
        } else if (i10 == 1) {
            vector3f.f92836x = this.m01;
            vector3f.f92837y = this.m11;
            vector3f.f92838z = this.m21;
        } else {
            if (i10 == 2) {
                vector3f.f92836x = this.m02;
                vector3f.f92837y = this.m12;
                vector3f.f92838z = this.m22;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f3"));
        }
    }

    public final float getElement(int i10, int i11) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    if (i11 == 0) {
                        return this.m20;
                    }
                    if (i11 == 1) {
                        return this.m21;
                    }
                    if (i11 == 2) {
                        return this.m22;
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
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f5"));
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

    public final float getM10() {
        return this.m10;
    }

    public final float getM11() {
        return this.m11;
    }

    public final float getM12() {
        return this.m12;
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

    public final void getRow(int i10, Vector3f vector3f) {
        if (i10 == 0) {
            vector3f.f92836x = this.m00;
            vector3f.f92837y = this.m01;
            vector3f.f92838z = this.m02;
        } else if (i10 == 1) {
            vector3f.f92836x = this.m10;
            vector3f.f92837y = this.m11;
            vector3f.f92838z = this.m12;
        } else {
            if (i10 == 2) {
                vector3f.f92836x = this.m20;
                vector3f.f92837y = this.m21;
                vector3f.f92838z = this.m22;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f1"));
        }
    }

    public final float getScale() {
        double[] dArr = new double[3];
        getScaleRotate(dArr, new double[9]);
        return (float) Matrix3d.max3(dArr);
    }

    public void getScaleRotate(double[] dArr, double[] dArr2) {
        Matrix3d.compute_svd(new double[]{this.m00, this.m01, this.m02, this.m10, this.m11, this.m12, this.m20, this.m21, this.m22}, dArr, dArr2);
    }

    public int hashCode() {
        long floatToIntBits = ((((((((((((((((VecMathUtil.floatToIntBits(this.m00) + 31) * 31) + VecMathUtil.floatToIntBits(this.m01)) * 31) + VecMathUtil.floatToIntBits(this.m02)) * 31) + VecMathUtil.floatToIntBits(this.m10)) * 31) + VecMathUtil.floatToIntBits(this.m11)) * 31) + VecMathUtil.floatToIntBits(this.m12)) * 31) + VecMathUtil.floatToIntBits(this.m20)) * 31) + VecMathUtil.floatToIntBits(this.m21)) * 31) + VecMathUtil.floatToIntBits(this.m22);
        return (int) (floatToIntBits ^ (floatToIntBits >> 32));
    }

    public final void invert(Matrix3f matrix3f) {
        invertGeneral(matrix3f);
    }

    public final void mul(float f10) {
        this.m00 *= f10;
        this.m01 *= f10;
        this.m02 *= f10;
        this.m10 *= f10;
        this.m11 *= f10;
        this.m12 *= f10;
        this.m20 *= f10;
        this.m21 *= f10;
        this.m22 *= f10;
    }

    public final void mulNormalize(Matrix3f matrix3f) {
        double[] dArr = new double[9];
        float f10 = this.m00;
        float f11 = matrix3f.m00;
        float f12 = this.m01;
        float f13 = matrix3f.m10;
        float f14 = this.m02;
        float f15 = matrix3f.m20;
        double d10 = (f10 * f11) + (f12 * f13) + (f14 * f15);
        float f16 = matrix3f.m01;
        float f17 = matrix3f.m11;
        float f18 = matrix3f.m21;
        double d11 = (f10 * f16) + (f12 * f17) + (f14 * f18);
        float f19 = matrix3f.m02;
        float f20 = matrix3f.m12;
        float f21 = matrix3f.m22;
        double d12 = (f10 * f19) + (f12 * f20) + (f14 * f21);
        float f22 = this.m10;
        float f23 = this.m11;
        float f24 = this.m12;
        double d13 = (f22 * f11) + (f23 * f13) + (f24 * f15);
        double d14 = (f22 * f16) + (f23 * f17) + (f24 * f18);
        double d15 = (f22 * f19) + (f23 * f20) + (f24 * f21);
        float f25 = (f11 * this.m20) + (f13 * this.m21);
        float f26 = this.m22;
        Matrix3d.compute_svd(new double[]{d10, d11, d12, d13, d14, d15, f25 + (f15 * f26), (f16 * r9) + (f17 * r11) + (f18 * f26), (r9 * f19) + (r11 * f20) + (f26 * f21)}, new double[3], dArr);
        this.m00 = (float) dArr[0];
        this.m01 = (float) dArr[1];
        this.m02 = (float) dArr[2];
        this.m10 = (float) dArr[3];
        this.m11 = (float) dArr[4];
        this.m12 = (float) dArr[5];
        this.m20 = (float) dArr[6];
        this.m21 = (float) dArr[7];
        this.m22 = (float) dArr[8];
    }

    public final void mulTransposeBoth(Matrix3f matrix3f, Matrix3f matrix3f2) {
        if (this != matrix3f && this != matrix3f2) {
            float f10 = matrix3f.m00 * matrix3f2.m00;
            float f11 = matrix3f.m10;
            float f12 = f10 + (matrix3f2.m01 * f11);
            float f13 = matrix3f.m20;
            this.m00 = f12 + (matrix3f2.m02 * f13);
            float f14 = matrix3f.m00;
            float f15 = matrix3f2.m10 * f14;
            float f16 = matrix3f2.m11;
            float f17 = matrix3f2.m12;
            this.m01 = f15 + (f11 * f16) + (f13 * f17);
            float f18 = matrix3f2.m20;
            float f19 = matrix3f2.m21;
            float f20 = (f14 * f18) + (f11 * f19);
            float f21 = matrix3f2.m22;
            this.m02 = f20 + (f13 * f21);
            float f22 = matrix3f.m01;
            float f23 = matrix3f2.m00;
            float f24 = matrix3f.m11;
            float f25 = matrix3f2.m01;
            float f26 = matrix3f.m21;
            float f27 = matrix3f2.m02;
            this.m10 = (f22 * f23) + (f24 * f25) + (f26 * f27);
            float f28 = matrix3f2.m10;
            this.m11 = (f22 * f28) + (f24 * f16) + (f17 * f26);
            this.m12 = (f22 * f18) + (matrix3f.m11 * f19) + (f26 * f21);
            float f29 = matrix3f.m02;
            float f30 = matrix3f.m12;
            float f31 = matrix3f.m22;
            this.m20 = (f23 * f29) + (f25 * f30) + (f27 * f31);
            this.m21 = (f28 * f29) + (matrix3f2.m11 * f30) + (matrix3f2.m12 * f31);
            this.m22 = (f29 * matrix3f2.m20) + (f30 * matrix3f2.m21) + (f31 * f21);
            return;
        }
        float f32 = matrix3f.m00;
        float f33 = matrix3f2.m00;
        float f34 = matrix3f.m10;
        float f35 = matrix3f2.m01;
        float f36 = matrix3f.m20;
        float f37 = matrix3f2.m02;
        float f38 = (f32 * f33) + (f34 * f35) + (f36 * f37);
        float f39 = matrix3f2.m10;
        float f40 = matrix3f2.m11;
        float f41 = matrix3f2.m12;
        float f42 = (f32 * f39) + (f34 * f40) + (f36 * f41);
        float f43 = matrix3f2.m20;
        float f44 = matrix3f2.m21;
        float f45 = matrix3f2.m22;
        float f46 = (f32 * f43) + (f34 * f44) + (f36 * f45);
        float f47 = matrix3f.m01;
        float f48 = matrix3f.m11;
        float f49 = matrix3f.m21;
        float f50 = (f47 * f33) + (f48 * f35) + (f49 * f37);
        float f51 = (f47 * f39) + (f48 * f40) + (f49 * f41);
        float f52 = (f47 * f43) + (f48 * f44) + (f49 * f45);
        float f53 = matrix3f.m02;
        float f54 = matrix3f.m12;
        float f55 = matrix3f.m22;
        this.m00 = f38;
        this.m01 = f42;
        this.m02 = f46;
        this.m10 = f50;
        this.m11 = f51;
        this.m12 = f52;
        this.m20 = (f33 * f53) + (f35 * f54) + (f37 * f55);
        this.m21 = (f39 * f53) + (f40 * f54) + (f41 * f55);
        this.m22 = (f53 * f43) + (f54 * f44) + (f55 * f45);
    }

    public final void mulTransposeLeft(Matrix3f matrix3f, Matrix3f matrix3f2) {
        if (this != matrix3f && this != matrix3f2) {
            float f10 = matrix3f.m00 * matrix3f2.m00;
            float f11 = matrix3f.m10;
            float f12 = matrix3f2.m10;
            float f13 = matrix3f.m20;
            float f14 = matrix3f2.m20;
            this.m00 = f10 + (f11 * f12) + (f13 * f14);
            float f15 = matrix3f.m00;
            float f16 = matrix3f2.m01 * f15;
            float f17 = matrix3f2.m11;
            float f18 = matrix3f2.m21;
            this.m01 = f16 + (f11 * f17) + (f13 * f18);
            float f19 = f15 * matrix3f2.m02;
            float f20 = matrix3f2.m12;
            float f21 = f19 + (f11 * f20);
            float f22 = matrix3f2.m22;
            this.m02 = f21 + (f13 * f22);
            float f23 = matrix3f.m01;
            float f24 = matrix3f2.m00;
            float f25 = matrix3f.m11;
            float f26 = (f23 * f24) + (f12 * f25);
            float f27 = matrix3f.m21;
            this.m10 = f26 + (f27 * f14);
            float f28 = matrix3f2.m01;
            this.m11 = (f23 * f28) + (f25 * f17) + (f27 * f18);
            float f29 = matrix3f2.m02;
            this.m12 = (f23 * f29) + (matrix3f.m11 * f20) + (f27 * f22);
            float f30 = matrix3f.m02;
            float f31 = matrix3f.m12;
            float f32 = (f24 * f30) + (matrix3f2.m10 * f31);
            float f33 = matrix3f.m22;
            this.m20 = f32 + (f14 * f33);
            this.m21 = (f28 * f30) + (matrix3f2.m11 * f31) + (f18 * f33);
            this.m22 = (f30 * f29) + (f31 * matrix3f2.m12) + (f33 * f22);
            return;
        }
        float f34 = matrix3f.m00;
        float f35 = matrix3f2.m00;
        float f36 = matrix3f.m10;
        float f37 = matrix3f2.m10;
        float f38 = matrix3f.m20;
        float f39 = matrix3f2.m20;
        float f40 = (f34 * f35) + (f36 * f37) + (f38 * f39);
        float f41 = matrix3f2.m01;
        float f42 = matrix3f2.m11;
        float f43 = matrix3f2.m21;
        float f44 = (f34 * f41) + (f36 * f42) + (f38 * f43);
        float f45 = matrix3f2.m02;
        float f46 = matrix3f2.m12;
        float f47 = matrix3f2.m22;
        float f48 = (f34 * f45) + (f36 * f46) + (f38 * f47);
        float f49 = matrix3f.m01;
        float f50 = matrix3f.m11;
        float f51 = matrix3f.m21;
        float f52 = (f49 * f35) + (f50 * f37) + (f51 * f39);
        float f53 = (f49 * f41) + (f50 * f42) + (f51 * f43);
        float f54 = (f49 * f45) + (f50 * f46) + (f51 * f47);
        float f55 = matrix3f.m02;
        float f56 = matrix3f.m12;
        float f57 = matrix3f.m22;
        this.m00 = f40;
        this.m01 = f44;
        this.m02 = f48;
        this.m10 = f52;
        this.m11 = f53;
        this.m12 = f54;
        this.m20 = (f35 * f55) + (f37 * f56) + (f39 * f57);
        this.m21 = (f41 * f55) + (f42 * f56) + (f43 * f57);
        this.m22 = (f55 * f45) + (f56 * f46) + (f57 * f47);
    }

    public final void mulTransposeRight(Matrix3f matrix3f, Matrix3f matrix3f2) {
        if (this != matrix3f && this != matrix3f2) {
            float f10 = matrix3f.m00 * matrix3f2.m00;
            float f11 = matrix3f.m01;
            float f12 = f10 + (matrix3f2.m01 * f11);
            float f13 = matrix3f.m02;
            this.m00 = f12 + (matrix3f2.m02 * f13);
            float f14 = matrix3f.m00;
            float f15 = matrix3f2.m10 * f14;
            float f16 = matrix3f2.m11;
            float f17 = f15 + (f11 * f16);
            float f18 = matrix3f2.m12;
            this.m01 = f17 + (f13 * f18);
            float f19 = matrix3f2.m20;
            float f20 = matrix3f.m01;
            float f21 = matrix3f2.m21;
            float f22 = (f14 * f19) + (f20 * f21);
            float f23 = matrix3f2.m22;
            this.m02 = f22 + (f13 * f23);
            float f24 = matrix3f.m10;
            float f25 = matrix3f2.m00;
            float f26 = matrix3f.m11;
            float f27 = matrix3f2.m01;
            float f28 = matrix3f.m12;
            float f29 = matrix3f2.m02;
            this.m10 = (f24 * f25) + (f26 * f27) + (f28 * f29);
            float f30 = matrix3f.m10;
            float f31 = matrix3f2.m10;
            this.m11 = (f30 * f31) + (f26 * f16) + (f18 * f28);
            this.m12 = (f30 * f19) + (matrix3f.m11 * f21) + (f28 * f23);
            float f32 = matrix3f.m20 * f25;
            float f33 = matrix3f.m21;
            float f34 = matrix3f.m22;
            this.m20 = f32 + (f27 * f33) + (f29 * f34);
            float f35 = matrix3f.m20;
            this.m21 = (f31 * f35) + (f33 * matrix3f2.m11) + (matrix3f2.m12 * f34);
            this.m22 = (f35 * matrix3f2.m20) + (matrix3f.m21 * matrix3f2.m21) + (f34 * f23);
            return;
        }
        float f36 = matrix3f.m00;
        float f37 = matrix3f2.m00;
        float f38 = matrix3f.m01;
        float f39 = matrix3f2.m01;
        float f40 = matrix3f.m02;
        float f41 = matrix3f2.m02;
        float f42 = (f36 * f37) + (f38 * f39) + (f40 * f41);
        float f43 = matrix3f2.m10;
        float f44 = matrix3f2.m11;
        float f45 = matrix3f2.m12;
        float f46 = (f36 * f43) + (f38 * f44) + (f40 * f45);
        float f47 = matrix3f2.m20;
        float f48 = matrix3f2.m21;
        float f49 = matrix3f2.m22;
        float f50 = (f36 * f47) + (f38 * f48) + (f40 * f49);
        float f51 = matrix3f.m10;
        float f52 = matrix3f.m11;
        float f53 = matrix3f.m12;
        float f54 = (f51 * f37) + (f52 * f39) + (f53 * f41);
        float f55 = (f51 * f43) + (f52 * f44) + (f53 * f45);
        float f56 = (f51 * f47) + (f52 * f48) + (f53 * f49);
        float f57 = matrix3f.m20;
        float f58 = matrix3f.m21;
        float f59 = matrix3f.m22;
        this.m00 = f42;
        this.m01 = f46;
        this.m02 = f50;
        this.m10 = f54;
        this.m11 = f55;
        this.m12 = f56;
        this.m20 = (f37 * f57) + (f39 * f58) + (f41 * f59);
        this.m21 = (f43 * f57) + (f44 * f58) + (f45 * f59);
        this.m22 = (f57 * f47) + (f58 * f48) + (f59 * f49);
    }

    public final void negate() {
        this.m00 = -this.m00;
        this.m01 = -this.m01;
        this.m02 = -this.m02;
        this.m10 = -this.m10;
        this.m11 = -this.m11;
        this.m12 = -this.m12;
        this.m20 = -this.m20;
        this.m21 = -this.m21;
        this.m22 = -this.m22;
    }

    public final void normalize() {
        double[] dArr = new double[9];
        getScaleRotate(new double[3], dArr);
        this.m00 = (float) dArr[0];
        this.m01 = (float) dArr[1];
        this.m02 = (float) dArr[2];
        this.m10 = (float) dArr[3];
        this.m11 = (float) dArr[4];
        this.m12 = (float) dArr[5];
        this.m20 = (float) dArr[6];
        this.m21 = (float) dArr[7];
        this.m22 = (float) dArr[8];
    }

    public final void normalizeCP() {
        float f10 = this.m00;
        float f11 = this.m10;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = this.m20;
        float sqrt = 1.0f / ((float) Math.sqrt(f12 + (f13 * f13)));
        this.m00 *= sqrt;
        this.m10 *= sqrt;
        this.m20 *= sqrt;
        float f14 = this.m01;
        float f15 = this.m11;
        float f16 = (f14 * f14) + (f15 * f15);
        float f17 = this.m21;
        float sqrt2 = 1.0f / ((float) Math.sqrt(f16 + (f17 * f17)));
        float f18 = this.m01 * sqrt2;
        this.m01 = f18;
        float f19 = this.m11 * sqrt2;
        this.m11 = f19;
        float f20 = this.m21 * sqrt2;
        this.m21 = f20;
        float f21 = this.m10;
        float f22 = this.m20;
        this.m02 = (f21 * f20) - (f19 * f22);
        float f23 = this.m00;
        this.m12 = (f22 * f18) - (f20 * f23);
        this.m22 = (f23 * f19) - (f18 * f21);
    }

    public final void rotX(float f10) {
        double d10 = f10;
        float sin = (float) Math.sin(d10);
        float cos = (float) Math.cos(d10);
        this.m00 = 1.0f;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m10 = 0.0f;
        this.m11 = cos;
        this.m12 = -sin;
        this.m20 = 0.0f;
        this.m21 = sin;
        this.m22 = cos;
    }

    public final void rotY(float f10) {
        double d10 = f10;
        float sin = (float) Math.sin(d10);
        float cos = (float) Math.cos(d10);
        this.m00 = cos;
        this.m01 = 0.0f;
        this.m02 = sin;
        this.m10 = 0.0f;
        this.m11 = 1.0f;
        this.m12 = 0.0f;
        this.m20 = -sin;
        this.m21 = 0.0f;
        this.m22 = cos;
    }

    public final void rotZ(float f10) {
        double d10 = f10;
        float sin = (float) Math.sin(d10);
        float cos = (float) Math.cos(d10);
        this.m00 = cos;
        this.m01 = -sin;
        this.m02 = 0.0f;
        this.m10 = sin;
        this.m11 = cos;
        this.m12 = 0.0f;
        this.m20 = 0.0f;
        this.m21 = 0.0f;
        this.m22 = 1.0f;
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
    }

    public final void setColumn(int i10, float f10, float f11, float f12) {
        if (i10 == 0) {
            this.m00 = f10;
            this.m10 = f11;
            this.m20 = f12;
        } else if (i10 == 1) {
            this.m01 = f10;
            this.m11 = f11;
            this.m21 = f12;
        } else {
            if (i10 == 2) {
                this.m02 = f10;
                this.m12 = f11;
                this.m22 = f12;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f9"));
        }
    }

    public final void setElement(int i10, int i11, float f10) {
        if (i10 == 0) {
            if (i11 == 0) {
                this.m00 = f10;
                return;
            } else if (i11 == 1) {
                this.m01 = f10;
                return;
            } else {
                if (i11 != 2) {
                    throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f0"));
                }
                this.m02 = f10;
                return;
            }
        }
        if (i10 == 1) {
            if (i11 == 0) {
                this.m10 = f10;
                return;
            } else if (i11 == 1) {
                this.m11 = f10;
                return;
            } else {
                if (i11 != 2) {
                    throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f0"));
                }
                this.m12 = f10;
                return;
            }
        }
        if (i10 != 2) {
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f0"));
        }
        if (i11 == 0) {
            this.m20 = f10;
        } else if (i11 == 1) {
            this.m21 = f10;
        } else {
            if (i11 != 2) {
                throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f0"));
            }
            this.m22 = f10;
        }
    }

    public final void setIdentity() {
        this.m00 = 1.0f;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m10 = 0.0f;
        this.m11 = 1.0f;
        this.m12 = 0.0f;
        this.m20 = 0.0f;
        this.m21 = 0.0f;
        this.m22 = 1.0f;
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

    public final void setM10(float f10) {
        this.m10 = f10;
    }

    public final void setM11(float f10) {
        this.m11 = f10;
    }

    public final void setM12(float f10) {
        this.m12 = f10;
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

    public final void setRow(int i10, float f10, float f11, float f12) {
        if (i10 == 0) {
            this.m00 = f10;
            this.m01 = f11;
            this.m02 = f12;
        } else if (i10 == 1) {
            this.m10 = f10;
            this.m11 = f11;
            this.m12 = f12;
        } else {
            if (i10 == 2) {
                this.m20 = f10;
                this.m21 = f11;
                this.m22 = f12;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f6"));
        }
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

    public final void setZero() {
        this.m00 = 0.0f;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m10 = 0.0f;
        this.m11 = 0.0f;
        this.m12 = 0.0f;
        this.m20 = 0.0f;
        this.m21 = 0.0f;
        this.m22 = 0.0f;
    }

    public final void sub(Matrix3f matrix3f, Matrix3f matrix3f2) {
        this.m00 = matrix3f.m00 - matrix3f2.m00;
        this.m01 = matrix3f.m01 - matrix3f2.m01;
        this.m02 = matrix3f.m02 - matrix3f2.m02;
        this.m10 = matrix3f.m10 - matrix3f2.m10;
        this.m11 = matrix3f.m11 - matrix3f2.m11;
        this.m12 = matrix3f.m12 - matrix3f2.m12;
        this.m20 = matrix3f.m20 - matrix3f2.m20;
        this.m21 = matrix3f.m21 - matrix3f2.m21;
        this.m22 = matrix3f.m22 - matrix3f2.m22;
    }

    public String toString() {
        return this.m00 + ", " + this.m01 + ", " + this.m02 + "\n" + this.m10 + ", " + this.m11 + ", " + this.m12 + "\n" + this.m20 + ", " + this.m21 + ", " + this.m22 + "\n";
    }

    public final void transform(Tuple3f tuple3f) {
        float f10 = this.m00;
        float f11 = tuple3f.f92836x;
        float f12 = this.m01;
        float f13 = tuple3f.f92837y;
        float f14 = (f10 * f11) + (f12 * f13);
        float f15 = this.m02;
        float f16 = tuple3f.f92838z;
        tuple3f.set(f14 + (f15 * f16), (this.m10 * f11) + (this.m11 * f13) + (this.m12 * f16), (this.m20 * f11) + (this.m21 * f13) + (this.m22 * f16));
    }

    public final void transpose() {
        float f10 = this.m10;
        this.m10 = this.m01;
        this.m01 = f10;
        float f11 = this.m20;
        this.m20 = this.m02;
        this.m02 = f11;
        float f12 = this.m21;
        this.m21 = this.m12;
        this.m12 = f12;
    }

    public boolean equals(Object obj) {
        try {
            Matrix3f matrix3f = (Matrix3f) obj;
            if (this.m00 == matrix3f.m00 && this.m01 == matrix3f.m01 && this.m02 == matrix3f.m02 && this.m10 == matrix3f.m10 && this.m11 == matrix3f.m11 && this.m12 == matrix3f.m12 && this.m20 == matrix3f.m20 && this.m21 == matrix3f.m21) {
                return this.m22 == matrix3f.m22;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void invert() {
        invertGeneral(this);
    }

    public final void transform(Tuple3f tuple3f, Tuple3f tuple3f2) {
        float f10 = this.m00;
        float f11 = tuple3f.f92836x;
        float f12 = this.m01;
        float f13 = tuple3f.f92837y;
        float f14 = (f10 * f11) + (f12 * f13);
        float f15 = this.m02;
        float f16 = tuple3f.f92838z;
        float f17 = f14 + (f15 * f16);
        float f18 = (this.m10 * f11) + (this.m11 * f13) + (this.m12 * f16);
        tuple3f2.f92838z = (this.m20 * f11) + (this.m21 * f13) + (this.m22 * f16);
        tuple3f2.f92836x = f17;
        tuple3f2.f92837y = f18;
    }

    public final void add(float f10, Matrix3f matrix3f) {
        this.m00 = matrix3f.m00 + f10;
        this.m01 = matrix3f.m01 + f10;
        this.m02 = matrix3f.m02 + f10;
        this.m10 = matrix3f.m10 + f10;
        this.m11 = matrix3f.m11 + f10;
        this.m12 = matrix3f.m12 + f10;
        this.m20 = matrix3f.m20 + f10;
        this.m21 = matrix3f.m21 + f10;
        this.m22 = matrix3f.m22 + f10;
    }

    public final void mul(float f10, Matrix3f matrix3f) {
        this.m00 = matrix3f.m00 * f10;
        this.m01 = matrix3f.m01 * f10;
        this.m02 = matrix3f.m02 * f10;
        this.m10 = matrix3f.m10 * f10;
        this.m11 = matrix3f.m11 * f10;
        this.m12 = matrix3f.m12 * f10;
        this.m20 = matrix3f.m20 * f10;
        this.m21 = matrix3f.m21 * f10;
        this.m22 = f10 * matrix3f.m22;
    }

    public final void negate(Matrix3f matrix3f) {
        this.m00 = -matrix3f.m00;
        this.m01 = -matrix3f.m01;
        this.m02 = -matrix3f.m02;
        this.m10 = -matrix3f.m10;
        this.m11 = -matrix3f.m11;
        this.m12 = -matrix3f.m12;
        this.m20 = -matrix3f.m20;
        this.m21 = -matrix3f.m21;
        this.m22 = -matrix3f.m22;
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
            return;
        }
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

    public final void sub(Matrix3f matrix3f) {
        this.m00 -= matrix3f.m00;
        this.m01 -= matrix3f.m01;
        this.m02 -= matrix3f.m02;
        this.m10 -= matrix3f.m10;
        this.m11 -= matrix3f.m11;
        this.m12 -= matrix3f.m12;
        this.m20 -= matrix3f.m20;
        this.m21 -= matrix3f.m21;
        this.m22 -= matrix3f.m22;
    }

    public final void transpose(Matrix3f matrix3f) {
        if (this != matrix3f) {
            this.m00 = matrix3f.m00;
            this.m01 = matrix3f.m10;
            this.m02 = matrix3f.m20;
            this.m10 = matrix3f.m01;
            this.m11 = matrix3f.m11;
            this.m12 = matrix3f.m21;
            this.m20 = matrix3f.m02;
            this.m21 = matrix3f.m12;
            this.m22 = matrix3f.m22;
            return;
        }
        transpose();
    }

    public Matrix3f(float[] fArr) {
        this.m00 = fArr[0];
        this.m01 = fArr[1];
        this.m02 = fArr[2];
        this.m10 = fArr[3];
        this.m11 = fArr[4];
        this.m12 = fArr[5];
        this.m20 = fArr[6];
        this.m21 = fArr[7];
        this.m22 = fArr[8];
    }

    public final void getColumn(int i10, float[] fArr) {
        if (i10 == 0) {
            fArr[0] = this.m00;
            fArr[1] = this.m10;
            fArr[2] = this.m20;
        } else if (i10 == 1) {
            fArr[0] = this.m01;
            fArr[1] = this.m11;
            fArr[2] = this.m21;
        } else {
            if (i10 == 2) {
                fArr[0] = this.m02;
                fArr[1] = this.m12;
                fArr[2] = this.m22;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f3"));
        }
    }

    public final void getRow(int i10, float[] fArr) {
        if (i10 == 0) {
            fArr[0] = this.m00;
            fArr[1] = this.m01;
            fArr[2] = this.m02;
        } else if (i10 == 1) {
            fArr[0] = this.m10;
            fArr[1] = this.m11;
            fArr[2] = this.m12;
        } else {
            if (i10 == 2) {
                fArr[0] = this.m20;
                fArr[1] = this.m21;
                fArr[2] = this.m22;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f1"));
        }
    }

    public final void setColumn(int i10, Vector3f vector3f) {
        if (i10 == 0) {
            this.m00 = vector3f.f92836x;
            this.m10 = vector3f.f92837y;
            this.m20 = vector3f.f92838z;
        } else if (i10 == 1) {
            this.m01 = vector3f.f92836x;
            this.m11 = vector3f.f92837y;
            this.m21 = vector3f.f92838z;
        } else {
            if (i10 == 2) {
                this.m02 = vector3f.f92836x;
                this.m12 = vector3f.f92837y;
                this.m22 = vector3f.f92838z;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f9"));
        }
    }

    public final void setRow(int i10, Vector3f vector3f) {
        if (i10 == 0) {
            this.m00 = vector3f.f92836x;
            this.m01 = vector3f.f92837y;
            this.m02 = vector3f.f92838z;
        } else if (i10 == 1) {
            this.m10 = vector3f.f92836x;
            this.m11 = vector3f.f92837y;
            this.m12 = vector3f.f92838z;
        } else {
            if (i10 == 2) {
                this.m20 = vector3f.f92836x;
                this.m21 = vector3f.f92837y;
                this.m22 = vector3f.f92838z;
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f6"));
        }
    }

    public final void normalizeCP(Matrix3f matrix3f) {
        float f10 = matrix3f.m00;
        float f11 = matrix3f.m10;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = matrix3f.m20;
        float sqrt = 1.0f / ((float) Math.sqrt(f12 + (f13 * f13)));
        this.m00 = matrix3f.m00 * sqrt;
        this.m10 = matrix3f.m10 * sqrt;
        this.m20 = matrix3f.m20 * sqrt;
        float f14 = matrix3f.m01;
        float f15 = matrix3f.m11;
        float f16 = (f14 * f14) + (f15 * f15);
        float f17 = matrix3f.m21;
        float sqrt2 = 1.0f / ((float) Math.sqrt(f16 + (f17 * f17)));
        float f18 = matrix3f.m01 * sqrt2;
        this.m01 = f18;
        float f19 = matrix3f.m11 * sqrt2;
        this.m11 = f19;
        float f20 = matrix3f.m21 * sqrt2;
        this.m21 = f20;
        float f21 = this.m10;
        float f22 = this.m20;
        this.m02 = (f21 * f20) - (f19 * f22);
        float f23 = this.m00;
        this.m12 = (f22 * f18) - (f20 * f23);
        this.m22 = (f23 * f19) - (f18 * f21);
    }

    public final void normalize(Matrix3f matrix3f) {
        double[] dArr = new double[9];
        Matrix3d.compute_svd(new double[]{matrix3f.m00, matrix3f.m01, matrix3f.m02, matrix3f.m10, matrix3f.m11, matrix3f.m12, matrix3f.m20, matrix3f.m21, matrix3f.m22}, new double[3], dArr);
        this.m00 = (float) dArr[0];
        this.m01 = (float) dArr[1];
        this.m02 = (float) dArr[2];
        this.m10 = (float) dArr[3];
        this.m11 = (float) dArr[4];
        this.m12 = (float) dArr[5];
        this.m20 = (float) dArr[6];
        this.m21 = (float) dArr[7];
        this.m22 = (float) dArr[8];
    }

    public final void add(Matrix3f matrix3f, Matrix3f matrix3f2) {
        this.m00 = matrix3f.m00 + matrix3f2.m00;
        this.m01 = matrix3f.m01 + matrix3f2.m01;
        this.m02 = matrix3f.m02 + matrix3f2.m02;
        this.m10 = matrix3f.m10 + matrix3f2.m10;
        this.m11 = matrix3f.m11 + matrix3f2.m11;
        this.m12 = matrix3f.m12 + matrix3f2.m12;
        this.m20 = matrix3f.m20 + matrix3f2.m20;
        this.m21 = matrix3f.m21 + matrix3f2.m21;
        this.m22 = matrix3f.m22 + matrix3f2.m22;
    }

    public final void mul(Matrix3f matrix3f) {
        float f10 = this.m00;
        float f11 = matrix3f.m00;
        float f12 = this.m01;
        float f13 = matrix3f.m10;
        float f14 = this.m02;
        float f15 = matrix3f.m20;
        float f16 = (f10 * f11) + (f12 * f13) + (f14 * f15);
        float f17 = matrix3f.m01;
        float f18 = matrix3f.m11;
        float f19 = matrix3f.m21;
        float f20 = (f10 * f17) + (f12 * f18) + (f14 * f19);
        float f21 = matrix3f.m02;
        float f22 = matrix3f.m12;
        float f23 = matrix3f.m22;
        float f24 = (f10 * f21) + (f12 * f22) + (f14 * f23);
        float f25 = this.m10;
        float f26 = this.m11;
        float f27 = this.m12;
        float f28 = (f25 * f11) + (f26 * f13) + (f27 * f15);
        float f29 = (f25 * f17) + (f26 * f18) + (f27 * f19);
        float f30 = (f25 * f21) + (f26 * f22) + (f27 * f23);
        float f31 = this.m20;
        float f32 = this.m21;
        float f33 = (f11 * f31) + (f13 * f32);
        float f34 = this.m22;
        this.m00 = f16;
        this.m01 = f20;
        this.m02 = f24;
        this.m10 = f28;
        this.m11 = f29;
        this.m12 = f30;
        this.m20 = f33 + (f15 * f34);
        this.m21 = (f17 * f31) + (f18 * f32) + (f19 * f34);
        this.m22 = (f31 * f21) + (f32 * f22) + (f34 * f23);
    }

    public final void mulNormalize(Matrix3f matrix3f, Matrix3f matrix3f2) {
        double[] dArr = new double[9];
        float f10 = matrix3f.m00;
        float f11 = matrix3f2.m00;
        float f12 = matrix3f.m01;
        float f13 = matrix3f2.m10;
        float f14 = matrix3f.m02;
        float f15 = matrix3f2.m20;
        double d10 = (f10 * f11) + (f12 * f13) + (f14 * f15);
        float f16 = matrix3f2.m01;
        float f17 = matrix3f2.m11;
        float f18 = matrix3f2.m21;
        double d11 = (f10 * f16) + (f12 * f17) + (f14 * f18);
        float f19 = matrix3f2.m02;
        float f20 = matrix3f2.m12;
        float f21 = matrix3f2.m22;
        double d12 = (f10 * f19) + (f12 * f20) + (f14 * f21);
        float f22 = matrix3f.m10;
        float f23 = matrix3f.m11;
        float f24 = matrix3f.m12;
        double d13 = (f22 * f11) + (f23 * f13) + (f24 * f15);
        double d14 = (f22 * f16) + (f23 * f17) + (f24 * f18);
        double d15 = (f22 * f19) + (f23 * f20) + (f24 * f21);
        float f25 = matrix3f.m20;
        float f26 = matrix3f.m21;
        float f27 = matrix3f.m22;
        Matrix3d.compute_svd(new double[]{d10, d11, d12, d13, d14, d15, (f11 * f25) + (f13 * f26) + (f15 * f27), (f16 * f25) + (f17 * f26) + (f18 * f27), (f25 * f19) + (f26 * f20) + (f27 * f21)}, new double[3], dArr);
        this.m00 = (float) dArr[0];
        this.m01 = (float) dArr[1];
        this.m02 = (float) dArr[2];
        this.m10 = (float) dArr[3];
        this.m11 = (float) dArr[4];
        this.m12 = (float) dArr[5];
        this.m20 = (float) dArr[6];
        this.m21 = (float) dArr[7];
        this.m22 = (float) dArr[8];
    }

    public Matrix3f(Matrix3d matrix3d) {
        this.m00 = (float) matrix3d.m00;
        this.m01 = (float) matrix3d.m01;
        this.m02 = (float) matrix3d.m02;
        this.m10 = (float) matrix3d.m10;
        this.m11 = (float) matrix3d.m11;
        this.m12 = (float) matrix3d.m12;
        this.m20 = (float) matrix3d.m20;
        this.m21 = (float) matrix3d.m21;
        this.m22 = (float) matrix3d.m22;
    }

    public final void setColumn(int i10, float[] fArr) {
        if (i10 == 0) {
            this.m00 = fArr[0];
            this.m10 = fArr[1];
            this.m20 = fArr[2];
        } else if (i10 == 1) {
            this.m01 = fArr[0];
            this.m11 = fArr[1];
            this.m21 = fArr[2];
        } else {
            if (i10 == 2) {
                this.m02 = fArr[0];
                this.m12 = fArr[1];
                this.m22 = fArr[2];
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f9"));
        }
    }

    public final void setRow(int i10, float[] fArr) {
        if (i10 == 0) {
            this.m00 = fArr[0];
            this.m01 = fArr[1];
            this.m02 = fArr[2];
        } else if (i10 == 1) {
            this.m10 = fArr[0];
            this.m11 = fArr[1];
            this.m12 = fArr[2];
        } else {
            if (i10 == 2) {
                this.m20 = fArr[0];
                this.m21 = fArr[1];
                this.m22 = fArr[2];
                return;
            }
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix3f6"));
        }
    }

    public final void mul(Matrix3f matrix3f, Matrix3f matrix3f2) {
        if (this != matrix3f && this != matrix3f2) {
            float f10 = matrix3f.m00 * matrix3f2.m00;
            float f11 = matrix3f.m01;
            float f12 = matrix3f2.m10;
            float f13 = matrix3f.m02;
            float f14 = matrix3f2.m20;
            this.m00 = f10 + (f11 * f12) + (f13 * f14);
            float f15 = matrix3f.m00;
            float f16 = matrix3f2.m01 * f15;
            float f17 = matrix3f2.m11;
            float f18 = f16 + (f11 * f17);
            float f19 = matrix3f2.m21;
            this.m01 = f18 + (f13 * f19);
            float f20 = f15 * matrix3f2.m02;
            float f21 = matrix3f.m01;
            float f22 = matrix3f2.m12;
            float f23 = f20 + (f21 * f22);
            float f24 = matrix3f2.m22;
            this.m02 = f23 + (f13 * f24);
            float f25 = matrix3f.m10;
            float f26 = matrix3f2.m00;
            float f27 = matrix3f.m11;
            float f28 = (f25 * f26) + (f12 * f27);
            float f29 = matrix3f.m12;
            this.m10 = f28 + (f29 * f14);
            float f30 = matrix3f.m10;
            float f31 = matrix3f2.m01;
            this.m11 = (f30 * f31) + (f27 * f17) + (f29 * f19);
            float f32 = matrix3f2.m02;
            this.m12 = (f30 * f32) + (matrix3f.m11 * f22) + (f29 * f24);
            float f33 = matrix3f.m20 * f26;
            float f34 = matrix3f.m21;
            float f35 = f33 + (matrix3f2.m10 * f34);
            float f36 = matrix3f.m22;
            this.m20 = f35 + (f14 * f36);
            float f37 = matrix3f.m20;
            this.m21 = (f31 * f37) + (f34 * matrix3f2.m11) + (f19 * f36);
            this.m22 = (f37 * f32) + (matrix3f.m21 * matrix3f2.m12) + (f36 * f24);
            return;
        }
        float f38 = matrix3f.m00;
        float f39 = matrix3f2.m00;
        float f40 = matrix3f.m01;
        float f41 = matrix3f2.m10;
        float f42 = matrix3f.m02;
        float f43 = matrix3f2.m20;
        float f44 = (f38 * f39) + (f40 * f41) + (f42 * f43);
        float f45 = matrix3f2.m01;
        float f46 = matrix3f2.m11;
        float f47 = matrix3f2.m21;
        float f48 = (f38 * f45) + (f40 * f46) + (f42 * f47);
        float f49 = matrix3f2.m02;
        float f50 = matrix3f2.m12;
        float f51 = matrix3f2.m22;
        float f52 = (f38 * f49) + (f40 * f50) + (f42 * f51);
        float f53 = matrix3f.m10;
        float f54 = matrix3f.m11;
        float f55 = matrix3f.m12;
        float f56 = (f53 * f39) + (f54 * f41) + (f55 * f43);
        float f57 = (f53 * f45) + (f54 * f46) + (f55 * f47);
        float f58 = (f53 * f49) + (f54 * f50) + (f55 * f51);
        float f59 = matrix3f.m20;
        float f60 = matrix3f.m21;
        float f61 = matrix3f.m22;
        this.m00 = f44;
        this.m01 = f48;
        this.m02 = f52;
        this.m10 = f56;
        this.m11 = f57;
        this.m12 = f58;
        this.m20 = (f39 * f59) + (f41 * f60) + (f43 * f61);
        this.m21 = (f45 * f59) + (f46 * f60) + (f47 * f61);
        this.m22 = (f59 * f49) + (f60 * f50) + (f61 * f51);
    }

    public final void add(Matrix3f matrix3f) {
        this.m00 += matrix3f.m00;
        this.m01 += matrix3f.m01;
        this.m02 += matrix3f.m02;
        this.m10 += matrix3f.m10;
        this.m11 += matrix3f.m11;
        this.m12 += matrix3f.m12;
        this.m20 += matrix3f.m20;
        this.m21 += matrix3f.m21;
        this.m22 += matrix3f.m22;
    }

    public Matrix3f(Matrix3f matrix3f) {
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

    public final void set(AxisAngle4d axisAngle4d) {
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
            return;
        }
        double d14 = 1.0d / sqrt;
        double d15 = axisAngle4d.f92818x * d14;
        double d16 = axisAngle4d.f92819y * d14;
        double d17 = axisAngle4d.f92820z * d14;
        double sin = Math.sin(axisAngle4d.angle);
        double cos = Math.cos(axisAngle4d.angle);
        double d18 = 1.0d - cos;
        double d19 = d15 * d17;
        double d20 = d16 * d17;
        this.m00 = (float) ((d18 * d15 * d15) + cos);
        double d21 = d15 * d16 * d18;
        double d22 = sin * d17;
        this.m01 = (float) (d21 - d22);
        double d23 = d19 * d18;
        double d24 = sin * d16;
        this.m02 = (float) (d23 + d24);
        this.m10 = (float) (d21 + d22);
        this.m11 = (float) ((d18 * d16 * d16) + cos);
        double d25 = d20 * d18;
        double d26 = sin * d15;
        this.m12 = (float) (d25 - d26);
        this.m20 = (float) (d23 - d24);
        this.m21 = (float) (d25 + d26);
        this.m22 = (float) ((d18 * d17 * d17) + cos);
    }

    public Matrix3f() {
        this.m00 = 0.0f;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m10 = 0.0f;
        this.m11 = 0.0f;
        this.m12 = 0.0f;
        this.m20 = 0.0f;
        this.m21 = 0.0f;
        this.m22 = 0.0f;
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
    }

    public final void set(float[] fArr) {
        this.m00 = fArr[0];
        this.m01 = fArr[1];
        this.m02 = fArr[2];
        this.m10 = fArr[3];
        this.m11 = fArr[4];
        this.m12 = fArr[5];
        this.m20 = fArr[6];
        this.m21 = fArr[7];
        this.m22 = fArr[8];
    }

    public final void set(Matrix3f matrix3f) {
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

    public final void set(Matrix3d matrix3d) {
        this.m00 = (float) matrix3d.m00;
        this.m01 = (float) matrix3d.m01;
        this.m02 = (float) matrix3d.m02;
        this.m10 = (float) matrix3d.m10;
        this.m11 = (float) matrix3d.m11;
        this.m12 = (float) matrix3d.m12;
        this.m20 = (float) matrix3d.m20;
        this.m21 = (float) matrix3d.m21;
        this.m22 = (float) matrix3d.m22;
    }

    public final void set(float f10) {
        this.m00 = f10;
        this.m01 = 0.0f;
        this.m02 = 0.0f;
        this.m10 = 0.0f;
        this.m11 = f10;
        this.m12 = 0.0f;
        this.m20 = 0.0f;
        this.m21 = 0.0f;
        this.m22 = f10;
    }
}
