package V8;

import java.lang.reflect.Array;

public class b {

    public static final int f26661d = 0;

    public static final int f26662e = 1;

    public static final int f26663f = 2;

    public static final int f26664g = 3;

    public static final int f26665h = 4;

    public static final int f26666i = 5;

    public static final int f26667j = 0;

    public static final int f26668k = 1;

    public static final int f26669l = 2;

    public static final int f26670m = 3;

    public final Object f26671a = new Object();

    public final float[][] f26672b = (float[][]) Array.newInstance(Float.TYPE, 6, 4);

    public final ThreadLocal<float[]> f26673c = new a();

    public class a extends ThreadLocal<float[]> {
        public a() {
        }

        @Override
        public float[] initialValue() {
            return new float[16];
        }
    }

    public void a(float[] frustumMatrix, float[] viewMatrix) {
        synchronized (this.f26671a) {
            float[] fArr = this.f26673c.get();
            float f10 = viewMatrix[0] * frustumMatrix[0];
            float f11 = viewMatrix[1];
            float f12 = frustumMatrix[4];
            float f13 = viewMatrix[2];
            float f14 = frustumMatrix[8];
            float f15 = viewMatrix[3];
            float f16 = frustumMatrix[12];
            float f17 = f10 + (f11 * f12) + (f13 * f14) + (f15 * f16);
            fArr[0] = f17;
            float f18 = viewMatrix[0];
            float f19 = frustumMatrix[1] * f18;
            float f20 = frustumMatrix[5];
            float f21 = frustumMatrix[9];
            float f22 = frustumMatrix[13];
            fArr[1] = f19 + (f11 * f20) + (f13 * f21) + (f15 * f22);
            float f23 = frustumMatrix[2] * f18;
            float f24 = viewMatrix[1];
            float f25 = frustumMatrix[6];
            float f26 = frustumMatrix[10];
            float f27 = frustumMatrix[14];
            fArr[2] = f23 + (f24 * f25) + (f13 * f26) + (f15 * f27);
            float f28 = f18 * frustumMatrix[3];
            float f29 = frustumMatrix[7];
            float f30 = f28 + (f24 * f29);
            float f31 = viewMatrix[2];
            float f32 = frustumMatrix[11];
            float f33 = frustumMatrix[15];
            float f34 = f30 + (f31 * f32) + (f15 * f33);
            fArr[3] = f34;
            float f35 = viewMatrix[4];
            float f36 = frustumMatrix[0];
            float f37 = viewMatrix[5];
            float f38 = (f35 * f36) + (f12 * f37);
            float f39 = viewMatrix[6];
            float f40 = viewMatrix[7];
            float f41 = f38 + (f39 * f14) + (f40 * f16);
            fArr[4] = f41;
            float f42 = viewMatrix[4];
            float f43 = frustumMatrix[1];
            fArr[5] = (f42 * f43) + (f37 * f20) + (f39 * f21) + (f40 * f22);
            float f44 = frustumMatrix[2];
            float f45 = viewMatrix[5];
            fArr[6] = (f42 * f44) + (f25 * f45) + (f39 * f26) + (f40 * f27);
            float f46 = frustumMatrix[3];
            float f47 = (f42 * f46) + (f45 * f29) + (viewMatrix[6] * f32) + (f40 * f33);
            fArr[7] = f47;
            float f48 = viewMatrix[8] * f36;
            float f49 = viewMatrix[9];
            float f50 = frustumMatrix[4];
            float f51 = viewMatrix[10];
            float f52 = f48 + (f49 * f50) + (f14 * f51);
            float f53 = viewMatrix[11];
            float f54 = f52 + (f53 * f16);
            fArr[8] = f54;
            float f55 = viewMatrix[8];
            float f56 = frustumMatrix[5];
            fArr[9] = (f55 * f43) + (f49 * f56) + (f21 * f51) + (f53 * f22);
            float f57 = viewMatrix[9];
            float f58 = frustumMatrix[6];
            fArr[10] = (f55 * f44) + (f57 * f58) + (f51 * f26) + (f53 * f27);
            float f59 = frustumMatrix[7];
            float f60 = (f55 * f46) + (f57 * f59) + (viewMatrix[10] * f32) + (f53 * f33);
            fArr[11] = f60;
            float f61 = viewMatrix[12] * f36;
            float f62 = viewMatrix[13];
            float f63 = viewMatrix[14];
            float f64 = f61 + (f50 * f62) + (frustumMatrix[8] * f63);
            float f65 = viewMatrix[15];
            float f66 = f64 + (f16 * f65);
            fArr[12] = f66;
            float f67 = viewMatrix[12];
            fArr[13] = (f43 * f67) + (f62 * f56) + (frustumMatrix[9] * f63) + (f22 * f65);
            float f68 = viewMatrix[13];
            fArr[14] = (f44 * f67) + (f58 * f68) + (f63 * frustumMatrix[10]) + (f27 * f65);
            float f69 = (f67 * f46) + (f68 * f59) + (viewMatrix[14] * frustumMatrix[11]) + (f65 * f33);
            fArr[15] = f69;
            float[][] fArr2 = this.f26672b;
            float[] fArr3 = fArr2[0];
            fArr3[0] = f34 - f17;
            fArr3[1] = f47 - f41;
            fArr3[2] = f60 - f54;
            fArr3[3] = f69 - f66;
            e(fArr2, 0);
            float[][] fArr4 = this.f26672b;
            float[] fArr5 = fArr4[1];
            fArr5[0] = fArr[3] + fArr[0];
            fArr5[1] = fArr[7] + fArr[4];
            fArr5[2] = fArr[11] + fArr[8];
            fArr5[3] = fArr[15] + fArr[12];
            e(fArr4, 1);
            float[][] fArr6 = this.f26672b;
            float[] fArr7 = fArr6[2];
            fArr7[0] = fArr[3] + fArr[1];
            fArr7[1] = fArr[7] + fArr[5];
            fArr7[2] = fArr[11] + fArr[9];
            fArr7[3] = fArr[15] + fArr[13];
            e(fArr6, 2);
            float[][] fArr8 = this.f26672b;
            float[] fArr9 = fArr8[3];
            fArr9[0] = fArr[3] - fArr[1];
            fArr9[1] = fArr[7] - fArr[5];
            fArr9[2] = fArr[11] - fArr[9];
            fArr9[3] = fArr[15] - fArr[13];
            e(fArr8, 3);
            float[][] fArr10 = this.f26672b;
            float[] fArr11 = fArr10[4];
            fArr11[0] = fArr[3] - fArr[2];
            fArr11[1] = fArr[7] - fArr[6];
            fArr11[2] = fArr[11] - fArr[10];
            fArr11[3] = fArr[15] - fArr[14];
            e(fArr10, 4);
            float[][] fArr12 = this.f26672b;
            float[] fArr13 = fArr12[5];
            fArr13[0] = fArr[3] + fArr[2];
            fArr13[1] = fArr[7] + fArr[6];
            fArr13[2] = fArr[11] + fArr[10];
            fArr13[3] = fArr[15] + fArr[14];
            e(fArr12, 5);
        }
    }

    public boolean b(float _x, float _y, float _z, float _size) {
        synchronized (this.f26671a) {
            for (int i10 = 0; i10 < 6; i10++) {
                try {
                    float[] fArr = this.f26672b[i10];
                    float f10 = fArr[0];
                    float f11 = _x - _size;
                    float f12 = fArr[1];
                    float f13 = _y - _size;
                    float f14 = (f10 * f11) + (f12 * f13);
                    float f15 = fArr[2];
                    float f16 = _z - _size;
                    float f17 = fArr[3];
                    if (f14 + (f15 * f16) + f17 <= 0.0f) {
                        float f18 = _x + _size;
                        if ((f10 * f18) + (f12 * f13) + (f15 * f16) + f17 <= 0.0f) {
                            float f19 = _y + _size;
                            if ((f10 * f11) + (f12 * f19) + (f15 * f16) + f17 <= 0.0f && (f10 * f18) + (f12 * f19) + (f16 * f15) + f17 <= 0.0f) {
                                float f20 = _z + _size;
                                if ((f10 * f11) + (f12 * f13) + (f15 * f20) + f17 <= 0.0f && (f10 * f18) + (f13 * f12) + (f15 * f20) + f17 <= 0.0f && (f11 * f10) + (f12 * f19) + (f15 * f20) + f17 <= 0.0f && (f10 * f18) + (f12 * f19) + (f15 * f20) + f17 <= 0.0f) {
                                    return false;
                                }
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return true;
        }
    }

    public boolean c(float _x, float _y, float _z) {
        synchronized (this.f26671a) {
            for (int i10 = 0; i10 < 6; i10++) {
                try {
                    float[] fArr = this.f26672b[i10];
                    if ((fArr[0] * _x) + (fArr[1] * _y) + (fArr[2] * _z) + fArr[3] <= 0.0f) {
                        return false;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return true;
        }
    }

    public boolean d(float _x, float _y, float _z, float _radius) {
        synchronized (this.f26671a) {
            for (int i10 = 0; i10 < 6; i10++) {
                try {
                    float[] fArr = this.f26672b[i10];
                    if ((fArr[0] * _x) + (fArr[1] * _y) + (fArr[2] * _z) + fArr[3] <= (-_radius)) {
                        return false;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return true;
        }
    }

    public final void e(float[][] _frustum, int _side) {
        float[] fArr = _frustum[_side];
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[2];
        float sqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
        float[] fArr2 = _frustum[_side];
        fArr2[0] = fArr2[0] / sqrt;
        fArr2[1] = fArr2[1] / sqrt;
        fArr2[2] = fArr2[2] / sqrt;
        fArr2[3] = fArr2[3] / sqrt;
    }
}
