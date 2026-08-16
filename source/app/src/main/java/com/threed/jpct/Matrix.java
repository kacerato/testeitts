package com.threed.jpct;

import android.util.FloatMath;
import java.io.Serializable;
import java.lang.reflect.Array;

public class Matrix implements Serializable {

    private static final float f83622pi = 3.1415927f;
    private static final float pih = 1.5707964f;
    private static final long serialVersionUID = 2;
    float[][] mat;
    private float[] mat0;
    private float[] mat1;
    private float[] mat2;
    private float[] mat3;
    private static Matrix globalTmpMat = new Matrix();
    private static final float spi = FloatMath.sin(3.1415927f);
    private static final float mpi = -3.1415927f;
    private static final float mspi = FloatMath.sin(mpi);
    private static final float cpi = FloatMath.cos(3.1415927f);
    private static final float mcpi = FloatMath.cos(mpi);
    private static final float spih = FloatMath.sin(1.5707964f);
    private static final float mpih = -1.5707964f;
    private static final float mspih = FloatMath.sin(mpih);
    private static final float cpih = FloatMath.cos(1.5707964f);
    private static final float mcpih = FloatMath.cos(mpih);
    private float lastRot = 0.0f;
    private float lastSin = 0.0f;
    private float lastCos = 1.0f;

    public Matrix() {
        float[][] fArr = (float[][]) Array.newInstance(Float.TYPE, 4, 4);
        this.mat = fArr;
        float[] fArr2 = fArr[0];
        this.mat0 = fArr2;
        float[] fArr3 = fArr[1];
        this.mat1 = fArr3;
        float[] fArr4 = fArr[2];
        this.mat2 = fArr4;
        float[] fArr5 = fArr[3];
        this.mat3 = fArr5;
        fArr2[0] = 1.0f;
        fArr3[1] = 1.0f;
        fArr4[2] = 1.0f;
        fArr5[3] = 1.0f;
    }

    public final Matrix cloneMatrix() {
        Matrix matrix = new Matrix();
        matrix.setTo(this);
        return matrix;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Matrix)) {
            return false;
        }
        Matrix matrix = (Matrix) obj;
        for (int i10 = 0; i10 < 4; i10++) {
            float[] fArr = matrix.mat[i10];
            float f10 = fArr[0];
            float[] fArr2 = this.mat[i10];
            if (f10 != fArr2[0] || fArr[1] != fArr2[1] || fArr[2] != fArr2[2] || fArr[3] != fArr2[3]) {
                return false;
            }
        }
        return true;
    }

    public final float[] fillDump(float[] fArr) {
        if (fArr == null) {
            fArr = new float[16];
        } else if (fArr.length != 16) {
            Logger.log("Dump array has to have a length of 16!", 0);
        }
        float[] fArr2 = this.mat0;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = fArr2[2];
        fArr[3] = fArr2[3];
        float[] fArr3 = this.mat1;
        fArr[4] = fArr3[0];
        fArr[5] = fArr3[1];
        fArr[6] = fArr3[2];
        fArr[7] = fArr3[3];
        float[] fArr4 = this.mat2;
        fArr[8] = fArr4[0];
        fArr[9] = fArr4[1];
        fArr[10] = fArr4[2];
        fArr[11] = fArr4[3];
        float[] fArr5 = this.mat3;
        fArr[12] = fArr5[0];
        fArr[13] = fArr5[1];
        fArr[14] = fArr5[2];
        fArr[15] = fArr5[3];
        return fArr;
    }

    public final float get(int i10, int i11) {
        if (i10 < 0 || i10 > 4 || i11 < 0 || i11 > 4) {
            return 0.0f;
        }
        return this.mat[i10][i11];
    }

    public final float[] getDump() {
        return fillDump(null);
    }

    public final SimpleVector getTranslation() {
        float[] fArr = this.mat3;
        return SimpleVector.create(fArr[0], fArr[1], fArr[2]);
    }

    public final SimpleVector getXAxis() {
        float[] fArr = this.mat0;
        return SimpleVector.create(fArr[0], fArr[1], fArr[2]);
    }

    public final SimpleVector getYAxis() {
        float[] fArr = this.mat1;
        return SimpleVector.create(fArr[0], fArr[1], fArr[2]);
    }

    public final SimpleVector getZAxis() {
        float[] fArr = this.mat2;
        return SimpleVector.create(fArr[0], fArr[1], fArr[2]);
    }

    public final void interpolate(Matrix matrix, Matrix matrix2, float f10) {
        if (f10 > 1.0f) {
            f10 = 1.0f;
        } else if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        float f11 = 1.0f - f10;
        for (int i10 = 0; i10 < 4; i10++) {
            float[] fArr = this.mat[i10];
            float[] fArr2 = matrix.mat[i10];
            float f12 = fArr2[0] * f11;
            float[] fArr3 = matrix2.mat[i10];
            fArr[0] = f12 + (fArr3[0] * f10);
            fArr[1] = (fArr2[1] * f11) + (fArr3[1] * f10);
            fArr[2] = (fArr2[2] * f11) + (fArr3[2] * f10);
            fArr[3] = (fArr2[3] * f11) + (fArr3[3] * f10);
        }
        orthonormalize();
    }

    public final Matrix invert() {
        return invert(new Matrix());
    }

    public final Matrix invert3x3() {
        return invert3x3(new Matrix());
    }

    public final boolean isIdentity() {
        float[] fArr = this.mat0;
        if (fArr[0] == 1.0f) {
            float[] fArr2 = this.mat1;
            if (fArr2[1] == 1.0f) {
                float[] fArr3 = this.mat2;
                if (fArr3[2] == 1.0f) {
                    float[] fArr4 = this.mat3;
                    if (fArr4[3] == 1.0f && fArr[1] == 0.0f && fArr[2] == 0.0f && fArr[3] == 0.0f && fArr2[0] == 0.0f && fArr2[2] == 0.0f && fArr2[3] == 0.0f && fArr3[1] == 0.0f && fArr3[0] == 0.0f && fArr3[3] == 0.0f && fArr4[1] == 0.0f && fArr4[2] == 0.0f && fArr4[0] == 0.0f) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void matMul(Matrix matrix) {
        if (isIdentity()) {
            setTo(matrix);
            return;
        }
        if (matrix.isIdentity()) {
            return;
        }
        float[] fArr = this.mat0;
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[2];
        float f13 = fArr[3];
        float[] fArr2 = this.mat1;
        float f14 = fArr2[0];
        float f15 = fArr2[1];
        float f16 = fArr2[2];
        float f17 = fArr2[3];
        float[] fArr3 = this.mat2;
        float f18 = fArr3[0];
        float f19 = fArr3[1];
        float f20 = fArr3[2];
        float f21 = fArr3[3];
        float[] fArr4 = this.mat3;
        float f22 = fArr4[0];
        float f23 = fArr4[1];
        float f24 = fArr4[2];
        float f25 = fArr4[3];
        float[] fArr5 = matrix.mat0;
        float[] fArr6 = matrix.mat1;
        float[] fArr7 = matrix.mat2;
        float[] fArr8 = matrix.mat3;
        float f26 = fArr5[0];
        float f27 = fArr5[1];
        float f28 = fArr5[2];
        float f29 = fArr5[3];
        float f30 = fArr6[0];
        float f31 = fArr6[1];
        float f32 = fArr6[2];
        float f33 = fArr6[3];
        float f34 = fArr7[0];
        float f35 = fArr7[1];
        float f36 = fArr7[2];
        float f37 = fArr7[3];
        float f38 = fArr8[0];
        float f39 = fArr8[1];
        float f40 = fArr8[2];
        float f41 = fArr8[3];
        fArr[0] = (f10 * f26) + (f11 * f30) + (f12 * f34) + (f13 * f38);
        fArr[1] = (f10 * f27) + (f11 * f31) + (f12 * f35) + (f13 * f39);
        fArr[2] = (f10 * f28) + (f11 * f32) + (f12 * f36) + (f13 * f40);
        fArr[3] = (f10 * f29) + (f11 * f33) + (f12 * f37) + (f13 * f41);
        fArr2[0] = (f14 * f26) + (f15 * f30) + (f16 * f34) + (f17 * f38);
        fArr2[1] = (f14 * f27) + (f15 * f31) + (f16 * f35) + (f17 * f39);
        fArr2[2] = (f14 * f28) + (f15 * f32) + (f16 * f36) + (f17 * f40);
        fArr2[3] = (f14 * f29) + (f15 * f33) + (f16 * f37) + (f17 * f41);
        fArr3[0] = (f18 * f26) + (f19 * f30) + (f20 * f34) + (f21 * f38);
        fArr3[1] = (f18 * f27) + (f19 * f31) + (f20 * f35) + (f21 * f39);
        fArr3[2] = (f18 * f28) + (f19 * f32) + (f20 * f36) + (f21 * f40);
        fArr3[3] = (f18 * f29) + (f19 * f33) + (f20 * f37) + (f21 * f41);
        fArr4[0] = (f26 * f22) + (f30 * f23) + (f34 * f24) + (f38 * f25);
        fArr4[1] = (f27 * f22) + (f31 * f23) + (f35 * f24) + (f39 * f25);
        fArr4[2] = (f28 * f22) + (f32 * f23) + (f36 * f24) + (f40 * f25);
        fArr4[3] = (f22 * f29) + (f23 * f33) + (f24 * f37) + (f25 * f41);
    }

    public final void orthonormalize() {
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < i10; i11++) {
                float[] fArr = this.mat0;
                float f10 = fArr[i10];
                float[] fArr2 = this.mat1;
                float f11 = fArr2[i10];
                float[] fArr3 = this.mat2;
                float f12 = fArr3[i10];
                float f13 = fArr[i11];
                float f14 = (f10 * f13) + (fArr2[i11] * f11) + (fArr3[i11] * f12);
                fArr[i11] = f13 - (f10 * f14);
                fArr2[i11] = fArr2[i11] - (f11 * f14);
                fArr3[i11] = fArr3[i11] - (f12 * f14);
            }
            float f15 = this.mat0[i10];
            float f16 = this.mat1[i10];
            float f17 = this.mat2[i10];
            float sqrt = 1.0f / FloatMath.sqrt(((f15 * f15) + (f16 * f16)) + (f17 * f17));
            float[] fArr4 = this.mat0;
            fArr4[i10] = fArr4[i10] * sqrt;
            float[] fArr5 = this.mat1;
            fArr5[i10] = fArr5[i10] * sqrt;
            float[] fArr6 = this.mat2;
            fArr6[i10] = fArr6[i10] * sqrt;
        }
    }

    public final void rotateAxis(SimpleVector simpleVector, float f10) {
        Matrix matrix;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        if (f10 != this.lastRot) {
            this.lastRot = f10;
            this.lastSin = FloatMath.sin(f10);
            this.lastCos = FloatMath.cos(f10);
        }
        float f19 = this.lastCos;
        float f20 = this.lastSin;
        float f21 = 1.0f - f19;
        SimpleVector normalize = simpleVector.normalize(simpleVector);
        float f22 = normalize.f83625x;
        float f23 = normalize.f83626y;
        float f24 = normalize.f83627z;
        synchronized (globalTmpMat) {
            try {
                matrix = globalTmpMat;
                matrix.setIdentity();
                f11 = f20 * f23;
                f12 = f20 * f22;
                f13 = f20 * f24;
                f14 = f21 * f22;
                f15 = f14 * f23;
                f16 = f14 * f24;
                f17 = f21 * f23;
                f18 = f17 * f24;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                float[] fArr = matrix.mat0;
                fArr[0] = (f14 * f22) + f19;
                float[] fArr2 = matrix.mat1;
                fArr2[0] = f15 + f13;
                float[] fArr3 = matrix.mat2;
                fArr3[0] = f16 - f11;
                fArr[1] = f15 - f13;
                fArr2[1] = (f17 * f23) + f19;
                fArr3[1] = f18 + f12;
                fArr[2] = f16 + f11;
                fArr2[2] = f18 - f12;
                fArr3[2] = (f21 * f24 * f24) + f19;
                matrix.orthonormalize();
                matMul(matrix);
            } catch (Throwable th3) {
                th = th3;
                throw th;
            }
        }
    }

    public final void rotateX(float f10) {
        float f11;
        float f12;
        if (f10 == 3.1415927f) {
            f11 = cpi;
            f12 = spi;
        } else if (f10 == mpi) {
            f11 = mcpi;
            f12 = mspi;
        } else if (f10 == 1.5707964f) {
            f11 = cpih;
            f12 = spih;
        } else if (f10 == mpih) {
            f11 = mcpih;
            f12 = mspih;
        } else {
            if (f10 != this.lastRot) {
                this.lastRot = f10;
                this.lastSin = FloatMath.sin(f10);
                this.lastCos = FloatMath.cos(f10);
            }
            f11 = this.lastCos;
            f12 = this.lastSin;
        }
        float[] fArr = this.mat0;
        float f13 = fArr[1];
        float f14 = fArr[2];
        float[] fArr2 = this.mat1;
        float f15 = fArr2[1];
        float f16 = fArr2[2];
        float[] fArr3 = this.mat2;
        float f17 = fArr3[1];
        float f18 = fArr3[2];
        float[] fArr4 = this.mat3;
        float f19 = fArr4[1];
        float f20 = fArr4[2];
        fArr[1] = (f13 * f11) + (f14 * f12);
        float f21 = -f12;
        fArr[2] = (f13 * f21) + (f14 * f11);
        fArr2[1] = (f15 * f11) + (f16 * f12);
        fArr2[2] = (f15 * f21) + (f16 * f11);
        fArr3[1] = (f17 * f11) + (f18 * f12);
        fArr3[2] = (f17 * f21) + (f18 * f11);
        fArr4[1] = (f19 * f11) + (f12 * f20);
        fArr4[2] = (f19 * f21) + (f20 * f11);
    }

    public final void rotateY(float f10) {
        float f11;
        float f12;
        if (f10 == 3.1415927f) {
            f11 = cpi;
            f12 = spi;
        } else if (f10 == mpi) {
            f11 = mcpi;
            f12 = mspi;
        } else if (f10 == 1.5707964f) {
            f11 = cpih;
            f12 = spih;
        } else if (f10 == mpih) {
            f11 = mcpih;
            f12 = mspih;
        } else {
            if (f10 != this.lastRot) {
                this.lastRot = f10;
                this.lastSin = FloatMath.sin(f10);
                this.lastCos = FloatMath.cos(f10);
            }
            f11 = this.lastCos;
            f12 = this.lastSin;
        }
        float[] fArr = this.mat0;
        float f13 = fArr[0];
        float f14 = fArr[2];
        float[] fArr2 = this.mat1;
        float f15 = fArr2[0];
        float f16 = fArr2[2];
        float[] fArr3 = this.mat2;
        float f17 = fArr3[0];
        float f18 = fArr3[2];
        float[] fArr4 = this.mat3;
        float f19 = fArr4[0];
        float f20 = fArr4[2];
        fArr[0] = (f13 * f11) + (f14 * f12);
        float f21 = -f12;
        fArr[2] = (f13 * f21) + (f14 * f11);
        fArr2[0] = (f15 * f11) + (f16 * f12);
        fArr2[2] = (f15 * f21) + (f16 * f11);
        fArr3[0] = (f17 * f11) + (f18 * f12);
        fArr3[2] = (f17 * f21) + (f18 * f11);
        fArr4[0] = (f19 * f11) + (f12 * f20);
        fArr4[2] = (f19 * f21) + (f20 * f11);
    }

    public final void rotateZ(float f10) {
        float f11;
        float f12;
        if (f10 == 3.1415927f) {
            f11 = cpi;
            f12 = spi;
        } else if (f10 == mpi) {
            f11 = mcpi;
            f12 = mspi;
        } else if (f10 == 1.5707964f) {
            f11 = cpih;
            f12 = spih;
        } else if (f10 == mpih) {
            f11 = mcpih;
            f12 = mspih;
        } else {
            if (f10 != this.lastRot) {
                this.lastRot = f10;
                this.lastSin = FloatMath.sin(f10);
                this.lastCos = FloatMath.cos(f10);
            }
            f11 = this.lastCos;
            f12 = this.lastSin;
        }
        float[] fArr = this.mat0;
        float f13 = fArr[0];
        float f14 = fArr[1];
        float[] fArr2 = this.mat1;
        float f15 = fArr2[0];
        float f16 = fArr2[1];
        float[] fArr3 = this.mat2;
        float f17 = fArr3[0];
        float f18 = fArr3[1];
        float[] fArr4 = this.mat3;
        float f19 = fArr4[0];
        float f20 = fArr4[1];
        fArr[0] = (f13 * f11) + (f14 * f12);
        float f21 = -f12;
        fArr[1] = (f13 * f21) + (f14 * f11);
        fArr2[0] = (f15 * f11) + (f16 * f12);
        fArr2[1] = (f15 * f21) + (f16 * f11);
        fArr3[0] = (f17 * f11) + (f18 * f12);
        fArr3[1] = (f17 * f21) + (f18 * f11);
        fArr4[0] = (f19 * f11) + (f12 * f20);
        fArr4[1] = (f19 * f21) + (f20 * f11);
    }

    public final void scalarMul(float f10) {
        float[][] fArr = this.mat;
        float[] fArr2 = fArr[0];
        fArr2[0] = fArr2[0] * f10;
        fArr2[1] = fArr2[1] * f10;
        fArr2[2] = fArr2[2] * f10;
        float[] fArr3 = fArr[1];
        fArr3[0] = fArr3[0] * f10;
        fArr3[1] = fArr3[1] * f10;
        fArr3[2] = fArr3[2] * f10;
        float[] fArr4 = fArr[2];
        fArr4[0] = fArr4[0] * f10;
        fArr4[1] = fArr4[1] * f10;
        fArr4[2] = fArr4[2] * f10;
    }

    public final void set(int i10, int i11, float f10) {
        if (i10 < 0 || i10 > 4 || i11 < 0 || i11 > 4) {
            return;
        }
        this.mat[i10][i11] = f10;
    }

    public final void setColumn(int i10, float f10, float f11, float f12, float f13) {
        if (i10 < 0 || i10 > 4) {
            return;
        }
        this.mat0[i10] = f10;
        this.mat1[i10] = f11;
        this.mat2[i10] = f12;
        this.mat3[i10] = f13;
    }

    public final void setDump(float[] fArr) {
        if (fArr.length != 16) {
            Logger.log("Not a valid matrix dump!", 0);
            return;
        }
        float[] fArr2 = this.mat0;
        fArr2[0] = fArr[0];
        fArr2[1] = fArr[1];
        fArr2[2] = fArr[2];
        fArr2[3] = fArr[3];
        float[] fArr3 = this.mat1;
        fArr3[0] = fArr[4];
        fArr3[1] = fArr[5];
        fArr3[2] = fArr[6];
        fArr3[3] = fArr[7];
        float[] fArr4 = this.mat2;
        fArr4[0] = fArr[8];
        fArr4[1] = fArr[9];
        fArr4[2] = fArr[10];
        fArr4[3] = fArr[11];
        float[] fArr5 = this.mat3;
        fArr5[0] = fArr[12];
        fArr5[1] = fArr[13];
        fArr5[2] = fArr[14];
        fArr5[3] = fArr[15];
    }

    public final void setIdentity() {
        float[] fArr = this.mat0;
        fArr[0] = 1.0f;
        float[] fArr2 = this.mat1;
        fArr2[1] = 1.0f;
        float[] fArr3 = this.mat2;
        fArr3[2] = 1.0f;
        float[] fArr4 = this.mat3;
        fArr4[3] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr2[0] = 0.0f;
        fArr2[2] = 0.0f;
        fArr2[3] = 0.0f;
        fArr3[1] = 0.0f;
        fArr3[0] = 0.0f;
        fArr3[3] = 0.0f;
        fArr4[1] = 0.0f;
        fArr4[2] = 0.0f;
        fArr4[0] = 0.0f;
    }

    public final void setOrientation(SimpleVector simpleVector, SimpleVector simpleVector2) {
        setOrientation(simpleVector, simpleVector2, true);
    }

    public final void setRow(int i10, float f10, float f11, float f12, float f13) {
        if (i10 < 0 || i10 > 4) {
            return;
        }
        float[] fArr = this.mat[i10];
        fArr[0] = f10;
        fArr[1] = f11;
        fArr[2] = f12;
        fArr[3] = f13;
    }

    public final void setTo(Matrix matrix) {
        float[][] fArr = this.mat;
        float[] fArr2 = fArr[0];
        float[][] fArr3 = matrix.mat;
        float[] fArr4 = fArr3[0];
        fArr2[0] = fArr4[0];
        fArr2[1] = fArr4[1];
        fArr2[2] = fArr4[2];
        fArr2[3] = fArr4[3];
        float[] fArr5 = fArr[1];
        float[] fArr6 = fArr3[1];
        fArr5[0] = fArr6[0];
        fArr5[1] = fArr6[1];
        fArr5[2] = fArr6[2];
        fArr5[3] = fArr6[3];
        float[] fArr7 = fArr[2];
        float[] fArr8 = fArr3[2];
        fArr7[0] = fArr8[0];
        fArr7[1] = fArr8[1];
        fArr7[2] = fArr8[2];
        fArr7[3] = fArr8[3];
        float[] fArr9 = fArr[3];
        float[] fArr10 = fArr3[3];
        fArr9[0] = fArr10[0];
        fArr9[1] = fArr10[1];
        fArr9[2] = fArr10[2];
        fArr9[3] = fArr10[3];
    }

    public String toString() {
        String str = "(\n";
        for (int i10 = 0; i10 < 4; i10++) {
            str = String.valueOf(String.valueOf(String.valueOf(String.valueOf(str) + "\t" + this.mat[i10][0]) + "\t" + this.mat[i10][1]) + "\t" + this.mat[i10][2]) + "\t" + this.mat[i10][3] + "\n";
        }
        return String.valueOf(str) + ")\n";
    }

    public void transformToGL() {
        float[] fArr = this.mat0;
        fArr[1] = fArr[1] * (-1.0f);
        fArr[2] = fArr[2] * (-1.0f);
        float[] fArr2 = this.mat1;
        fArr2[1] = fArr2[1] * (-1.0f);
        fArr2[2] = fArr2[2] * (-1.0f);
        float[] fArr3 = this.mat2;
        fArr3[1] = fArr3[1] * (-1.0f);
        fArr3[2] = fArr3[2] * (-1.0f);
        float[] fArr4 = this.mat3;
        fArr4[1] = fArr4[1] * (-1.0f);
        fArr4[2] = fArr4[2] * (-1.0f);
    }

    public final void translate(SimpleVector simpleVector) {
        float[] fArr = this.mat3;
        fArr[0] = fArr[0] + simpleVector.f83625x;
        fArr[1] = fArr[1] + simpleVector.f83626y;
        fArr[2] = fArr[2] + simpleVector.f83627z;
    }

    public final Matrix transpose() {
        Matrix matrix = new Matrix();
        float[] fArr = matrix.mat0;
        float[] fArr2 = this.mat1;
        fArr[1] = fArr2[0];
        float[] fArr3 = this.mat2;
        fArr[2] = fArr3[0];
        float[] fArr4 = this.mat3;
        fArr[3] = fArr4[0];
        float[] fArr5 = matrix.mat1;
        float[] fArr6 = this.mat0;
        fArr5[0] = fArr6[1];
        fArr5[2] = fArr3[1];
        fArr5[3] = fArr4[1];
        float[] fArr7 = matrix.mat2;
        fArr7[0] = fArr6[2];
        fArr7[1] = fArr2[2];
        fArr7[3] = fArr4[2];
        float[] fArr8 = matrix.mat3;
        fArr8[0] = fArr6[3];
        fArr8[1] = fArr2[3];
        fArr8[2] = fArr3[3];
        fArr[0] = fArr6[0];
        fArr5[1] = fArr2[1];
        fArr7[2] = fArr3[2];
        fArr8[3] = fArr4[3];
        return matrix;
    }

    public final SimpleVector getXAxis(SimpleVector simpleVector) {
        float[] fArr = this.mat0;
        simpleVector.set(fArr[0], fArr[1], fArr[2]);
        return simpleVector;
    }

    public final SimpleVector getYAxis(SimpleVector simpleVector) {
        float[] fArr = this.mat1;
        simpleVector.set(fArr[0], fArr[1], fArr[2]);
        return simpleVector;
    }

    public final SimpleVector getZAxis(SimpleVector simpleVector) {
        float[] fArr = this.mat2;
        simpleVector.set(fArr[0], fArr[1], fArr[2]);
        return simpleVector;
    }

    public final Matrix invert(Matrix matrix) {
        float[] fArr = this.mat0;
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[2];
        float f13 = fArr[3];
        float[] fArr2 = this.mat1;
        float f14 = fArr2[0];
        float f15 = fArr2[1];
        float f16 = fArr2[2];
        float f17 = fArr2[3];
        float[] fArr3 = this.mat2;
        float f18 = fArr3[0];
        float f19 = fArr3[1];
        float f20 = fArr3[2];
        float f21 = fArr3[3];
        float[] fArr4 = this.mat3;
        float f22 = fArr4[0];
        float f23 = fArr4[1];
        float f24 = fArr4[2];
        float f25 = fArr4[3];
        float f26 = f20 * f25;
        float f27 = f24 * f21;
        float f28 = f16 * f25;
        float f29 = f24 * f17;
        float f30 = f16 * f21;
        float f31 = f20 * f17;
        float f32 = f12 * f25;
        float f33 = f24 * f13;
        float f34 = f12 * f21;
        float f35 = f20 * f13;
        float f36 = f12 * f17;
        float f37 = f16 * f13;
        float f38 = (((f26 * f15) + (f29 * f19)) + (f30 * f23)) - (((f27 * f15) + (f28 * f19)) + (f31 * f23));
        float f39 = (((f27 * f11) + (f32 * f19)) + (f35 * f23)) - (((f26 * f11) + (f33 * f19)) + (f34 * f23));
        float f40 = (((f28 * f11) + (f33 * f15)) + (f36 * f23)) - (((f29 * f11) + (f32 * f15)) + (f37 * f23));
        float f41 = (((f31 * f11) + (f34 * f15)) + (f37 * f19)) - (((f30 * f11) + (f35 * f15)) + (f36 * f19));
        float f42 = (((f27 * f14) + (f28 * f18)) + (f31 * f22)) - (((f26 * f14) + (f29 * f18)) + (f30 * f22));
        float f43 = (((f26 * f10) + (f33 * f18)) + (f34 * f22)) - (((f27 * f10) + (f32 * f18)) + (f35 * f22));
        float f44 = (((f29 * f10) + (f32 * f14)) + (f37 * f22)) - (((f28 * f10) + (f33 * f14)) + (f36 * f22));
        float f45 = (((f30 * f10) + (f35 * f14)) + (f36 * f18)) - (((f31 * f10) + (f34 * f14)) + (f37 * f18));
        float f46 = f18 * f23;
        float f47 = f22 * f19;
        float f48 = f14 * f23;
        float f49 = f22 * f15;
        float f50 = f14 * f19;
        float f51 = f18 * f15;
        float f52 = f23 * f10;
        float f53 = f22 * f11;
        float f54 = f19 * f10;
        float f55 = f18 * f11;
        float f56 = f15 * f10;
        float f57 = f11 * f14;
        float f58 = (((f46 * f17) + (f49 * f21)) + (f50 * f25)) - (((f47 * f17) + (f48 * f21)) + (f51 * f25));
        float f59 = (((f47 * f13) + (f52 * f21)) + (f55 * f25)) - (((f46 * f13) + (f53 * f21)) + (f54 * f25));
        float f60 = (((f48 * f13) + (f53 * f17)) + (f56 * f25)) - (((f49 * f13) + (f52 * f17)) + (f25 * f57));
        float f61 = (((f51 * f13) + (f54 * f17)) + (f57 * f21)) - (((f13 * f50) + (f17 * f55)) + (f21 * f56));
        float f62 = (((f54 * f24) + (f46 * f12)) + (f53 * f20)) - (((f52 * f20) + (f55 * f24)) + (f47 * f12));
        float f63 = (((f52 * f16) + (f57 * f24)) + (f49 * f12)) - (((f24 * f56) + (f48 * f12)) + (f53 * f16));
        float f64 = (((f56 * f20) + (f50 * f12)) + (f55 * f16)) - (((f54 * f16) + (f57 * f20)) + (f51 * f12));
        float f65 = 1.0f / ((((f10 * f38) + (f14 * f39)) + (f18 * f40)) + (f22 * f41));
        float[] fArr5 = matrix.mat0;
        fArr5[0] = f38 * f65;
        fArr5[1] = f39 * f65;
        fArr5[2] = f40 * f65;
        fArr5[3] = f41 * f65;
        float[] fArr6 = matrix.mat1;
        fArr6[0] = f42 * f65;
        fArr6[1] = f43 * f65;
        fArr6[2] = f44 * f65;
        fArr6[3] = f45 * f65;
        float[] fArr7 = matrix.mat2;
        fArr7[0] = f58 * f65;
        fArr7[1] = f59 * f65;
        fArr7[2] = f60 * f65;
        fArr7[3] = f61 * f65;
        float[] fArr8 = matrix.mat3;
        fArr8[0] = ((((f48 * f20) + (f51 * f24)) + (f47 * f16)) - (((f50 * f24) + (f46 * f16)) + (f49 * f20))) * f65;
        fArr8[1] = f62 * f65;
        fArr8[2] = f63 * f65;
        fArr8[3] = f64 * f65;
        return matrix;
    }

    public final Matrix invert3x3(Matrix matrix) {
        float[] fArr = matrix.mat0;
        float[] fArr2 = this.mat1;
        fArr[1] = fArr2[0];
        float[] fArr3 = this.mat2;
        fArr[2] = fArr3[0];
        float[] fArr4 = matrix.mat1;
        float[] fArr5 = this.mat0;
        fArr4[0] = fArr5[1];
        fArr4[2] = fArr3[1];
        float[] fArr6 = matrix.mat2;
        fArr6[0] = fArr5[2];
        fArr6[1] = fArr2[2];
        fArr[0] = fArr5[0];
        fArr4[1] = fArr2[1];
        fArr6[2] = fArr3[2];
        return matrix;
    }

    public final void setOrientation(SimpleVector simpleVector, SimpleVector simpleVector2, boolean z10) {
        SimpleVector normalize = simpleVector2.normalize();
        SimpleVector normalize2 = simpleVector.normalize();
        SimpleVector normalize3 = normalize.calcCross(normalize2).normalize();
        if (!z10) {
            float[][] fArr = this.mat;
            float[] fArr2 = fArr[0];
            fArr2[0] = normalize3.f83625x;
            float[] fArr3 = fArr[1];
            fArr3[0] = normalize3.f83626y;
            float[] fArr4 = fArr[2];
            fArr4[0] = normalize3.f83627z;
            float[] fArr5 = fArr[3];
            fArr5[0] = 0.0f;
            fArr2[1] = normalize.f83625x;
            fArr3[1] = normalize.f83626y;
            fArr4[1] = normalize.f83627z;
            fArr5[1] = 0.0f;
            fArr2[2] = normalize2.f83625x;
            fArr3[2] = normalize2.f83626y;
            fArr4[2] = normalize2.f83627z;
            fArr5[2] = 0.0f;
            fArr2[3] = 0.0f;
            fArr3[3] = 0.0f;
            fArr4[3] = 0.0f;
            fArr5[3] = 1.0f;
            return;
        }
        float[][] fArr6 = this.mat;
        float[] fArr7 = fArr6[0];
        fArr7[0] = normalize3.f83625x;
        fArr7[1] = normalize3.f83626y;
        fArr7[2] = normalize3.f83627z;
        fArr7[3] = 0.0f;
        float[] fArr8 = fArr6[1];
        fArr8[0] = normalize.f83625x;
        fArr8[1] = normalize.f83626y;
        fArr8[2] = normalize.f83627z;
        fArr8[3] = 0.0f;
        float[] fArr9 = fArr6[2];
        fArr9[0] = normalize2.f83625x;
        fArr9[1] = normalize2.f83626y;
        fArr9[2] = normalize2.f83627z;
        fArr9[3] = 0.0f;
        float[] fArr10 = fArr6[3];
        fArr10[0] = 0.0f;
        fArr10[1] = 0.0f;
        fArr10[2] = 0.0f;
        fArr10[3] = 1.0f;
    }

    public final void translate(float f10, float f11, float f12) {
        float[] fArr = this.mat3;
        fArr[0] = fArr[0] + f10;
        fArr[1] = fArr[1] + f11;
        fArr[2] = fArr[2] + f12;
    }

    public Matrix(Matrix matrix) {
        float[][] fArr = (float[][]) Array.newInstance(Float.TYPE, 4, 4);
        this.mat = fArr;
        this.mat0 = fArr[0];
        this.mat1 = fArr[1];
        this.mat2 = fArr[2];
        this.mat3 = fArr[3];
        setTo(matrix);
    }
}
