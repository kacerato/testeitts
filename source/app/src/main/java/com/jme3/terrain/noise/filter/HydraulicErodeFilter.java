package com.jme3.terrain.noise.filter;

import com.jme3.terrain.noise.Basis;
import java.nio.FloatBuffer;

public class HydraulicErodeFilter extends AbstractFilter {

    private float f81643Kc;

    private float f81644Ke;
    private float Kr;
    private float Ks;

    private float f81645T;

    @Override
    public FloatBuffer filter(float f10, float f11, float f12, FloatBuffer floatBuffer, int i10) {
        float[] array = floatBuffer.array();
        int i11 = i10 * i10;
        float[] fArr = new float[i11];
        float[] fArr2 = new float[i11];
        int i12 = -i10;
        int[] iArr = {i12 - 1, i12 + 1, i10 - 1, i10 + 1};
        for (int i13 = 0; i13 < i10; i13++) {
            for (int i14 = 0; i14 < i10; i14++) {
                int i15 = (i13 * i10) + i14;
                float f13 = this.Kr;
                float f14 = this.Ks;
                if (f13 > 0.0f) {
                    float f15 = fArr[i15] + f13;
                    fArr[i15] = f15;
                    if (f14 > 0.0f) {
                        array[i15] = array[i15] - (f15 * f14);
                        fArr2[i15] = fArr2[i15] + (f14 * fArr[i15]);
                    }
                }
                float f16 = array[i15] + fArr[i15];
                float f17 = 0.0f;
                float f18 = 0.0f;
                float f19 = 0.0f;
                int i16 = -1;
                for (int i17 = 0; i17 < 4; i17++) {
                    int i18 = iArr[i17];
                    if (i15 + i18 > 0 && i15 + i18 < i10) {
                        float f20 = array[i15 + i18] + fArr[i18 + i15];
                        if (f16 - f20 > f16 - f19) {
                            f17 += f20;
                            f18 += 1.0f;
                            f19 = f20;
                            i16 = i17;
                        }
                    }
                }
                float f21 = (f17 + f16) / (f18 + 1.0f);
                if (i16 > -1) {
                    float min = (Math.min(fArr[i15], f16 - f21) * (f16 - f19)) / f17;
                    float f22 = fArr2[i15] * min;
                    float f23 = fArr[i15];
                    float f24 = f22 / f23;
                    fArr[i15] = f23 - min;
                    fArr2[i15] = fArr2[i15] - f24;
                    int i19 = iArr[i16];
                    int i20 = i15 + i19;
                    fArr[i20] = fArr[i20] + min;
                    int i21 = i19 + i15;
                    fArr2[i21] = fArr2[i21] + f24;
                }
                float f25 = fArr[i15] * (1.0f - this.f81644Ke);
                fArr[i15] = f25;
                if (f25 < this.f81645T) {
                    fArr[i15] = 0.0f;
                }
                float f26 = this.f81643Kc * fArr[i15];
                float f27 = fArr2[i15];
                if (f27 > f26) {
                    array[i15] = array[i15] + (f27 - f26);
                    float f28 = fArr2[i15];
                    fArr2[i15] = f28 - (f28 - f26);
                }
            }
        }
        return floatBuffer;
    }

    @Override
    public int getMargin(int i10, int i11) {
        return super.getMargin(i10, i11) + 1;
    }

    public void setKc(float f10) {
        this.f81643Kc = f10;
    }

    public void setKe(float f10) {
        this.f81644Ke = f10;
    }

    public void setKr(float f10) {
        this.Kr = f10;
    }

    public void setKs(float f10) {
        this.Ks = f10;
    }

    public void setSedimentMap(Basis basis) {
    }

    public void setT(float f10) {
        this.f81645T = f10;
    }

    public void setWaterMap(Basis basis) {
    }
}
