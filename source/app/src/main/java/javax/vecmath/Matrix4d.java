package javax.vecmath;

import java.io.Serializable;

public class Matrix4d implements Serializable, Cloneable {
    private static final double EPS = 1.0E-10d;
    static final long serialVersionUID = 8223903484171633710L;
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
                        throw new RuntimeException(VecMathI18N.getString("Matrix4d11"));
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

    public final void add(double d10) {
        this.m00 += d10;
        this.m01 += d10;
        this.m02 += d10;
        this.m03 += d10;
        this.m10 += d10;
        this.m11 += d10;
        this.m12 += d10;
        this.m13 += d10;
        this.m20 += d10;
        this.m21 += d10;
        this.m22 += d10;
        this.m23 += d10;
        this.m30 += d10;
        this.m31 += d10;
        this.m32 += d10;
        this.m33 += d10;
    }

    public Object clone() {
        try {
            return (Matrix4d) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public final double determinant() {
        double d10 = this.m00;
        double d11 = this.m11;
        double d12 = this.m22;
        double d13 = this.m33;
        double d14 = this.m12;
        double d15 = this.m23;
        double d16 = this.m31;
        double d17 = (d11 * d12 * d13) + (d14 * d15 * d16);
        double d18 = this.m13;
        double d19 = this.m21;
        double d20 = d18 * d19;
        double d21 = this.m32;
        double d22 = ((((d17 + (d20 * d21)) - ((d18 * d12) * d16)) - ((d11 * d15) * d21)) - ((d14 * d19) * d13)) * d10;
        double d23 = this.m01;
        double d24 = this.m10;
        double d25 = this.m30;
        double d26 = this.m20;
        return ((d22 - ((((((((d24 * d12) * d13) + ((d14 * d15) * d25)) + ((d18 * d26) * d21)) - ((d18 * d12) * d25)) - ((d24 * d15) * d21)) - ((d14 * d26) * d13)) * d23)) + (this.m02 * (((((((d24 * d19) * d13) + ((d11 * d15) * d25)) + ((d18 * d26) * d16)) - ((d18 * d19) * d25)) - ((d15 * d24) * d16)) - ((d11 * d26) * d13)))) - (this.m03 * (((((((d24 * d19) * d21) + ((d11 * d12) * d25)) + ((d14 * d26) * d16)) - ((d14 * d19) * d25)) - ((d24 * d12) * d16)) - ((d11 * d26) * d21)));
    }

    public boolean epsilonEquals(Matrix4d matrix4d, float f10) {
        return epsilonEquals(matrix4d, f10);
    }

    public boolean equals(Matrix4d matrix4d) {
        try {
            if (this.m00 == matrix4d.m00 && this.m01 == matrix4d.m01 && this.m02 == matrix4d.m02 && this.m03 == matrix4d.m03 && this.m10 == matrix4d.m10 && this.m11 == matrix4d.m11 && this.m12 == matrix4d.m12 && this.m13 == matrix4d.m13 && this.m20 == matrix4d.m20 && this.m21 == matrix4d.m21 && this.m22 == matrix4d.m22 && this.m23 == matrix4d.m23 && this.m30 == matrix4d.m30 && this.m31 == matrix4d.m31 && this.m32 == matrix4d.m32) {
                return this.m33 == matrix4d.m33;
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

    public final void getColumn(int i10, Vector4d vector4d) {
        if (i10 == 0) {
            vector4d.f92847x = this.m00;
            vector4d.f92848y = this.m10;
            vector4d.f92849z = this.m20;
            vector4d.f92846w = this.m30;
            return;
        }
        if (i10 == 1) {
            vector4d.f92847x = this.m01;
            vector4d.f92848y = this.m11;
            vector4d.f92849z = this.m21;
            vector4d.f92846w = this.m31;
            return;
        }
        if (i10 == 2) {
            vector4d.f92847x = this.m02;
            vector4d.f92848y = this.m12;
            vector4d.f92849z = this.m22;
            vector4d.f92846w = this.m32;
            return;
        }
        if (i10 == 3) {
            vector4d.f92847x = this.m03;
            vector4d.f92848y = this.m13;
            vector4d.f92849z = this.m23;
            vector4d.f92846w = this.m33;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d3"));
    }

    public final double getElement(int i10, int i11) {
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
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d1"));
    }

    public final double getM00() {
        return this.m00;
    }

    public final double getM01() {
        return this.m01;
    }

    public final double getM02() {
        return this.m02;
    }

    public final double getM03() {
        return this.m03;
    }

    public final double getM10() {
        return this.m10;
    }

    public final double getM11() {
        return this.m11;
    }

    public final double getM12() {
        return this.m12;
    }

    public final double getM13() {
        return this.m13;
    }

    public final double getM20() {
        return this.m20;
    }

    public final double getM21() {
        return this.m21;
    }

    public final double getM22() {
        return this.m22;
    }

    public final double getM23() {
        return this.m23;
    }

    public final double getM30() {
        return this.m30;
    }

    public final double getM31() {
        return this.m31;
    }

    public final double getM32() {
        return this.m32;
    }

    public final double getM33() {
        return this.m33;
    }

    public final void getRotationScale(Matrix3f matrix3f) {
        matrix3f.m00 = (float) this.m00;
        matrix3f.m01 = (float) this.m01;
        matrix3f.m02 = (float) this.m02;
        matrix3f.m10 = (float) this.m10;
        matrix3f.m11 = (float) this.m11;
        matrix3f.m12 = (float) this.m12;
        matrix3f.m20 = (float) this.m20;
        matrix3f.m21 = (float) this.m21;
        matrix3f.m22 = (float) this.m22;
    }

    public final void getRow(int i10, Vector4d vector4d) {
        if (i10 == 0) {
            vector4d.f92847x = this.m00;
            vector4d.f92848y = this.m01;
            vector4d.f92849z = this.m02;
            vector4d.f92846w = this.m03;
            return;
        }
        if (i10 == 1) {
            vector4d.f92847x = this.m10;
            vector4d.f92848y = this.m11;
            vector4d.f92849z = this.m12;
            vector4d.f92846w = this.m13;
            return;
        }
        if (i10 == 2) {
            vector4d.f92847x = this.m20;
            vector4d.f92848y = this.m21;
            vector4d.f92849z = this.m22;
            vector4d.f92846w = this.m23;
            return;
        }
        if (i10 == 3) {
            vector4d.f92847x = this.m30;
            vector4d.f92848y = this.m31;
            vector4d.f92849z = this.m32;
            vector4d.f92846w = this.m33;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d2"));
    }

    public final double getScale() {
        double[] dArr = new double[3];
        getScaleRotate(dArr, new double[9]);
        return Matrix3d.max3(dArr);
    }

    public int hashCode() {
        long doubleToLongBits = ((((((((((((((((((((((((((((((VecMathUtil.doubleToLongBits(this.m00) + 31) * 31) + VecMathUtil.doubleToLongBits(this.m01)) * 31) + VecMathUtil.doubleToLongBits(this.m02)) * 31) + VecMathUtil.doubleToLongBits(this.m03)) * 31) + VecMathUtil.doubleToLongBits(this.m10)) * 31) + VecMathUtil.doubleToLongBits(this.m11)) * 31) + VecMathUtil.doubleToLongBits(this.m12)) * 31) + VecMathUtil.doubleToLongBits(this.m13)) * 31) + VecMathUtil.doubleToLongBits(this.m20)) * 31) + VecMathUtil.doubleToLongBits(this.m21)) * 31) + VecMathUtil.doubleToLongBits(this.m22)) * 31) + VecMathUtil.doubleToLongBits(this.m23)) * 31) + VecMathUtil.doubleToLongBits(this.m30)) * 31) + VecMathUtil.doubleToLongBits(this.m31)) * 31) + VecMathUtil.doubleToLongBits(this.m32)) * 31) + VecMathUtil.doubleToLongBits(this.m33);
        return (int) (doubleToLongBits ^ (doubleToLongBits >> 32));
    }

    public final void invert(Matrix4d matrix4d) {
        invertGeneral(matrix4d);
    }

    public final void invertGeneral(Matrix4d matrix4d) {
        double[] dArr = new double[16];
        int[] iArr = new int[4];
        double[] dArr2 = {matrix4d.m00, matrix4d.m01, matrix4d.m02, matrix4d.m03, matrix4d.m10, matrix4d.m11, matrix4d.m12, matrix4d.m13, matrix4d.m20, matrix4d.m21, matrix4d.m22, matrix4d.m23, matrix4d.m30, matrix4d.m31, matrix4d.m32, matrix4d.m33};
        if (!luDecomposition(dArr2, iArr)) {
            throw new SingularMatrixException(VecMathI18N.getString("Matrix4d10"));
        }
        for (int i10 = 0; i10 < 16; i10++) {
            dArr[i10] = 0.0d;
        }
        dArr[0] = 1.0d;
        dArr[5] = 1.0d;
        dArr[10] = 1.0d;
        dArr[15] = 1.0d;
        luBacksubstitution(dArr2, iArr, dArr);
        this.m00 = dArr[0];
        this.m01 = dArr[1];
        this.m02 = dArr[2];
        this.m03 = dArr[3];
        this.m10 = dArr[4];
        this.m11 = dArr[5];
        this.m12 = dArr[6];
        this.m13 = dArr[7];
        this.m20 = dArr[8];
        this.m21 = dArr[9];
        this.m22 = dArr[10];
        this.m23 = dArr[11];
        this.m30 = dArr[12];
        this.m31 = dArr[13];
        this.m32 = dArr[14];
        this.m33 = dArr[15];
    }

    public final void mul(double d10) {
        this.m00 *= d10;
        this.m01 *= d10;
        this.m02 *= d10;
        this.m03 *= d10;
        this.m10 *= d10;
        this.m11 *= d10;
        this.m12 *= d10;
        this.m13 *= d10;
        this.m20 *= d10;
        this.m21 *= d10;
        this.m22 *= d10;
        this.m23 *= d10;
        this.m30 *= d10;
        this.m31 *= d10;
        this.m32 *= d10;
        this.m33 *= d10;
    }

    public final void mulTransposeBoth(Matrix4d matrix4d, Matrix4d matrix4d2) {
        if (this == matrix4d || this == matrix4d2) {
            double d10 = matrix4d.m00;
            double d11 = matrix4d2.m00;
            double d12 = matrix4d.m10;
            double d13 = matrix4d2.m01;
            double d14 = (d10 * d11) + (d12 * d13);
            double d15 = matrix4d.m20;
            double d16 = matrix4d2.m02;
            double d17 = d14 + (d15 * d16);
            double d18 = matrix4d.m30;
            double d19 = matrix4d2.m03;
            double d20 = d17 + (d18 * d19);
            double d21 = matrix4d2.m10;
            double d22 = d10 * d21;
            double d23 = matrix4d2.m11;
            double d24 = d22 + (d12 * d23);
            double d25 = matrix4d2.m12;
            double d26 = d24 + (d15 * d25);
            double d27 = matrix4d2.m13;
            double d28 = d26 + (d18 * d27);
            double d29 = matrix4d2.m20;
            double d30 = d10 * d29;
            double d31 = matrix4d2.m21;
            double d32 = d30 + (d12 * d31);
            double d33 = matrix4d2.m22;
            double d34 = d32 + (d15 * d33);
            double d35 = matrix4d2.m23;
            double d36 = d34 + (d18 * d35);
            double d37 = matrix4d2.m30;
            double d38 = d10 * d37;
            double d39 = matrix4d2.m31;
            double d40 = d38 + (d12 * d39);
            double d41 = matrix4d2.m32;
            double d42 = d40 + (d15 * d41);
            double d43 = matrix4d2.m33;
            double d44 = d42 + (d18 * d43);
            double d45 = matrix4d.m01;
            double d46 = matrix4d.m11;
            double d47 = matrix4d.m21;
            double d48 = matrix4d.m31;
            double d49 = (d45 * d11) + (d46 * d13) + (d47 * d16) + (d48 * d19);
            double d50 = (d45 * d21) + (d46 * d23) + (d47 * d25) + (d48 * d27);
            double d51 = (d45 * d29) + (d46 * d31) + (d47 * d33) + (d48 * d35);
            double d52 = (d45 * d37) + (d46 * d39) + (d47 * d41) + (d48 * d43);
            double d53 = matrix4d.m02;
            double d54 = matrix4d.m12;
            double d55 = (d53 * d11) + (d54 * d13);
            double d56 = matrix4d.m22;
            double d57 = matrix4d.m32;
            double d58 = d55 + (d56 * d16) + (d57 * d19);
            double d59 = (d53 * d21) + (d54 * d23) + (d56 * d25) + (d57 * d27);
            double d60 = (d53 * d29) + (d54 * d31) + (d56 * d33) + (d57 * d35);
            double d61 = (d53 * d37) + (d54 * d39) + (d56 * d41) + (d57 * d43);
            double d62 = matrix4d.m03;
            double d63 = matrix4d.m13;
            double d64 = matrix4d.m23;
            double d65 = matrix4d.m33;
            double d66 = (d62 * d11) + (d13 * d63) + (d16 * d64) + (d65 * d19);
            this.m00 = d20;
            this.m01 = d28;
            this.m02 = d36;
            this.m03 = d44;
            this.m10 = d49;
            this.m11 = d50;
            this.m12 = d51;
            this.m13 = d52;
            this.m20 = d58;
            this.m21 = d59;
            this.m22 = d60;
            this.m23 = d61;
            this.m30 = d66;
            this.m31 = (d62 * d21) + (d63 * d23) + (d64 * d25) + (d65 * d27);
            this.m32 = (d62 * d29) + (d63 * d31) + (d64 * d33) + (d65 * d35);
            this.m33 = (d62 * d37) + (d63 * d39) + (d64 * d41) + (d65 * d43);
            return;
        }
        double d67 = matrix4d.m00 * matrix4d2.m00;
        double d68 = matrix4d.m10;
        double d69 = d67 + (matrix4d2.m01 * d68);
        double d70 = matrix4d.m20;
        double d71 = d69 + (matrix4d2.m02 * d70);
        double d72 = matrix4d.m30;
        this.m00 = d71 + (matrix4d2.m03 * d72);
        double d73 = matrix4d.m00;
        double d74 = matrix4d2.m10 * d73;
        double d75 = matrix4d2.m11;
        double d76 = d74 + (d68 * d75);
        double d77 = matrix4d2.m12;
        double d78 = d76 + (d70 * d77);
        double d79 = matrix4d2.m13;
        this.m01 = d78 + (d72 * d79);
        double d80 = matrix4d2.m20;
        double d81 = d73 * d80;
        double d82 = matrix4d2.m21;
        double d83 = d81 + (d68 * d82);
        double d84 = matrix4d2.m22;
        double d85 = d83 + (d70 * d84);
        double d86 = matrix4d2.m23;
        this.m02 = d85 + (d72 * d86);
        double d87 = matrix4d2.m30;
        double d88 = d73 * d87;
        double d89 = matrix4d2.m31;
        double d90 = d88 + (d68 * d89);
        double d91 = matrix4d2.m32;
        double d92 = d90 + (d70 * d91);
        double d93 = matrix4d2.m33;
        this.m03 = d92 + (d72 * d93);
        double d94 = matrix4d.m01;
        double d95 = matrix4d2.m00;
        double d96 = d94 * d95;
        double d97 = matrix4d.m11;
        double d98 = matrix4d2.m01;
        double d99 = d96 + (d97 * d98);
        double d100 = matrix4d.m21;
        double d101 = matrix4d2.m02;
        double d102 = d99 + (d100 * d101);
        double d103 = matrix4d.m31;
        double d104 = matrix4d2.m03;
        this.m10 = d102 + (d103 * d104);
        double d105 = matrix4d2.m10;
        this.m11 = (d94 * d105) + (d97 * d75) + (d100 * d77) + (d79 * d103);
        double d106 = matrix4d.m11;
        this.m12 = (d94 * d80) + (d106 * d82) + (d100 * d84) + (d103 * d86);
        this.m13 = (d94 * d87) + (d106 * d89) + (d100 * d91) + (d103 * d93);
        double d107 = matrix4d.m02;
        double d108 = matrix4d.m12;
        double d109 = (d107 * d95) + (d108 * d98);
        double d110 = matrix4d.m22;
        double d111 = matrix4d.m32;
        this.m20 = d109 + (d110 * d101) + (d111 * d104);
        double d112 = d107 * d105;
        double d113 = matrix4d2.m11;
        double d114 = d112 + (d108 * d113);
        double d115 = matrix4d2.m12;
        double d116 = d114 + (d110 * d115);
        double d117 = matrix4d2.m13;
        this.m21 = d116 + (d111 * d117);
        double d118 = matrix4d2.m20;
        double d119 = d107 * d118;
        double d120 = matrix4d2.m21;
        this.m22 = d119 + (d108 * d120) + (d110 * d84) + (d111 * d86);
        this.m23 = (d107 * d87) + (d108 * d89) + (matrix4d.m22 * d91) + (d111 * d93);
        double d121 = matrix4d.m03;
        double d122 = matrix4d.m13;
        double d123 = matrix4d.m23;
        double d124 = matrix4d.m33;
        this.m30 = (d121 * d95) + (d122 * d98) + (d123 * d101) + (d124 * d104);
        this.m31 = (d121 * d105) + (d122 * d113) + (d123 * d115) + (d117 * d124);
        this.m32 = (d121 * d118) + (d120 * d122) + (matrix4d2.m22 * d123) + (matrix4d2.m23 * d124);
        this.m33 = (d121 * matrix4d2.m30) + (d122 * matrix4d2.m31) + (d123 * matrix4d2.m32) + (d124 * d93);
    }

    public final void mulTransposeLeft(Matrix4d matrix4d, Matrix4d matrix4d2) {
        if (this != matrix4d && this != matrix4d2) {
            double d10 = matrix4d.m00 * matrix4d2.m00;
            double d11 = matrix4d.m10;
            double d12 = matrix4d2.m10;
            double d13 = matrix4d.m20;
            double d14 = matrix4d2.m20;
            double d15 = d10 + (d11 * d12) + (d13 * d14);
            double d16 = matrix4d.m30;
            double d17 = matrix4d2.m30;
            this.m00 = d15 + (d16 * d17);
            double d18 = matrix4d.m00;
            double d19 = matrix4d2.m01 * d18;
            double d20 = matrix4d2.m11;
            double d21 = d19 + (d11 * d20);
            double d22 = matrix4d2.m21;
            double d23 = d21 + (d13 * d22);
            double d24 = matrix4d2.m31;
            this.m01 = d23 + (d16 * d24);
            double d25 = matrix4d2.m02 * d18;
            double d26 = matrix4d2.m12;
            double d27 = d25 + (d11 * d26);
            double d28 = matrix4d2.m22;
            double d29 = d27 + (d13 * d28);
            double d30 = matrix4d2.m32;
            this.m02 = d29 + (d16 * d30);
            double d31 = d18 * matrix4d2.m03;
            double d32 = matrix4d2.m13;
            double d33 = d31 + (d11 * d32);
            double d34 = matrix4d2.m23;
            double d35 = d33 + (d13 * d34);
            double d36 = matrix4d2.m33;
            this.m03 = d35 + (d16 * d36);
            double d37 = matrix4d.m01;
            double d38 = matrix4d2.m00;
            double d39 = d37 * d38;
            double d40 = matrix4d.m11;
            double d41 = matrix4d.m21;
            double d42 = matrix4d.m31;
            this.m10 = d39 + (d12 * d40) + (d41 * d14) + (d42 * d17);
            double d43 = matrix4d2.m01;
            this.m11 = (d37 * d43) + (d40 * d20) + (d41 * d22) + (d42 * d24);
            double d44 = matrix4d2.m02;
            double d45 = d37 * d44;
            double d46 = matrix4d.m11;
            this.m12 = d45 + (d26 * d46) + (d41 * d28) + (d42 * d30);
            double d47 = matrix4d2.m03;
            this.m13 = (d37 * d47) + (d46 * d32) + (d41 * d34) + (d42 * d36);
            double d48 = matrix4d.m02;
            double d49 = matrix4d.m12;
            double d50 = matrix4d2.m10;
            double d51 = (d48 * d38) + (d49 * d50);
            double d52 = matrix4d.m22;
            double d53 = matrix4d.m32;
            this.m20 = d51 + (d14 * d52) + (d53 * d17);
            double d54 = d48 * d43;
            double d55 = matrix4d2.m11;
            this.m21 = d54 + (d49 * d55) + (d22 * d52) + (d53 * d24);
            double d56 = matrix4d2.m12;
            this.m22 = (d48 * d44) + (d49 * d56) + (d52 * d28) + (d53 * d30);
            double d57 = matrix4d2.m13;
            this.m23 = (d48 * d47) + (d49 * d57) + (matrix4d.m22 * d34) + (d53 * d36);
            double d58 = matrix4d.m03;
            double d59 = matrix4d.m13;
            double d60 = matrix4d.m23;
            double d61 = (d58 * d38) + (d59 * d50) + (matrix4d2.m20 * d60);
            double d62 = matrix4d.m33;
            this.m30 = d61 + (d17 * d62);
            this.m31 = (d58 * d43) + (d59 * d55) + (matrix4d2.m21 * d60) + (d62 * d24);
            this.m32 = (d58 * d44) + (d59 * d56) + (matrix4d2.m22 * d60) + (d62 * d30);
            this.m33 = (d58 * d47) + (d59 * d57) + (d60 * matrix4d2.m23) + (d62 * d36);
            return;
        }
        double d63 = matrix4d.m00;
        double d64 = matrix4d2.m00;
        double d65 = matrix4d.m10;
        double d66 = matrix4d2.m10;
        double d67 = (d63 * d64) + (d65 * d66);
        double d68 = matrix4d.m20;
        double d69 = matrix4d2.m20;
        double d70 = d67 + (d68 * d69);
        double d71 = matrix4d.m30;
        double d72 = matrix4d2.m30;
        double d73 = d70 + (d71 * d72);
        double d74 = matrix4d2.m01;
        double d75 = d63 * d74;
        double d76 = matrix4d2.m11;
        double d77 = d75 + (d65 * d76);
        double d78 = matrix4d2.m21;
        double d79 = d77 + (d68 * d78);
        double d80 = matrix4d2.m31;
        double d81 = d79 + (d71 * d80);
        double d82 = matrix4d2.m02;
        double d83 = d63 * d82;
        double d84 = matrix4d2.m12;
        double d85 = d83 + (d65 * d84);
        double d86 = matrix4d2.m22;
        double d87 = d85 + (d68 * d86);
        double d88 = matrix4d2.m32;
        double d89 = d87 + (d71 * d88);
        double d90 = matrix4d2.m03;
        double d91 = d63 * d90;
        double d92 = matrix4d2.m13;
        double d93 = d91 + (d65 * d92);
        double d94 = matrix4d2.m23;
        double d95 = d93 + (d68 * d94);
        double d96 = matrix4d2.m33;
        double d97 = d95 + (d71 * d96);
        double d98 = matrix4d.m01;
        double d99 = matrix4d.m11;
        double d100 = matrix4d.m21;
        double d101 = matrix4d.m31;
        double d102 = (d98 * d64) + (d99 * d66) + (d100 * d69) + (d101 * d72);
        double d103 = (d98 * d74) + (d99 * d76) + (d100 * d78) + (d101 * d80);
        double d104 = (d98 * d82) + (d99 * d84) + (d100 * d86) + (d101 * d88);
        double d105 = (d98 * d90) + (d99 * d92) + (d100 * d94) + (d101 * d96);
        double d106 = matrix4d.m02;
        double d107 = matrix4d.m12;
        double d108 = (d106 * d64) + (d107 * d66);
        double d109 = matrix4d.m22;
        double d110 = matrix4d.m32;
        double d111 = d108 + (d109 * d69) + (d110 * d72);
        double d112 = (d106 * d74) + (d107 * d76) + (d109 * d78) + (d110 * d80);
        double d113 = (d106 * d82) + (d107 * d84) + (d109 * d86) + (d110 * d88);
        double d114 = (d106 * d90) + (d107 * d92) + (d109 * d94) + (d110 * d96);
        double d115 = matrix4d.m03;
        double d116 = matrix4d.m13;
        double d117 = matrix4d.m23;
        double d118 = matrix4d.m33;
        double d119 = (d115 * d64) + (d66 * d116) + (d69 * d117) + (d118 * d72);
        this.m00 = d73;
        this.m01 = d81;
        this.m02 = d89;
        this.m03 = d97;
        this.m10 = d102;
        this.m11 = d103;
        this.m12 = d104;
        this.m13 = d105;
        this.m20 = d111;
        this.m21 = d112;
        this.m22 = d113;
        this.m23 = d114;
        this.m30 = d119;
        this.m31 = (d115 * d74) + (d116 * d76) + (d117 * d78) + (d118 * d80);
        this.m32 = (d115 * d82) + (d116 * d84) + (d117 * d86) + (d118 * d88);
        this.m33 = (d115 * d90) + (d116 * d92) + (d117 * d94) + (d118 * d96);
    }

    public final void mulTransposeRight(Matrix4d matrix4d, Matrix4d matrix4d2) {
        if (this == matrix4d || this == matrix4d2) {
            double d10 = matrix4d.m00;
            double d11 = matrix4d2.m00;
            double d12 = matrix4d.m01;
            double d13 = matrix4d2.m01;
            double d14 = (d10 * d11) + (d12 * d13);
            double d15 = matrix4d.m02;
            double d16 = matrix4d2.m02;
            double d17 = d14 + (d15 * d16);
            double d18 = matrix4d.m03;
            double d19 = matrix4d2.m03;
            double d20 = d17 + (d18 * d19);
            double d21 = matrix4d2.m10;
            double d22 = d10 * d21;
            double d23 = matrix4d2.m11;
            double d24 = d22 + (d12 * d23);
            double d25 = matrix4d2.m12;
            double d26 = d24 + (d15 * d25);
            double d27 = matrix4d2.m13;
            double d28 = d26 + (d18 * d27);
            double d29 = matrix4d2.m20;
            double d30 = d10 * d29;
            double d31 = matrix4d2.m21;
            double d32 = d30 + (d12 * d31);
            double d33 = matrix4d2.m22;
            double d34 = d32 + (d15 * d33);
            double d35 = matrix4d2.m23;
            double d36 = d34 + (d18 * d35);
            double d37 = matrix4d2.m30;
            double d38 = d10 * d37;
            double d39 = matrix4d2.m31;
            double d40 = d38 + (d12 * d39);
            double d41 = matrix4d2.m32;
            double d42 = d40 + (d15 * d41);
            double d43 = matrix4d2.m33;
            double d44 = d42 + (d18 * d43);
            double d45 = matrix4d.m10;
            double d46 = matrix4d.m11;
            double d47 = matrix4d.m12;
            double d48 = matrix4d.m13;
            double d49 = (d45 * d11) + (d46 * d13) + (d47 * d16) + (d48 * d19);
            double d50 = (d45 * d21) + (d46 * d23) + (d47 * d25) + (d48 * d27);
            double d51 = (d45 * d29) + (d46 * d31) + (d47 * d33) + (d48 * d35);
            double d52 = (d45 * d37) + (d46 * d39) + (d47 * d41) + (d48 * d43);
            double d53 = matrix4d.m20;
            double d54 = matrix4d.m21;
            double d55 = (d53 * d11) + (d54 * d13);
            double d56 = matrix4d.m22;
            double d57 = matrix4d.m23;
            double d58 = d55 + (d56 * d16) + (d57 * d19);
            double d59 = (d53 * d21) + (d54 * d23) + (d56 * d25) + (d57 * d27);
            double d60 = (d53 * d29) + (d54 * d31) + (d56 * d33) + (d57 * d35);
            double d61 = (d53 * d37) + (d54 * d39) + (d56 * d41) + (d57 * d43);
            double d62 = matrix4d.m30;
            double d63 = matrix4d.m31;
            double d64 = matrix4d.m32;
            double d65 = matrix4d.m33;
            double d66 = (d62 * d11) + (d13 * d63) + (d16 * d64) + (d65 * d19);
            this.m00 = d20;
            this.m01 = d28;
            this.m02 = d36;
            this.m03 = d44;
            this.m10 = d49;
            this.m11 = d50;
            this.m12 = d51;
            this.m13 = d52;
            this.m20 = d58;
            this.m21 = d59;
            this.m22 = d60;
            this.m23 = d61;
            this.m30 = d66;
            this.m31 = (d62 * d21) + (d63 * d23) + (d64 * d25) + (d65 * d27);
            this.m32 = (d62 * d29) + (d63 * d31) + (d64 * d33) + (d65 * d35);
            this.m33 = (d62 * d37) + (d63 * d39) + (d64 * d41) + (d65 * d43);
            return;
        }
        double d67 = matrix4d.m00 * matrix4d2.m00;
        double d68 = matrix4d.m01;
        double d69 = d67 + (matrix4d2.m01 * d68);
        double d70 = matrix4d.m02;
        double d71 = d69 + (matrix4d2.m02 * d70);
        double d72 = matrix4d.m03;
        this.m00 = d71 + (matrix4d2.m03 * d72);
        double d73 = matrix4d.m00;
        double d74 = matrix4d2.m10 * d73;
        double d75 = matrix4d2.m11;
        double d76 = d74 + (d68 * d75);
        double d77 = matrix4d2.m12;
        double d78 = d76 + (d70 * d77);
        double d79 = matrix4d2.m13;
        this.m01 = d78 + (d72 * d79);
        double d80 = matrix4d2.m20;
        double d81 = d73 * d80;
        double d82 = matrix4d.m01;
        double d83 = matrix4d2.m21;
        double d84 = d81 + (d82 * d83);
        double d85 = matrix4d2.m22;
        double d86 = d84 + (d70 * d85);
        double d87 = matrix4d2.m23;
        this.m02 = d86 + (d72 * d87);
        double d88 = matrix4d2.m30;
        double d89 = d73 * d88;
        double d90 = matrix4d2.m31;
        double d91 = d89 + (d82 * d90);
        double d92 = matrix4d.m02;
        double d93 = matrix4d2.m32;
        double d94 = d91 + (d92 * d93);
        double d95 = matrix4d2.m33;
        this.m03 = d94 + (d72 * d95);
        double d96 = matrix4d.m10;
        double d97 = matrix4d2.m00;
        double d98 = d96 * d97;
        double d99 = matrix4d.m11;
        double d100 = matrix4d2.m01;
        double d101 = d98 + (d99 * d100);
        double d102 = matrix4d.m12;
        double d103 = matrix4d2.m02;
        double d104 = d101 + (d102 * d103);
        double d105 = matrix4d.m13;
        double d106 = matrix4d2.m03;
        this.m10 = d104 + (d105 * d106);
        double d107 = matrix4d.m10;
        double d108 = matrix4d2.m10;
        this.m11 = (d107 * d108) + (d99 * d75) + (d102 * d77) + (d105 * d79);
        double d109 = matrix4d.m11;
        this.m12 = (d107 * d80) + (d109 * d83) + (d102 * d85) + (d105 * d87);
        this.m13 = (d107 * d88) + (d109 * d90) + (matrix4d.m12 * d93) + (d105 * d95);
        double d110 = matrix4d.m20 * d97;
        double d111 = matrix4d.m21;
        double d112 = matrix4d.m22;
        double d113 = d110 + (d111 * d100) + (d112 * d103);
        double d114 = matrix4d.m23;
        this.m20 = d113 + (d114 * d106);
        double d115 = matrix4d.m20;
        double d116 = d115 * d108;
        double d117 = matrix4d2.m11;
        double d118 = d116 + (d111 * d117);
        double d119 = matrix4d2.m12;
        double d120 = d118 + (d112 * d119);
        double d121 = matrix4d2.m13;
        this.m21 = d120 + (d114 * d121);
        double d122 = matrix4d2.m20;
        double d123 = d115 * d122;
        double d124 = matrix4d.m21;
        double d125 = matrix4d2.m21;
        this.m22 = d123 + (d124 * d125) + (d112 * d85) + (d114 * d87);
        this.m23 = (d115 * d88) + (d124 * d90) + (matrix4d.m22 * d93) + (d114 * d95);
        double d126 = matrix4d.m30 * d97;
        double d127 = matrix4d.m31;
        double d128 = d126 + (d127 * d100);
        double d129 = matrix4d.m32;
        double d130 = matrix4d.m33;
        this.m30 = d128 + (d129 * d103) + (d130 * d106);
        double d131 = matrix4d.m30;
        this.m31 = (d130 * d121) + (d108 * d131) + (d127 * d117) + (d129 * d119);
        double d132 = matrix4d.m31;
        this.m32 = (d131 * d122) + (d125 * d132) + (d129 * matrix4d2.m22) + (matrix4d2.m23 * d130);
        this.m33 = (d131 * matrix4d2.m30) + (d132 * matrix4d2.m31) + (matrix4d.m32 * matrix4d2.m32) + (d130 * d95);
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

    public final void rotX(double d10) {
        double sin = Math.sin(d10);
        double cos = Math.cos(d10);
        this.m00 = 1.0d;
        this.m01 = 0.0d;
        this.m02 = 0.0d;
        this.m03 = 0.0d;
        this.m10 = 0.0d;
        this.m11 = cos;
        this.m12 = -sin;
        this.m13 = 0.0d;
        this.m20 = 0.0d;
        this.m21 = sin;
        this.m22 = cos;
        this.m23 = 0.0d;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void rotY(double d10) {
        double sin = Math.sin(d10);
        double cos = Math.cos(d10);
        this.m00 = cos;
        this.m01 = 0.0d;
        this.m02 = sin;
        this.m03 = 0.0d;
        this.m10 = 0.0d;
        this.m11 = 1.0d;
        this.m12 = 0.0d;
        this.m13 = 0.0d;
        this.m20 = -sin;
        this.m21 = 0.0d;
        this.m22 = cos;
        this.m23 = 0.0d;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void rotZ(double d10) {
        double sin = Math.sin(d10);
        double cos = Math.cos(d10);
        this.m00 = cos;
        this.m01 = -sin;
        this.m02 = 0.0d;
        this.m03 = 0.0d;
        this.m10 = sin;
        this.m11 = cos;
        this.m12 = 0.0d;
        this.m13 = 0.0d;
        this.m20 = 0.0d;
        this.m21 = 0.0d;
        this.m22 = 1.0d;
        this.m23 = 0.0d;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void set(double[] dArr) {
        this.m00 = dArr[0];
        this.m01 = dArr[1];
        this.m02 = dArr[2];
        this.m03 = dArr[3];
        this.m10 = dArr[4];
        this.m11 = dArr[5];
        this.m12 = dArr[6];
        this.m13 = dArr[7];
        this.m20 = dArr[8];
        this.m21 = dArr[9];
        this.m22 = dArr[10];
        this.m23 = dArr[11];
        this.m30 = dArr[12];
        this.m31 = dArr[13];
        this.m32 = dArr[14];
        this.m33 = dArr[15];
    }

    public final void setColumn(int i10, double d10, double d11, double d12, double d13) {
        if (i10 == 0) {
            this.m00 = d10;
            this.m10 = d11;
            this.m20 = d12;
            this.m30 = d13;
            return;
        }
        if (i10 == 1) {
            this.m01 = d10;
            this.m11 = d11;
            this.m21 = d12;
            this.m31 = d13;
            return;
        }
        if (i10 == 2) {
            this.m02 = d10;
            this.m12 = d11;
            this.m22 = d12;
            this.m32 = d13;
            return;
        }
        if (i10 == 3) {
            this.m03 = d10;
            this.m13 = d11;
            this.m23 = d12;
            this.m33 = d13;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d7"));
    }

    public final void setElement(int i10, int i11, double d10) {
        if (i10 == 0) {
            if (i11 == 0) {
                this.m00 = d10;
                return;
            }
            if (i11 == 1) {
                this.m01 = d10;
                return;
            } else if (i11 == 2) {
                this.m02 = d10;
                return;
            } else {
                if (i11 != 3) {
                    throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d0"));
                }
                this.m03 = d10;
                return;
            }
        }
        if (i10 == 1) {
            if (i11 == 0) {
                this.m10 = d10;
                return;
            }
            if (i11 == 1) {
                this.m11 = d10;
                return;
            } else if (i11 == 2) {
                this.m12 = d10;
                return;
            } else {
                if (i11 != 3) {
                    throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d0"));
                }
                this.m13 = d10;
                return;
            }
        }
        if (i10 == 2) {
            if (i11 == 0) {
                this.m20 = d10;
                return;
            }
            if (i11 == 1) {
                this.m21 = d10;
                return;
            } else if (i11 == 2) {
                this.m22 = d10;
                return;
            } else {
                if (i11 != 3) {
                    throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d0"));
                }
                this.m23 = d10;
                return;
            }
        }
        if (i10 != 3) {
            throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d0"));
        }
        if (i11 == 0) {
            this.m30 = d10;
            return;
        }
        if (i11 == 1) {
            this.m31 = d10;
        } else if (i11 == 2) {
            this.m32 = d10;
        } else {
            if (i11 != 3) {
                throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d0"));
            }
            this.m33 = d10;
        }
    }

    public final void setIdentity() {
        this.m00 = 1.0d;
        this.m01 = 0.0d;
        this.m02 = 0.0d;
        this.m03 = 0.0d;
        this.m10 = 0.0d;
        this.m11 = 1.0d;
        this.m12 = 0.0d;
        this.m13 = 0.0d;
        this.m20 = 0.0d;
        this.m21 = 0.0d;
        this.m22 = 1.0d;
        this.m23 = 0.0d;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void setM00(double d10) {
        this.m00 = d10;
    }

    public final void setM01(double d10) {
        this.m01 = d10;
    }

    public final void setM02(double d10) {
        this.m02 = d10;
    }

    public final void setM03(double d10) {
        this.m03 = d10;
    }

    public final void setM10(double d10) {
        this.m10 = d10;
    }

    public final void setM11(double d10) {
        this.m11 = d10;
    }

    public final void setM12(double d10) {
        this.m12 = d10;
    }

    public final void setM13(double d10) {
        this.m13 = d10;
    }

    public final void setM20(double d10) {
        this.m20 = d10;
    }

    public final void setM21(double d10) {
        this.m21 = d10;
    }

    public final void setM22(double d10) {
        this.m22 = d10;
    }

    public final void setM23(double d10) {
        this.m23 = d10;
    }

    public final void setM30(double d10) {
        this.m30 = d10;
    }

    public final void setM31(double d10) {
        this.m31 = d10;
    }

    public final void setM32(double d10) {
        this.m32 = d10;
    }

    public final void setM33(double d10) {
        this.m33 = d10;
    }

    public final void setRotation(Matrix3d matrix3d) {
        double[] dArr = new double[3];
        getScaleRotate(dArr, new double[9]);
        double d10 = matrix3d.m00;
        double d11 = dArr[0];
        this.m00 = d10 * d11;
        double d12 = matrix3d.m01;
        double d13 = dArr[1];
        this.m01 = d12 * d13;
        double d14 = matrix3d.m02;
        double d15 = dArr[2];
        this.m02 = d14 * d15;
        this.m10 = matrix3d.m10 * d11;
        this.m11 = matrix3d.m11 * d13;
        this.m12 = matrix3d.m12 * d15;
        this.m20 = matrix3d.m20 * d11;
        this.m21 = matrix3d.m21 * d13;
        this.m22 = matrix3d.m22 * d15;
    }

    public final void setRotationScale(Matrix3d matrix3d) {
        this.m00 = matrix3d.m00;
        this.m01 = matrix3d.m01;
        this.m02 = matrix3d.m02;
        this.m10 = matrix3d.m10;
        this.m11 = matrix3d.m11;
        this.m12 = matrix3d.m12;
        this.m20 = matrix3d.m20;
        this.m21 = matrix3d.m21;
        this.m22 = matrix3d.m22;
    }

    public final void setRow(int i10, double d10, double d11, double d12, double d13) {
        if (i10 == 0) {
            this.m00 = d10;
            this.m01 = d11;
            this.m02 = d12;
            this.m03 = d13;
            return;
        }
        if (i10 == 1) {
            this.m10 = d10;
            this.m11 = d11;
            this.m12 = d12;
            this.m13 = d13;
            return;
        }
        if (i10 == 2) {
            this.m20 = d10;
            this.m21 = d11;
            this.m22 = d12;
            this.m23 = d13;
            return;
        }
        if (i10 == 3) {
            this.m30 = d10;
            this.m31 = d11;
            this.m32 = d12;
            this.m33 = d13;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d4"));
    }

    public final void setScale(double d10) {
        double[] dArr = new double[9];
        getScaleRotate(new double[3], dArr);
        this.m00 = dArr[0] * d10;
        this.m01 = dArr[1] * d10;
        this.m02 = dArr[2] * d10;
        this.m10 = dArr[3] * d10;
        this.m11 = dArr[4] * d10;
        this.m12 = dArr[5] * d10;
        this.m20 = dArr[6] * d10;
        this.m21 = dArr[7] * d10;
        this.m22 = dArr[8] * d10;
    }

    public final void setTranslation(Vector3d vector3d) {
        this.m03 = vector3d.f92833x;
        this.m13 = vector3d.f92834y;
        this.m23 = vector3d.f92835z;
    }

    public final void setZero() {
        this.m00 = 0.0d;
        this.m01 = 0.0d;
        this.m02 = 0.0d;
        this.m03 = 0.0d;
        this.m10 = 0.0d;
        this.m11 = 0.0d;
        this.m12 = 0.0d;
        this.m13 = 0.0d;
        this.m20 = 0.0d;
        this.m21 = 0.0d;
        this.m22 = 0.0d;
        this.m23 = 0.0d;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 0.0d;
    }

    public final void sub(Matrix4d matrix4d, Matrix4d matrix4d2) {
        this.m00 = matrix4d.m00 - matrix4d2.m00;
        this.m01 = matrix4d.m01 - matrix4d2.m01;
        this.m02 = matrix4d.m02 - matrix4d2.m02;
        this.m03 = matrix4d.m03 - matrix4d2.m03;
        this.m10 = matrix4d.m10 - matrix4d2.m10;
        this.m11 = matrix4d.m11 - matrix4d2.m11;
        this.m12 = matrix4d.m12 - matrix4d2.m12;
        this.m13 = matrix4d.m13 - matrix4d2.m13;
        this.m20 = matrix4d.m20 - matrix4d2.m20;
        this.m21 = matrix4d.m21 - matrix4d2.m21;
        this.m22 = matrix4d.m22 - matrix4d2.m22;
        this.m23 = matrix4d.m23 - matrix4d2.m23;
        this.m30 = matrix4d.m30 - matrix4d2.m30;
        this.m31 = matrix4d.m31 - matrix4d2.m31;
        this.m32 = matrix4d.m32 - matrix4d2.m32;
        this.m33 = matrix4d.m33 - matrix4d2.m33;
    }

    public String toString() {
        return this.m00 + ", " + this.m01 + ", " + this.m02 + ", " + this.m03 + "\n" + this.m10 + ", " + this.m11 + ", " + this.m12 + ", " + this.m13 + "\n" + this.m20 + ", " + this.m21 + ", " + this.m22 + ", " + this.m23 + "\n" + this.m30 + ", " + this.m31 + ", " + this.m32 + ", " + this.m33 + "\n";
    }

    public final void transform(Tuple4d tuple4d, Tuple4d tuple4d2) {
        double d10 = this.m00;
        double d11 = tuple4d.f92847x;
        double d12 = this.m01;
        double d13 = tuple4d.f92848y;
        double d14 = (d10 * d11) + (d12 * d13);
        double d15 = this.m02;
        double d16 = tuple4d.f92849z;
        double d17 = d14 + (d15 * d16);
        double d18 = this.m03;
        double d19 = tuple4d.f92846w;
        double d20 = d17 + (d18 * d19);
        double d21 = (this.m10 * d11) + (this.m11 * d13) + (this.m12 * d16) + (this.m13 * d19);
        double d22 = (this.m20 * d11) + (this.m21 * d13) + (this.m22 * d16) + (this.m23 * d19);
        tuple4d2.f92846w = (this.m30 * d11) + (this.m31 * d13) + (this.m32 * d16) + (this.m33 * d19);
        tuple4d2.f92847x = d20;
        tuple4d2.f92848y = d21;
        tuple4d2.f92849z = d22;
    }

    public final void transpose() {
        double d10 = this.m10;
        this.m10 = this.m01;
        this.m01 = d10;
        double d11 = this.m20;
        this.m20 = this.m02;
        this.m02 = d11;
        double d12 = this.m30;
        this.m30 = this.m03;
        this.m03 = d12;
        double d13 = this.m21;
        this.m21 = this.m12;
        this.m12 = d13;
        double d14 = this.m31;
        this.m31 = this.m13;
        this.m13 = d14;
        double d15 = this.m32;
        this.m32 = this.m23;
        this.m23 = d15;
    }

    public boolean epsilonEquals(Matrix4d matrix4d, double d10) {
        double d11 = this.m00 - matrix4d.m00;
        if (d11 < 0.0d) {
            d11 = -d11;
        }
        if (d11 > d10) {
            return false;
        }
        double d12 = this.m01 - matrix4d.m01;
        if (d12 < 0.0d) {
            d12 = -d12;
        }
        if (d12 > d10) {
            return false;
        }
        double d13 = this.m02 - matrix4d.m02;
        if (d13 < 0.0d) {
            d13 = -d13;
        }
        if (d13 > d10) {
            return false;
        }
        double d14 = this.m03 - matrix4d.m03;
        if (d14 < 0.0d) {
            d14 = -d14;
        }
        if (d14 > d10) {
            return false;
        }
        double d15 = this.m10 - matrix4d.m10;
        if (d15 < 0.0d) {
            d15 = -d15;
        }
        if (d15 > d10) {
            return false;
        }
        double d16 = this.m11 - matrix4d.m11;
        if (d16 < 0.0d) {
            d16 = -d16;
        }
        if (d16 > d10) {
            return false;
        }
        double d17 = this.m12 - matrix4d.m12;
        if (d17 < 0.0d) {
            d17 = -d17;
        }
        if (d17 > d10) {
            return false;
        }
        double d18 = this.m13 - matrix4d.m13;
        if (d18 < 0.0d) {
            d18 = -d18;
        }
        if (d18 > d10) {
            return false;
        }
        double d19 = this.m20 - matrix4d.m20;
        if (d19 < 0.0d) {
            d19 = -d19;
        }
        if (d19 > d10) {
            return false;
        }
        double d20 = this.m21 - matrix4d.m21;
        if (d20 < 0.0d) {
            d20 = -d20;
        }
        if (d20 > d10) {
            return false;
        }
        double d21 = this.m22 - matrix4d.m22;
        if (d21 < 0.0d) {
            d21 = -d21;
        }
        if (d21 > d10) {
            return false;
        }
        double d22 = this.m23 - matrix4d.m23;
        if (d22 < 0.0d) {
            d22 = -d22;
        }
        if (d22 > d10) {
            return false;
        }
        double d23 = this.m30 - matrix4d.m30;
        if (d23 < 0.0d) {
            d23 = -d23;
        }
        if (d23 > d10) {
            return false;
        }
        double d24 = this.m31 - matrix4d.m31;
        if (d24 < 0.0d) {
            d24 = -d24;
        }
        if (d24 > d10) {
            return false;
        }
        double d25 = this.m32 - matrix4d.m32;
        if (d25 < 0.0d) {
            d25 = -d25;
        }
        if (d25 > d10) {
            return false;
        }
        double d26 = this.m33 - matrix4d.m33;
        if (d26 < 0.0d) {
            d26 = -d26;
        }
        return d26 <= d10;
    }

    public boolean equals(Object obj) {
        try {
            Matrix4d matrix4d = (Matrix4d) obj;
            if (this.m00 == matrix4d.m00 && this.m01 == matrix4d.m01 && this.m02 == matrix4d.m02 && this.m03 == matrix4d.m03 && this.m10 == matrix4d.m10 && this.m11 == matrix4d.m11 && this.m12 == matrix4d.m12 && this.m13 == matrix4d.m13 && this.m20 == matrix4d.m20 && this.m21 == matrix4d.m21 && this.m22 == matrix4d.m22 && this.m23 == matrix4d.m23 && this.m30 == matrix4d.m30 && this.m31 == matrix4d.m31 && this.m32 == matrix4d.m32) {
                return this.m33 == matrix4d.m33;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void invert() {
        invertGeneral(this);
    }

    public final void getRotationScale(Matrix3d matrix3d) {
        matrix3d.m00 = this.m00;
        matrix3d.m01 = this.m01;
        matrix3d.m02 = this.m02;
        matrix3d.m10 = this.m10;
        matrix3d.m11 = this.m11;
        matrix3d.m12 = this.m12;
        matrix3d.m20 = this.m20;
        matrix3d.m21 = this.m21;
        matrix3d.m22 = this.m22;
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

    public final void transform(Tuple4d tuple4d) {
        double d10 = this.m00;
        double d11 = tuple4d.f92847x;
        double d12 = this.m01;
        double d13 = tuple4d.f92848y;
        double d14 = (d10 * d11) + (d12 * d13);
        double d15 = this.m02;
        double d16 = tuple4d.f92849z;
        double d17 = d14 + (d15 * d16);
        double d18 = this.m03;
        double d19 = tuple4d.f92846w;
        double d20 = d17 + (d18 * d19);
        double d21 = (this.m10 * d11) + (this.m11 * d13) + (this.m12 * d16) + (this.m13 * d19);
        double d22 = (this.m20 * d11) + (this.m21 * d13) + (this.m22 * d16) + (this.m23 * d19);
        tuple4d.f92846w = (this.m30 * d11) + (this.m31 * d13) + (this.m32 * d16) + (this.m33 * d19);
        tuple4d.f92847x = d20;
        tuple4d.f92848y = d21;
        tuple4d.f92849z = d22;
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
        this.m00 = d10 * d11;
        double d12 = matrix3f.m01;
        double d13 = dArr[1];
        this.m01 = d12 * d13;
        double d14 = matrix3f.m02;
        double d15 = dArr[2];
        this.m02 = d14 * d15;
        this.m10 = matrix3f.m10 * d11;
        this.m11 = matrix3f.m11 * d13;
        this.m12 = matrix3f.m12 * d15;
        this.m20 = matrix3f.m20 * d11;
        this.m21 = matrix3f.m21 * d13;
        this.m22 = matrix3f.m22 * d15;
    }

    public final void transform(Tuple4f tuple4f, Tuple4f tuple4f2) {
        double d10 = this.m00;
        float f10 = tuple4f.f92851x;
        double d11 = this.m01;
        float f11 = tuple4f.f92852y;
        double d12 = (d10 * f10) + (d11 * f11);
        double d13 = this.m02;
        float f12 = tuple4f.f92853z;
        double d14 = d12 + (d13 * f12);
        double d15 = this.m03;
        float f13 = tuple4f.f92850w;
        float f14 = (float) (d14 + (d15 * f13));
        float f15 = (float) ((this.m10 * f10) + (this.m11 * f11) + (this.m12 * f12) + (this.m13 * f13));
        float f16 = (float) ((this.m20 * f10) + (this.m21 * f11) + (this.m22 * f12) + (this.m23 * f13));
        tuple4f2.f92850w = (float) ((this.m30 * f10) + (this.m31 * f11) + (this.m32 * f12) + (this.m33 * f13));
        tuple4f2.f92851x = f14;
        tuple4f2.f92852y = f15;
        tuple4f2.f92853z = f16;
    }

    public final void add(double d10, Matrix4d matrix4d) {
        this.m00 = matrix4d.m00 + d10;
        this.m01 = matrix4d.m01 + d10;
        this.m02 = matrix4d.m02 + d10;
        this.m03 = matrix4d.m03 + d10;
        this.m10 = matrix4d.m10 + d10;
        this.m11 = matrix4d.m11 + d10;
        this.m12 = matrix4d.m12 + d10;
        this.m13 = matrix4d.m13 + d10;
        this.m20 = matrix4d.m20 + d10;
        this.m21 = matrix4d.m21 + d10;
        this.m22 = matrix4d.m22 + d10;
        this.m23 = matrix4d.m23 + d10;
        this.m30 = matrix4d.m30 + d10;
        this.m31 = matrix4d.m31 + d10;
        this.m32 = matrix4d.m32 + d10;
        this.m33 = matrix4d.m33 + d10;
    }

    public final void mul(double d10, Matrix4d matrix4d) {
        this.m00 = matrix4d.m00 * d10;
        this.m01 = matrix4d.m01 * d10;
        this.m02 = matrix4d.m02 * d10;
        this.m03 = matrix4d.m03 * d10;
        this.m10 = matrix4d.m10 * d10;
        this.m11 = matrix4d.m11 * d10;
        this.m12 = matrix4d.m12 * d10;
        this.m13 = matrix4d.m13 * d10;
        this.m20 = matrix4d.m20 * d10;
        this.m21 = matrix4d.m21 * d10;
        this.m22 = matrix4d.m22 * d10;
        this.m23 = matrix4d.m23 * d10;
        this.m30 = matrix4d.m30 * d10;
        this.m31 = matrix4d.m31 * d10;
        this.m32 = matrix4d.m32 * d10;
        this.m33 = matrix4d.m33 * d10;
    }

    public final void negate(Matrix4d matrix4d) {
        this.m00 = -matrix4d.m00;
        this.m01 = -matrix4d.m01;
        this.m02 = -matrix4d.m02;
        this.m03 = -matrix4d.m03;
        this.m10 = -matrix4d.m10;
        this.m11 = -matrix4d.m11;
        this.m12 = -matrix4d.m12;
        this.m13 = -matrix4d.m13;
        this.m20 = -matrix4d.m20;
        this.m21 = -matrix4d.m21;
        this.m22 = -matrix4d.m22;
        this.m23 = -matrix4d.m23;
        this.m30 = -matrix4d.m30;
        this.m31 = -matrix4d.m31;
        this.m32 = -matrix4d.m32;
        this.m33 = -matrix4d.m33;
    }

    public final void set(Matrix3f matrix3f) {
        this.m00 = matrix3f.m00;
        this.m01 = matrix3f.m01;
        this.m02 = matrix3f.m02;
        this.m03 = 0.0d;
        this.m10 = matrix3f.m10;
        this.m11 = matrix3f.m11;
        this.m12 = matrix3f.m12;
        this.m13 = 0.0d;
        this.m20 = matrix3f.m20;
        this.m21 = matrix3f.m21;
        this.m22 = matrix3f.m22;
        this.m23 = 0.0d;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void sub(Matrix4d matrix4d) {
        this.m00 -= matrix4d.m00;
        this.m01 -= matrix4d.m01;
        this.m02 -= matrix4d.m02;
        this.m03 -= matrix4d.m03;
        this.m10 -= matrix4d.m10;
        this.m11 -= matrix4d.m11;
        this.m12 -= matrix4d.m12;
        this.m13 -= matrix4d.m13;
        this.m20 -= matrix4d.m20;
        this.m21 -= matrix4d.m21;
        this.m22 -= matrix4d.m22;
        this.m23 -= matrix4d.m23;
        this.m30 -= matrix4d.m30;
        this.m31 -= matrix4d.m31;
        this.m32 -= matrix4d.m32;
        this.m33 -= matrix4d.m33;
    }

    public Matrix4d(double[] dArr) {
        this.m00 = dArr[0];
        this.m01 = dArr[1];
        this.m02 = dArr[2];
        this.m03 = dArr[3];
        this.m10 = dArr[4];
        this.m11 = dArr[5];
        this.m12 = dArr[6];
        this.m13 = dArr[7];
        this.m20 = dArr[8];
        this.m21 = dArr[9];
        this.m22 = dArr[10];
        this.m23 = dArr[11];
        this.m30 = dArr[12];
        this.m31 = dArr[13];
        this.m32 = dArr[14];
        this.m33 = dArr[15];
    }

    public final void getColumn(int i10, double[] dArr) {
        if (i10 == 0) {
            dArr[0] = this.m00;
            dArr[1] = this.m10;
            dArr[2] = this.m20;
            dArr[3] = this.m30;
            return;
        }
        if (i10 == 1) {
            dArr[0] = this.m01;
            dArr[1] = this.m11;
            dArr[2] = this.m21;
            dArr[3] = this.m31;
            return;
        }
        if (i10 == 2) {
            dArr[0] = this.m02;
            dArr[1] = this.m12;
            dArr[2] = this.m22;
            dArr[3] = this.m32;
            return;
        }
        if (i10 == 3) {
            dArr[0] = this.m03;
            dArr[1] = this.m13;
            dArr[2] = this.m23;
            dArr[3] = this.m33;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d3"));
    }

    public final void getRow(int i10, double[] dArr) {
        if (i10 == 0) {
            dArr[0] = this.m00;
            dArr[1] = this.m01;
            dArr[2] = this.m02;
            dArr[3] = this.m03;
            return;
        }
        if (i10 == 1) {
            dArr[0] = this.m10;
            dArr[1] = this.m11;
            dArr[2] = this.m12;
            dArr[3] = this.m13;
            return;
        }
        if (i10 == 2) {
            dArr[0] = this.m20;
            dArr[1] = this.m21;
            dArr[2] = this.m22;
            dArr[3] = this.m23;
            return;
        }
        if (i10 == 3) {
            dArr[0] = this.m30;
            dArr[1] = this.m31;
            dArr[2] = this.m32;
            dArr[3] = this.m33;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d2"));
    }

    public final void setColumn(int i10, Vector4d vector4d) {
        if (i10 == 0) {
            this.m00 = vector4d.f92847x;
            this.m10 = vector4d.f92848y;
            this.m20 = vector4d.f92849z;
            this.m30 = vector4d.f92846w;
            return;
        }
        if (i10 == 1) {
            this.m01 = vector4d.f92847x;
            this.m11 = vector4d.f92848y;
            this.m21 = vector4d.f92849z;
            this.m31 = vector4d.f92846w;
            return;
        }
        if (i10 == 2) {
            this.m02 = vector4d.f92847x;
            this.m12 = vector4d.f92848y;
            this.m22 = vector4d.f92849z;
            this.m32 = vector4d.f92846w;
            return;
        }
        if (i10 == 3) {
            this.m03 = vector4d.f92847x;
            this.m13 = vector4d.f92848y;
            this.m23 = vector4d.f92849z;
            this.m33 = vector4d.f92846w;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d7"));
    }

    public final void setRow(int i10, Vector4d vector4d) {
        if (i10 == 0) {
            this.m00 = vector4d.f92847x;
            this.m01 = vector4d.f92848y;
            this.m02 = vector4d.f92849z;
            this.m03 = vector4d.f92846w;
            return;
        }
        if (i10 == 1) {
            this.m10 = vector4d.f92847x;
            this.m11 = vector4d.f92848y;
            this.m12 = vector4d.f92849z;
            this.m13 = vector4d.f92846w;
            return;
        }
        if (i10 == 2) {
            this.m20 = vector4d.f92847x;
            this.m21 = vector4d.f92848y;
            this.m22 = vector4d.f92849z;
            this.m23 = vector4d.f92846w;
            return;
        }
        if (i10 == 3) {
            this.m30 = vector4d.f92847x;
            this.m31 = vector4d.f92848y;
            this.m32 = vector4d.f92849z;
            this.m33 = vector4d.f92846w;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d4"));
    }

    public final void transpose(Matrix4d matrix4d) {
        if (this != matrix4d) {
            this.m00 = matrix4d.m00;
            this.m01 = matrix4d.m10;
            this.m02 = matrix4d.m20;
            this.m03 = matrix4d.m30;
            this.m10 = matrix4d.m01;
            this.m11 = matrix4d.m11;
            this.m12 = matrix4d.m21;
            this.m13 = matrix4d.m31;
            this.m20 = matrix4d.m02;
            this.m21 = matrix4d.m12;
            this.m22 = matrix4d.m22;
            this.m23 = matrix4d.m32;
            this.m30 = matrix4d.m03;
            this.m31 = matrix4d.m13;
            this.m32 = matrix4d.m23;
            this.m33 = matrix4d.m33;
            return;
        }
        transpose();
    }

    public final void set(Matrix3d matrix3d) {
        this.m00 = matrix3d.m00;
        this.m01 = matrix3d.m01;
        this.m02 = matrix3d.m02;
        this.m03 = 0.0d;
        this.m10 = matrix3d.m10;
        this.m11 = matrix3d.m11;
        this.m12 = matrix3d.m12;
        this.m13 = 0.0d;
        this.m20 = matrix3d.m20;
        this.m21 = matrix3d.m21;
        this.m22 = matrix3d.m22;
        this.m23 = 0.0d;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void transform(Tuple4f tuple4f) {
        double d10 = this.m00;
        float f10 = tuple4f.f92851x;
        double d11 = this.m01;
        float f11 = tuple4f.f92852y;
        double d12 = (d10 * f10) + (d11 * f11);
        double d13 = this.m02;
        float f12 = tuple4f.f92853z;
        double d14 = d12 + (d13 * f12);
        double d15 = this.m03;
        float f13 = tuple4f.f92850w;
        float f14 = (float) (d14 + (d15 * f13));
        float f15 = (float) ((this.m10 * f10) + (this.m11 * f11) + (this.m12 * f12) + (this.m13 * f13));
        float f16 = (float) ((this.m20 * f10) + (this.m21 * f11) + (this.m22 * f12) + (this.m23 * f13));
        tuple4f.f92850w = (float) ((this.m30 * f10) + (this.m31 * f11) + (this.m32 * f12) + (this.m33 * f13));
        tuple4f.f92851x = f14;
        tuple4f.f92852y = f15;
        tuple4f.f92853z = f16;
    }

    public final double get(Matrix3d matrix3d, Vector3d vector3d) {
        double[] dArr = new double[9];
        double[] dArr2 = new double[3];
        getScaleRotate(dArr2, dArr);
        matrix3d.m00 = dArr[0];
        matrix3d.m01 = dArr[1];
        matrix3d.m02 = dArr[2];
        matrix3d.m10 = dArr[3];
        matrix3d.m11 = dArr[4];
        matrix3d.m12 = dArr[5];
        matrix3d.m20 = dArr[6];
        matrix3d.m21 = dArr[7];
        matrix3d.m22 = dArr[8];
        vector3d.f92833x = this.m03;
        vector3d.f92834y = this.m13;
        vector3d.f92835z = this.m23;
        return Matrix3d.max3(dArr2);
    }

    public final void set(Quat4d quat4d) {
        double d10 = quat4d.f92848y;
        double d11 = quat4d.f92849z;
        this.m00 = (1.0d - ((d10 * 2.0d) * d10)) - ((d11 * 2.0d) * d11);
        double d12 = quat4d.f92847x;
        double d13 = quat4d.f92846w;
        this.m10 = ((d12 * d10) + (d13 * d11)) * 2.0d;
        this.m20 = ((d12 * d11) - (d13 * d10)) * 2.0d;
        this.m01 = ((d12 * d10) - (d13 * d11)) * 2.0d;
        this.m11 = (1.0d - ((d12 * 2.0d) * d12)) - ((d11 * 2.0d) * d11);
        this.m21 = ((d10 * d11) + (d13 * d12)) * 2.0d;
        this.m02 = ((d12 * d11) + (d13 * d10)) * 2.0d;
        this.m12 = ((d11 * d10) - (d13 * d12)) * 2.0d;
        this.m22 = (1.0d - ((d12 * 2.0d) * d12)) - ((2.0d * d10) * d10);
        this.m03 = 0.0d;
        this.m13 = 0.0d;
        this.m23 = 0.0d;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void setRotation(Quat4f quat4f) {
        double[] dArr = new double[3];
        getScaleRotate(dArr, new double[9]);
        float f10 = quat4f.f92852y;
        float f11 = quat4f.f92853z;
        double d10 = dArr[0];
        this.m00 = ((1.0d - ((f10 * 2.0f) * f10)) - ((f11 * 2.0f) * f11)) * d10;
        float f12 = quat4f.f92851x;
        float f13 = quat4f.f92850w;
        this.m10 = ((f12 * f10) + (f13 * f11)) * 2.0d * d10;
        this.m20 = ((f12 * f11) - (f13 * f10)) * 2.0d * d10;
        double d11 = dArr[1];
        this.m01 = ((f12 * f10) - (f13 * f11)) * 2.0d * d11;
        this.m11 = ((1.0d - ((f12 * 2.0f) * f12)) - ((f11 * 2.0f) * f11)) * d11;
        this.m21 = ((f10 * f11) + (f13 * f12)) * 2.0d * d11;
        double d12 = dArr[2];
        this.m02 = ((f12 * f11) + (f13 * f10)) * 2.0d * d12;
        this.m12 = ((f11 * f10) - (f13 * f12)) * 2.0d * d12;
        this.m22 = ((1.0d - ((f12 * 2.0f) * f12)) - ((2.0f * f10) * f10)) * d12;
    }

    public final void transform(Point3d point3d, Point3d point3d2) {
        double d10 = this.m00;
        double d11 = point3d.f92833x;
        double d12 = this.m01;
        double d13 = point3d.f92834y;
        double d14 = (d10 * d11) + (d12 * d13);
        double d15 = this.m02;
        double d16 = point3d.f92835z;
        double d17 = d14 + (d15 * d16) + this.m03;
        double d18 = (this.m10 * d11) + (this.m11 * d13) + (this.m12 * d16) + this.m13;
        point3d2.f92835z = (this.m20 * d11) + (this.m21 * d13) + (this.m22 * d16) + this.m23;
        point3d2.f92833x = d17;
        point3d2.f92834y = d18;
    }

    public final void add(Matrix4d matrix4d, Matrix4d matrix4d2) {
        this.m00 = matrix4d.m00 + matrix4d2.m00;
        this.m01 = matrix4d.m01 + matrix4d2.m01;
        this.m02 = matrix4d.m02 + matrix4d2.m02;
        this.m03 = matrix4d.m03 + matrix4d2.m03;
        this.m10 = matrix4d.m10 + matrix4d2.m10;
        this.m11 = matrix4d.m11 + matrix4d2.m11;
        this.m12 = matrix4d.m12 + matrix4d2.m12;
        this.m13 = matrix4d.m13 + matrix4d2.m13;
        this.m20 = matrix4d.m20 + matrix4d2.m20;
        this.m21 = matrix4d.m21 + matrix4d2.m21;
        this.m22 = matrix4d.m22 + matrix4d2.m22;
        this.m23 = matrix4d.m23 + matrix4d2.m23;
        this.m30 = matrix4d.m30 + matrix4d2.m30;
        this.m31 = matrix4d.m31 + matrix4d2.m31;
        this.m32 = matrix4d.m32 + matrix4d2.m32;
        this.m33 = matrix4d.m33 + matrix4d2.m33;
    }

    public final void mul(Matrix4d matrix4d) {
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
        double d64 = this.m33;
        this.m00 = d19;
        this.m01 = d27;
        this.m02 = d35;
        this.m03 = d43;
        this.m10 = d48;
        this.m11 = d49;
        this.m12 = d50;
        this.m13 = d51;
        this.m20 = d57;
        this.m21 = d58;
        this.m22 = d59;
        this.m23 = d60;
        this.m30 = (d61 * d11) + (d13 * d62) + (d15 * d63) + (d64 * d18);
        this.m31 = (d20 * d61) + (d22 * d62) + (d63 * d24) + (d64 * d26);
        this.m32 = (d61 * d28) + (d62 * d30) + (d63 * d32) + (d64 * d34);
        this.m33 = (d61 * d36) + (d62 * d38) + (d63 * d40) + (d64 * d42);
    }

    public final void transform(Point3d point3d) {
        double d10 = this.m00;
        double d11 = point3d.f92833x;
        double d12 = this.m01;
        double d13 = point3d.f92834y;
        double d14 = (d10 * d11) + (d12 * d13);
        double d15 = this.m02;
        double d16 = point3d.f92835z;
        double d17 = d14 + (d15 * d16) + this.m03;
        double d18 = (this.m10 * d11) + (this.m11 * d13) + (this.m12 * d16) + this.m13;
        point3d.f92835z = (this.m20 * d11) + (this.m21 * d13) + (this.m22 * d16) + this.m23;
        point3d.f92833x = d17;
        point3d.f92834y = d18;
    }

    public Matrix4d(Quat4d quat4d, Vector3d vector3d, double d10) {
        double d11 = quat4d.f92848y;
        double d12 = quat4d.f92849z;
        this.m00 = ((1.0d - ((d11 * 2.0d) * d11)) - ((d12 * 2.0d) * d12)) * d10;
        double d13 = quat4d.f92847x;
        double d14 = quat4d.f92846w;
        this.m10 = ((d13 * d11) + (d14 * d12)) * 2.0d * d10;
        this.m20 = ((d13 * d12) - (d14 * d11)) * 2.0d * d10;
        this.m01 = ((d13 * d11) - (d14 * d12)) * 2.0d * d10;
        this.m11 = ((1.0d - ((d13 * 2.0d) * d13)) - ((d12 * 2.0d) * d12)) * d10;
        this.m21 = ((d11 * d12) + (d14 * d13)) * 2.0d * d10;
        this.m02 = ((d13 * d12) + (d14 * d11)) * 2.0d * d10;
        this.m12 = d10 * ((d12 * d11) - (d14 * d13)) * 2.0d;
        this.m22 = d10 * ((1.0d - ((d13 * 2.0d) * d13)) - ((2.0d * d11) * d11));
        this.m03 = vector3d.f92833x;
        this.m13 = vector3d.f92834y;
        this.m23 = vector3d.f92835z;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void setColumn(int i10, double[] dArr) {
        if (i10 == 0) {
            this.m00 = dArr[0];
            this.m10 = dArr[1];
            this.m20 = dArr[2];
            this.m30 = dArr[3];
            return;
        }
        if (i10 == 1) {
            this.m01 = dArr[0];
            this.m11 = dArr[1];
            this.m21 = dArr[2];
            this.m31 = dArr[3];
            return;
        }
        if (i10 == 2) {
            this.m02 = dArr[0];
            this.m12 = dArr[1];
            this.m22 = dArr[2];
            this.m32 = dArr[3];
            return;
        }
        if (i10 == 3) {
            this.m03 = dArr[0];
            this.m13 = dArr[1];
            this.m23 = dArr[2];
            this.m33 = dArr[3];
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d7"));
    }

    public final void setRow(int i10, double[] dArr) {
        if (i10 == 0) {
            this.m00 = dArr[0];
            this.m01 = dArr[1];
            this.m02 = dArr[2];
            this.m03 = dArr[3];
            return;
        }
        if (i10 == 1) {
            this.m10 = dArr[0];
            this.m11 = dArr[1];
            this.m12 = dArr[2];
            this.m13 = dArr[3];
            return;
        }
        if (i10 == 2) {
            this.m20 = dArr[0];
            this.m21 = dArr[1];
            this.m22 = dArr[2];
            this.m23 = dArr[3];
            return;
        }
        if (i10 == 3) {
            this.m30 = dArr[0];
            this.m31 = dArr[1];
            this.m32 = dArr[2];
            this.m33 = dArr[3];
            return;
        }
        throw new ArrayIndexOutOfBoundsException(VecMathI18N.getString("Matrix4d4"));
    }

    public final void setRotation(Quat4d quat4d) {
        double[] dArr = new double[3];
        getScaleRotate(dArr, new double[9]);
        double d10 = quat4d.f92848y;
        double d11 = quat4d.f92849z;
        double d12 = dArr[0];
        this.m00 = ((1.0d - ((d10 * 2.0d) * d10)) - ((d11 * 2.0d) * d11)) * d12;
        double d13 = quat4d.f92847x;
        double d14 = quat4d.f92846w;
        this.m10 = ((d13 * d10) + (d14 * d11)) * 2.0d * d12;
        this.m20 = ((d13 * d11) - (d14 * d10)) * 2.0d * d12;
        double d15 = dArr[1];
        this.m01 = ((d13 * d10) - (d14 * d11)) * 2.0d * d15;
        this.m11 = ((1.0d - ((d13 * 2.0d) * d13)) - ((d11 * 2.0d) * d11)) * d15;
        this.m21 = ((d10 * d11) + (d14 * d13)) * 2.0d * d15;
        double d16 = dArr[2];
        this.m02 = ((d13 * d11) + (d14 * d10)) * 2.0d * d16;
        this.m12 = ((d11 * d10) - (d14 * d13)) * 2.0d * d16;
        this.m22 = ((1.0d - ((d13 * 2.0d) * d13)) - ((2.0d * d10) * d10)) * d16;
    }

    public final void transform(Point3f point3f, Point3f point3f2) {
        double d10 = this.m00;
        float f10 = point3f.f92836x;
        double d11 = this.m01;
        float f11 = point3f.f92837y;
        double d12 = (d10 * f10) + (d11 * f11);
        double d13 = this.m02;
        float f12 = point3f.f92838z;
        float f13 = (float) (d12 + (d13 * f12) + this.m03);
        float f14 = (float) ((this.m10 * f10) + (this.m11 * f11) + (this.m12 * f12) + this.m13);
        point3f2.f92838z = (float) ((this.m20 * f10) + (this.m21 * f11) + (this.m22 * f12) + this.m23);
        point3f2.f92836x = f13;
        point3f2.f92837y = f14;
    }

    public final double get(Matrix3f matrix3f, Vector3d vector3d) {
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
        vector3d.f92833x = this.m03;
        vector3d.f92834y = this.m13;
        vector3d.f92835z = this.m23;
        return Matrix3d.max3(dArr2);
    }

    public final void set(AxisAngle4d axisAngle4d) {
        double d10;
        double d11 = axisAngle4d.f92818x;
        double d12 = axisAngle4d.f92819y;
        double d13 = (d11 * d11) + (d12 * d12);
        double d14 = axisAngle4d.f92820z;
        double sqrt = Math.sqrt(d13 + (d14 * d14));
        if (sqrt < 1.0E-10d) {
            this.m00 = 1.0d;
            this.m01 = 0.0d;
            this.m02 = 0.0d;
            this.m10 = 0.0d;
            this.m11 = 1.0d;
            this.m12 = 0.0d;
            this.m20 = 0.0d;
            this.m21 = 0.0d;
            this.m22 = 1.0d;
            d10 = 0.0d;
        } else {
            double d15 = 1.0d / sqrt;
            double d16 = axisAngle4d.f92818x * d15;
            double d17 = axisAngle4d.f92819y * d15;
            double d18 = axisAngle4d.f92820z * d15;
            double sin = Math.sin(axisAngle4d.angle);
            double cos = Math.cos(axisAngle4d.angle);
            double d19 = 1.0d - cos;
            double d20 = d17 * d18;
            this.m00 = (d19 * d16 * d16) + cos;
            double d21 = d16 * d17 * d19;
            double d22 = sin * d18;
            this.m01 = d21 - d22;
            double d23 = d16 * d18 * d19;
            double d24 = sin * d17;
            this.m02 = d23 + d24;
            this.m10 = d21 + d22;
            this.m11 = (d19 * d17 * d17) + cos;
            double d25 = d20 * d19;
            double d26 = sin * d16;
            this.m12 = d25 - d26;
            this.m20 = d23 - d24;
            this.m21 = d25 + d26;
            this.m22 = (d19 * d18 * d18) + cos;
            d10 = 0.0d;
        }
        this.m03 = d10;
        this.m13 = d10;
        this.m23 = d10;
        this.m30 = d10;
        this.m31 = d10;
        this.m32 = d10;
        this.m33 = 1.0d;
    }

    public final void mul(Matrix4d matrix4d, Matrix4d matrix4d2) {
        if (this != matrix4d && this != matrix4d2) {
            double d10 = matrix4d.m00 * matrix4d2.m00;
            double d11 = matrix4d.m01;
            double d12 = matrix4d2.m10;
            double d13 = matrix4d.m02;
            double d14 = matrix4d2.m20;
            double d15 = d10 + (d11 * d12) + (d13 * d14);
            double d16 = matrix4d.m03;
            double d17 = matrix4d2.m30;
            this.m00 = d15 + (d16 * d17);
            double d18 = matrix4d.m00;
            double d19 = matrix4d2.m01 * d18;
            double d20 = matrix4d2.m11;
            double d21 = d19 + (d11 * d20);
            double d22 = matrix4d2.m21;
            double d23 = d21 + (d13 * d22);
            double d24 = matrix4d2.m31;
            this.m01 = d23 + (d16 * d24);
            double d25 = matrix4d2.m02 * d18;
            double d26 = matrix4d.m01;
            double d27 = matrix4d2.m12;
            double d28 = d25 + (d26 * d27);
            double d29 = matrix4d2.m22;
            double d30 = d28 + (d13 * d29);
            double d31 = matrix4d2.m32;
            this.m02 = d30 + (d16 * d31);
            double d32 = d18 * matrix4d2.m03;
            double d33 = matrix4d2.m13;
            double d34 = d32 + (d26 * d33);
            double d35 = matrix4d.m02;
            double d36 = matrix4d2.m23;
            double d37 = d34 + (d35 * d36);
            double d38 = matrix4d2.m33;
            this.m03 = d37 + (d16 * d38);
            double d39 = matrix4d.m10;
            double d40 = matrix4d2.m00;
            double d41 = d39 * d40;
            double d42 = matrix4d.m11;
            double d43 = matrix4d.m12;
            double d44 = d41 + (d12 * d42) + (d43 * d14);
            double d45 = matrix4d.m13;
            this.m10 = d44 + (d45 * d17);
            double d46 = matrix4d.m10;
            double d47 = matrix4d2.m01;
            this.m11 = (d46 * d47) + (d42 * d20) + (d43 * d22) + (d45 * d24);
            double d48 = matrix4d2.m02;
            double d49 = d46 * d48;
            double d50 = matrix4d.m11;
            this.m12 = d49 + (d27 * d50) + (d43 * d29) + (d45 * d31);
            double d51 = matrix4d2.m03;
            this.m13 = (d46 * d51) + (d50 * d33) + (matrix4d.m12 * d36) + (d45 * d38);
            double d52 = matrix4d.m20 * d40;
            double d53 = matrix4d.m21;
            double d54 = matrix4d2.m10;
            double d55 = d52 + (d53 * d54);
            double d56 = matrix4d.m22;
            double d57 = matrix4d.m23;
            this.m20 = d55 + (d14 * d56) + (d57 * d17);
            double d58 = matrix4d.m20;
            double d59 = d58 * d47;
            double d60 = matrix4d2.m11;
            this.m21 = d59 + (d53 * d60) + (d56 * d22) + (d57 * d24);
            double d61 = d58 * d48;
            double d62 = matrix4d.m21;
            double d63 = matrix4d2.m12;
            this.m22 = d61 + (d62 * d63) + (d56 * d29) + (d57 * d31);
            double d64 = matrix4d2.m13;
            this.m23 = (d58 * d51) + (d62 * d64) + (matrix4d.m22 * d36) + (d57 * d38);
            double d65 = matrix4d.m30 * d40;
            double d66 = matrix4d.m31;
            double d67 = matrix4d.m32;
            double d68 = d65 + (d66 * d54) + (matrix4d2.m20 * d67);
            double d69 = matrix4d.m33;
            this.m30 = d68 + (d17 * d69);
            double d70 = matrix4d.m30;
            this.m31 = (d70 * d47) + (d66 * d60) + (matrix4d2.m21 * d67) + (d69 * d24);
            double d71 = matrix4d.m31;
            this.m32 = (d70 * d48) + (d63 * d71) + (d67 * matrix4d2.m22) + (d69 * d31);
            this.m33 = (d70 * d51) + (d71 * d64) + (matrix4d.m32 * matrix4d2.m23) + (d69 * d38);
            return;
        }
        double d72 = matrix4d.m00;
        double d73 = matrix4d2.m00;
        double d74 = matrix4d.m01;
        double d75 = matrix4d2.m10;
        double d76 = (d72 * d73) + (d74 * d75);
        double d77 = matrix4d.m02;
        double d78 = matrix4d2.m20;
        double d79 = d76 + (d77 * d78);
        double d80 = matrix4d.m03;
        double d81 = matrix4d2.m30;
        double d82 = d79 + (d80 * d81);
        double d83 = matrix4d2.m01;
        double d84 = d72 * d83;
        double d85 = matrix4d2.m11;
        double d86 = d84 + (d74 * d85);
        double d87 = matrix4d2.m21;
        double d88 = d86 + (d77 * d87);
        double d89 = matrix4d2.m31;
        double d90 = d88 + (d80 * d89);
        double d91 = matrix4d2.m02;
        double d92 = d72 * d91;
        double d93 = matrix4d2.m12;
        double d94 = d92 + (d74 * d93);
        double d95 = matrix4d2.m22;
        double d96 = d94 + (d77 * d95);
        double d97 = matrix4d2.m32;
        double d98 = d96 + (d80 * d97);
        double d99 = matrix4d2.m03;
        double d100 = d72 * d99;
        double d101 = matrix4d2.m13;
        double d102 = d100 + (d74 * d101);
        double d103 = matrix4d2.m23;
        double d104 = d102 + (d77 * d103);
        double d105 = matrix4d2.m33;
        double d106 = d104 + (d80 * d105);
        double d107 = matrix4d.m10;
        double d108 = matrix4d.m11;
        double d109 = matrix4d.m12;
        double d110 = matrix4d.m13;
        double d111 = (d107 * d73) + (d108 * d75) + (d109 * d78) + (d110 * d81);
        double d112 = (d107 * d83) + (d108 * d85) + (d109 * d87) + (d110 * d89);
        double d113 = (d107 * d91) + (d108 * d93) + (d109 * d95) + (d110 * d97);
        double d114 = (d107 * d99) + (d108 * d101) + (d109 * d103) + (d110 * d105);
        double d115 = matrix4d.m20;
        double d116 = matrix4d.m21;
        double d117 = (d115 * d73) + (d116 * d75);
        double d118 = matrix4d.m22;
        double d119 = matrix4d.m23;
        double d120 = d117 + (d118 * d78) + (d119 * d81);
        double d121 = (d115 * d83) + (d116 * d85) + (d118 * d87) + (d119 * d89);
        double d122 = (d115 * d91) + (d116 * d93) + (d118 * d95) + (d119 * d97);
        double d123 = (d115 * d99) + (d116 * d101) + (d118 * d103) + (d119 * d105);
        double d124 = matrix4d.m30;
        double d125 = matrix4d.m31;
        double d126 = matrix4d.m32;
        double d127 = matrix4d.m33;
        double d128 = (d124 * d73) + (d75 * d125) + (d78 * d126) + (d127 * d81);
        this.m00 = d82;
        this.m01 = d90;
        this.m02 = d98;
        this.m03 = d106;
        this.m10 = d111;
        this.m11 = d112;
        this.m12 = d113;
        this.m13 = d114;
        this.m20 = d120;
        this.m21 = d121;
        this.m22 = d122;
        this.m23 = d123;
        this.m30 = d128;
        this.m31 = (d124 * d83) + (d125 * d85) + (d126 * d87) + (d127 * d89);
        this.m32 = (d124 * d91) + (d125 * d93) + (d126 * d95) + (d127 * d97);
        this.m33 = (d124 * d99) + (d125 * d101) + (d126 * d103) + (d127 * d105);
    }

    public final void transform(Point3f point3f) {
        double d10 = this.m00;
        float f10 = point3f.f92836x;
        double d11 = this.m01;
        float f11 = point3f.f92837y;
        double d12 = (d10 * f10) + (d11 * f11);
        double d13 = this.m02;
        float f12 = point3f.f92838z;
        float f13 = (float) (d12 + (d13 * f12) + this.m03);
        float f14 = (float) ((this.m10 * f10) + (this.m11 * f11) + (this.m12 * f12) + this.m13);
        point3f.f92838z = (float) ((this.m20 * f10) + (this.m21 * f11) + (this.m22 * f12) + this.m23);
        point3f.f92836x = f13;
        point3f.f92837y = f14;
    }

    public final void add(Matrix4d matrix4d) {
        this.m00 += matrix4d.m00;
        this.m01 += matrix4d.m01;
        this.m02 += matrix4d.m02;
        this.m03 += matrix4d.m03;
        this.m10 += matrix4d.m10;
        this.m11 += matrix4d.m11;
        this.m12 += matrix4d.m12;
        this.m13 += matrix4d.m13;
        this.m20 += matrix4d.m20;
        this.m21 += matrix4d.m21;
        this.m22 += matrix4d.m22;
        this.m23 += matrix4d.m23;
        this.m30 += matrix4d.m30;
        this.m31 += matrix4d.m31;
        this.m32 += matrix4d.m32;
        this.m33 += matrix4d.m33;
    }

    public final void setRotation(AxisAngle4d axisAngle4d) {
        double[] dArr = new double[3];
        getScaleRotate(dArr, new double[9]);
        double d10 = axisAngle4d.f92818x;
        double d11 = axisAngle4d.f92819y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = axisAngle4d.f92820z;
        double sqrt = 1.0d / Math.sqrt(d12 + (d13 * d13));
        double d14 = axisAngle4d.f92818x * sqrt;
        double d15 = axisAngle4d.f92819y * sqrt;
        double d16 = axisAngle4d.f92820z * sqrt;
        double sin = Math.sin(axisAngle4d.angle);
        double cos = Math.cos(axisAngle4d.angle);
        double d17 = 1.0d - cos;
        double d18 = axisAngle4d.f92818x;
        double d19 = axisAngle4d.f92820z;
        double d20 = d18 * d19;
        double d21 = axisAngle4d.f92819y;
        double d22 = d18 * d21;
        double d23 = d21 * d19;
        double d24 = dArr[0];
        this.m00 = ((d17 * d14 * d14) + cos) * d24;
        double d25 = d22 * d17;
        double d26 = sin * d16;
        double d27 = dArr[1];
        this.m01 = (d25 - d26) * d27;
        double d28 = d20 * d17;
        double d29 = sin * d15;
        double d30 = dArr[2];
        this.m02 = (d28 + d29) * d30;
        this.m10 = (d25 + d26) * d24;
        this.m11 = ((d17 * d15 * d15) + cos) * d27;
        double d31 = d23 * d17;
        double d32 = sin * d14;
        this.m12 = (d31 - d32) * d30;
        this.m20 = (d28 - d29) * d24;
        this.m21 = (d31 + d32) * d27;
        this.m22 = ((d17 * d16 * d16) + cos) * d30;
    }

    public final void transform(Vector3d vector3d, Vector3d vector3d2) {
        double d10 = this.m00;
        double d11 = vector3d.f92833x;
        double d12 = this.m01;
        double d13 = vector3d.f92834y;
        double d14 = (d10 * d11) + (d12 * d13);
        double d15 = this.m02;
        double d16 = vector3d.f92835z;
        double d17 = d14 + (d15 * d16);
        double d18 = (this.m10 * d11) + (this.m11 * d13) + (this.m12 * d16);
        vector3d2.f92835z = (this.m20 * d11) + (this.m21 * d13) + (this.m22 * d16);
        vector3d2.f92833x = d17;
        vector3d2.f92834y = d18;
    }

    public Matrix4d(Quat4f quat4f, Vector3d vector3d, double d10) {
        float f10 = quat4f.f92852y;
        float f11 = quat4f.f92853z;
        this.m00 = ((1.0d - ((f10 * 2.0d) * f10)) - ((f11 * 2.0d) * f11)) * d10;
        float f12 = quat4f.f92851x;
        float f13 = quat4f.f92850w;
        this.m10 = ((f12 * f10) + (f13 * f11)) * 2.0d * d10;
        this.m20 = ((f12 * f11) - (f13 * f10)) * 2.0d * d10;
        this.m01 = ((f12 * f10) - (f13 * f11)) * 2.0d * d10;
        this.m11 = d10 * ((1.0d - ((f12 * 2.0d) * f12)) - ((f11 * 2.0d) * f11));
        this.m21 = ((f10 * f11) + (f13 * f12)) * 2.0d * d10;
        this.m02 = ((f12 * f11) + (f13 * f10)) * 2.0d * d10;
        this.m12 = ((f11 * f10) - (f13 * f12)) * 2.0d * d10;
        this.m22 = d10 * ((1.0d - ((f12 * 2.0d) * f12)) - ((f10 * 2.0d) * f10));
        this.m03 = vector3d.f92833x;
        this.m13 = vector3d.f92834y;
        this.m23 = vector3d.f92835z;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void transform(Vector3d vector3d) {
        double d10 = this.m00;
        double d11 = vector3d.f92833x;
        double d12 = this.m01;
        double d13 = vector3d.f92834y;
        double d14 = (d10 * d11) + (d12 * d13);
        double d15 = this.m02;
        double d16 = vector3d.f92835z;
        double d17 = d14 + (d15 * d16);
        double d18 = (this.m10 * d11) + (this.m11 * d13) + (this.m12 * d16);
        vector3d.f92835z = (this.m20 * d11) + (this.m21 * d13) + (this.m22 * d16);
        vector3d.f92833x = d17;
        vector3d.f92834y = d18;
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

    public final void transform(Vector3f vector3f, Vector3f vector3f2) {
        double d10 = this.m00;
        float f10 = vector3f.f92836x;
        double d11 = this.m01;
        float f11 = vector3f.f92837y;
        double d12 = (d10 * f10) + (d11 * f11);
        double d13 = this.m02;
        float f12 = vector3f.f92838z;
        float f13 = (float) ((this.m10 * f10) + (this.m11 * f11) + (this.m12 * f12));
        vector3f2.f92838z = (float) ((this.m20 * f10) + (this.m21 * f11) + (this.m22 * f12));
        vector3f2.f92836x = (float) (d12 + (d13 * f12));
        vector3f2.f92837y = f13;
    }

    public final void transform(Vector3f vector3f) {
        double d10 = this.m00;
        float f10 = vector3f.f92836x;
        double d11 = this.m01;
        float f11 = vector3f.f92837y;
        double d12 = (d10 * f10) + (d11 * f11);
        double d13 = this.m02;
        float f12 = vector3f.f92838z;
        float f13 = (float) ((this.m10 * f10) + (this.m11 * f11) + (this.m12 * f12));
        vector3f.f92838z = (float) ((this.m20 * f10) + (this.m21 * f11) + (this.m22 * f12));
        vector3f.f92836x = (float) (d12 + (d13 * f12));
        vector3f.f92837y = f13;
    }

    public Matrix4d(Matrix4d matrix4d) {
        this.m00 = matrix4d.m00;
        this.m01 = matrix4d.m01;
        this.m02 = matrix4d.m02;
        this.m03 = matrix4d.m03;
        this.m10 = matrix4d.m10;
        this.m11 = matrix4d.m11;
        this.m12 = matrix4d.m12;
        this.m13 = matrix4d.m13;
        this.m20 = matrix4d.m20;
        this.m21 = matrix4d.m21;
        this.m22 = matrix4d.m22;
        this.m23 = matrix4d.m23;
        this.m30 = matrix4d.m30;
        this.m31 = matrix4d.m31;
        this.m32 = matrix4d.m32;
        this.m33 = matrix4d.m33;
    }

    public final void set(Quat4f quat4f) {
        float f10 = quat4f.f92852y;
        float f11 = quat4f.f92853z;
        this.m00 = (1.0d - ((f10 * 2.0d) * f10)) - ((f11 * 2.0d) * f11);
        float f12 = quat4f.f92851x;
        float f13 = quat4f.f92850w;
        this.m10 = ((f12 * f10) + (f13 * f11)) * 2.0d;
        this.m20 = ((f12 * f11) - (f13 * f10)) * 2.0d;
        this.m01 = ((f12 * f10) - (f13 * f11)) * 2.0d;
        this.m11 = (1.0d - ((f12 * 2.0d) * f12)) - ((f11 * 2.0d) * f11);
        this.m21 = ((f10 * f11) + (f13 * f12)) * 2.0d;
        this.m02 = ((f12 * f11) + (f13 * f10)) * 2.0d;
        this.m12 = ((f11 * f10) - (f13 * f12)) * 2.0d;
        this.m22 = (1.0d - ((f12 * 2.0d) * f12)) - ((f10 * 2.0d) * f10);
        this.m03 = 0.0d;
        this.m13 = 0.0d;
        this.m23 = 0.0d;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void get(Quat4d quat4d) {
        double[] dArr = new double[9];
        getScaleRotate(new double[3], dArr);
        double d10 = dArr[0] + 1.0d;
        double d11 = dArr[4];
        double d12 = dArr[8];
        double d13 = (d10 + d11 + d12) * 0.25d;
        if ((d13 < 0.0d ? -d13 : d13) >= 1.0E-30d) {
            double sqrt = Math.sqrt(d13);
            quat4d.f92846w = sqrt;
            double d14 = 0.25d / sqrt;
            quat4d.f92847x = (dArr[7] - dArr[5]) * d14;
            quat4d.f92848y = (dArr[2] - dArr[6]) * d14;
            quat4d.f92849z = (dArr[3] - dArr[1]) * d14;
            return;
        }
        quat4d.f92846w = 0.0d;
        double d15 = (d11 + d12) * (-0.5d);
        if ((d15 < 0.0d ? -d15 : d15) >= 1.0E-30d) {
            double sqrt2 = Math.sqrt(d15);
            quat4d.f92847x = sqrt2;
            double d16 = 0.5d / sqrt2;
            quat4d.f92848y = dArr[3] * d16;
            quat4d.f92849z = dArr[6] * d16;
            return;
        }
        quat4d.f92847x = 0.0d;
        double d17 = (1.0d - d12) * 0.5d;
        if ((d17 < 0.0d ? -d17 : d17) >= 1.0E-30d) {
            double sqrt3 = Math.sqrt(d17);
            quat4d.f92848y = sqrt3;
            quat4d.f92849z = dArr[7] / (sqrt3 * 2.0d);
        } else {
            quat4d.f92848y = 0.0d;
            quat4d.f92849z = 1.0d;
        }
    }

    public Matrix4d(Matrix4f matrix4f) {
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

    public final void set(AxisAngle4f axisAngle4f) {
        double d10;
        float f10 = axisAngle4f.f92821x;
        float f11 = axisAngle4f.f92822y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = axisAngle4f.f92823z;
        double sqrt = Math.sqrt(f12 + (f13 * f13));
        if (sqrt < 1.0E-10d) {
            this.m00 = 1.0d;
            this.m01 = 0.0d;
            this.m02 = 0.0d;
            this.m10 = 0.0d;
            this.m11 = 1.0d;
            this.m12 = 0.0d;
            this.m20 = 0.0d;
            this.m21 = 0.0d;
            this.m22 = 1.0d;
            d10 = 0.0d;
        } else {
            double d11 = 1.0d / sqrt;
            double d12 = axisAngle4f.f92821x * d11;
            double d13 = axisAngle4f.f92822y * d11;
            double d14 = axisAngle4f.f92823z * d11;
            double sin = Math.sin(axisAngle4f.angle);
            double cos = Math.cos(axisAngle4f.angle);
            double d15 = 1.0d - cos;
            double d16 = d13 * d14;
            this.m00 = (d15 * d12 * d12) + cos;
            double d17 = d12 * d13 * d15;
            double d18 = sin * d14;
            this.m01 = d17 - d18;
            double d19 = d12 * d14 * d15;
            double d20 = sin * d13;
            this.m02 = d19 + d20;
            this.m10 = d17 + d18;
            this.m11 = (d15 * d13 * d13) + cos;
            double d21 = d16 * d15;
            double d22 = sin * d12;
            this.m12 = d21 - d22;
            this.m20 = d19 - d20;
            this.m21 = d21 + d22;
            this.m22 = (d15 * d14 * d14) + cos;
            d10 = 0.0d;
        }
        this.m03 = d10;
        this.m13 = d10;
        this.m23 = d10;
        this.m30 = d10;
        this.m31 = d10;
        this.m32 = d10;
        this.m33 = 1.0d;
    }

    public final void get(Vector3d vector3d) {
        vector3d.f92833x = this.m03;
        vector3d.f92834y = this.m13;
        vector3d.f92835z = this.m23;
    }

    public Matrix4d(Matrix3f matrix3f, Vector3d vector3d, double d10) {
        this.m00 = matrix3f.m00 * d10;
        this.m01 = matrix3f.m01 * d10;
        this.m02 = matrix3f.m02 * d10;
        this.m03 = vector3d.f92833x;
        this.m10 = matrix3f.m10 * d10;
        this.m11 = matrix3f.m11 * d10;
        this.m12 = matrix3f.m12 * d10;
        this.m13 = vector3d.f92834y;
        this.m20 = matrix3f.m20 * d10;
        this.m21 = matrix3f.m21 * d10;
        this.m22 = matrix3f.m22 * d10;
        this.m23 = vector3d.f92835z;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void set(Quat4d quat4d, Vector3d vector3d, double d10) {
        double d11 = quat4d.f92848y;
        double d12 = quat4d.f92849z;
        this.m00 = ((1.0d - ((d11 * 2.0d) * d11)) - ((d12 * 2.0d) * d12)) * d10;
        double d13 = quat4d.f92847x;
        double d14 = quat4d.f92846w;
        this.m10 = ((d13 * d11) + (d14 * d12)) * 2.0d * d10;
        this.m20 = ((d13 * d12) - (d14 * d11)) * 2.0d * d10;
        this.m01 = ((d13 * d11) - (d14 * d12)) * 2.0d * d10;
        this.m11 = ((1.0d - ((d13 * 2.0d) * d13)) - ((d12 * 2.0d) * d12)) * d10;
        this.m21 = ((d11 * d12) + (d14 * d13)) * 2.0d * d10;
        this.m02 = ((d13 * d12) + (d14 * d11)) * 2.0d * d10;
        this.m12 = d10 * ((d12 * d11) - (d14 * d13)) * 2.0d;
        this.m22 = d10 * ((1.0d - ((d13 * 2.0d) * d13)) - ((2.0d * d11) * d11));
        this.m03 = vector3d.f92833x;
        this.m13 = vector3d.f92834y;
        this.m23 = vector3d.f92835z;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public Matrix4d(Matrix3d matrix3d, Vector3d vector3d, double d10) {
        this.m00 = matrix3d.m00 * d10;
        this.m01 = matrix3d.m01 * d10;
        this.m02 = matrix3d.m02 * d10;
        this.m03 = vector3d.f92833x;
        this.m10 = matrix3d.m10 * d10;
        this.m11 = matrix3d.m11 * d10;
        this.m12 = matrix3d.m12 * d10;
        this.m13 = vector3d.f92834y;
        this.m20 = matrix3d.m20 * d10;
        this.m21 = matrix3d.m21 * d10;
        this.m22 = matrix3d.m22 * d10;
        this.m23 = vector3d.f92835z;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void set(Quat4f quat4f, Vector3d vector3d, double d10) {
        float f10 = quat4f.f92852y;
        float f11 = quat4f.f92853z;
        this.m00 = ((1.0d - ((f10 * 2.0d) * f10)) - ((f11 * 2.0d) * f11)) * d10;
        float f12 = quat4f.f92851x;
        float f13 = quat4f.f92850w;
        this.m10 = ((f12 * f10) + (f13 * f11)) * 2.0d * d10;
        this.m20 = ((f12 * f11) - (f13 * f10)) * 2.0d * d10;
        this.m01 = ((f12 * f10) - (f13 * f11)) * 2.0d * d10;
        this.m11 = d10 * ((1.0d - ((f12 * 2.0d) * f12)) - ((f11 * 2.0d) * f11));
        this.m21 = ((f10 * f11) + (f13 * f12)) * 2.0d * d10;
        this.m02 = ((f12 * f11) + (f13 * f10)) * 2.0d * d10;
        this.m12 = ((f11 * f10) - (f13 * f12)) * 2.0d * d10;
        this.m22 = d10 * ((1.0d - ((f12 * 2.0d) * f12)) - ((f10 * 2.0d) * f10));
        this.m03 = vector3d.f92833x;
        this.m13 = vector3d.f92834y;
        this.m23 = vector3d.f92835z;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public Matrix4d() {
        this.m00 = 0.0d;
        this.m01 = 0.0d;
        this.m02 = 0.0d;
        this.m03 = 0.0d;
        this.m10 = 0.0d;
        this.m11 = 0.0d;
        this.m12 = 0.0d;
        this.m13 = 0.0d;
        this.m20 = 0.0d;
        this.m21 = 0.0d;
        this.m22 = 0.0d;
        this.m23 = 0.0d;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 0.0d;
    }

    public final void set(Quat4f quat4f, Vector3f vector3f, float f10) {
        double d10 = f10;
        float f11 = quat4f.f92852y;
        float f12 = quat4f.f92853z;
        this.m00 = ((1.0d - ((f11 * 2.0d) * f11)) - ((f12 * 2.0d) * f12)) * d10;
        float f13 = quat4f.f92851x;
        float f14 = quat4f.f92850w;
        this.m10 = ((f13 * f11) + (f14 * f12)) * 2.0d * d10;
        this.m20 = ((f13 * f12) - (f14 * f11)) * 2.0d * d10;
        this.m01 = ((f13 * f11) - (f14 * f12)) * 2.0d * d10;
        this.m11 = ((1.0d - ((f13 * 2.0d) * f13)) - ((f12 * 2.0d) * f12)) * d10;
        this.m21 = ((f11 * f12) + (f14 * f13)) * 2.0d * d10;
        this.m02 = ((f13 * f12) + (f14 * f11)) * 2.0d * d10;
        this.m12 = ((f12 * f11) - (f14 * f13)) * 2.0d * d10;
        this.m22 = d10 * ((1.0d - ((f13 * 2.0d) * f13)) - ((f11 * 2.0d) * f11));
        this.m03 = vector3f.f92836x;
        this.m13 = vector3f.f92837y;
        this.m23 = vector3f.f92838z;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
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

    public final void set(Matrix4d matrix4d) {
        this.m00 = matrix4d.m00;
        this.m01 = matrix4d.m01;
        this.m02 = matrix4d.m02;
        this.m03 = matrix4d.m03;
        this.m10 = matrix4d.m10;
        this.m11 = matrix4d.m11;
        this.m12 = matrix4d.m12;
        this.m13 = matrix4d.m13;
        this.m20 = matrix4d.m20;
        this.m21 = matrix4d.m21;
        this.m22 = matrix4d.m22;
        this.m23 = matrix4d.m23;
        this.m30 = matrix4d.m30;
        this.m31 = matrix4d.m31;
        this.m32 = matrix4d.m32;
        this.m33 = matrix4d.m33;
    }

    public final void set(double d10) {
        this.m00 = d10;
        this.m01 = 0.0d;
        this.m02 = 0.0d;
        this.m03 = 0.0d;
        this.m10 = 0.0d;
        this.m11 = d10;
        this.m12 = 0.0d;
        this.m13 = 0.0d;
        this.m20 = 0.0d;
        this.m21 = 0.0d;
        this.m22 = d10;
        this.m23 = 0.0d;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void set(Vector3d vector3d) {
        this.m00 = 1.0d;
        this.m01 = 0.0d;
        this.m02 = 0.0d;
        this.m03 = vector3d.f92833x;
        this.m10 = 0.0d;
        this.m11 = 1.0d;
        this.m12 = 0.0d;
        this.m13 = vector3d.f92834y;
        this.m20 = 0.0d;
        this.m21 = 0.0d;
        this.m22 = 1.0d;
        this.m23 = vector3d.f92835z;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void set(double d10, Vector3d vector3d) {
        this.m00 = d10;
        this.m01 = 0.0d;
        this.m02 = 0.0d;
        this.m03 = vector3d.f92833x;
        this.m10 = 0.0d;
        this.m11 = d10;
        this.m12 = 0.0d;
        this.m13 = vector3d.f92834y;
        this.m20 = 0.0d;
        this.m21 = 0.0d;
        this.m22 = d10;
        this.m23 = vector3d.f92835z;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void set(Vector3d vector3d, double d10) {
        this.m00 = d10;
        this.m01 = 0.0d;
        this.m02 = 0.0d;
        this.m03 = vector3d.f92833x * d10;
        this.m10 = 0.0d;
        this.m11 = d10;
        this.m12 = 0.0d;
        this.m13 = vector3d.f92834y * d10;
        this.m20 = 0.0d;
        this.m21 = 0.0d;
        this.m22 = d10;
        this.m23 = d10 * vector3d.f92835z;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
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
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }

    public final void set(Matrix3d matrix3d, Vector3d vector3d, double d10) {
        this.m00 = matrix3d.m00 * d10;
        this.m01 = matrix3d.m01 * d10;
        this.m02 = matrix3d.m02 * d10;
        this.m03 = vector3d.f92833x;
        this.m10 = matrix3d.m10 * d10;
        this.m11 = matrix3d.m11 * d10;
        this.m12 = matrix3d.m12 * d10;
        this.m13 = vector3d.f92834y;
        this.m20 = matrix3d.m20 * d10;
        this.m21 = matrix3d.m21 * d10;
        this.m22 = matrix3d.m22 * d10;
        this.m23 = vector3d.f92835z;
        this.m30 = 0.0d;
        this.m31 = 0.0d;
        this.m32 = 0.0d;
        this.m33 = 1.0d;
    }
}
