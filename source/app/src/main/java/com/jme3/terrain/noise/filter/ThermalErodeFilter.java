package com.jme3.terrain.noise.filter;

import java.nio.FloatBuffer;

public class ThermalErodeFilter extends AbstractFilter {

    private float f81646c;
    private float talus;

    @Override
    public FloatBuffer filter(float f10, float f11, float f12, FloatBuffer floatBuffer, int i10) {
        float[] array = floatBuffer.array();
        float[] fArr = new float[i10 * i10];
        int i11 = -i10;
        int[] iArr = {i11 - 1, i11 + 1, i10 - 1, i10 + 1};
        for (int i12 = 0; i12 < i10; i12++) {
            for (int i13 = 0; i13 < i10; i13++) {
                int i14 = (i12 * i10) + i13;
                array[i14] = array[i14] + fArr[i14];
                fArr[i14] = 0.0f;
                float[] fArr2 = new float[4];
                float f13 = this.talus;
                float f14 = 0.0f;
                for (int i15 = 0; i15 < 4; i15++) {
                    int i16 = iArr[i15];
                    if (i14 + i16 > 0 && i14 + i16 < array.length) {
                        float f15 = array[i14] - array[i16 + i14];
                        if (f15 > this.talus) {
                            fArr2[i15] = f15;
                            f14 += f15;
                            if (f15 > f13) {
                                f13 = f15;
                            }
                        }
                    }
                }
                for (int i17 = 0; i17 < 4; i17++) {
                    float f16 = fArr2[i17];
                    if (f16 != 0.0f) {
                        float f17 = ((this.f81646c * (f13 - this.talus)) * f16) / f14;
                        float f18 = array[i14];
                        float f19 = fArr[i14];
                        if (f17 > f18 + f19) {
                            f17 = f18 + f19;
                        }
                        fArr[i14] = f19 - f17;
                        int i18 = iArr[i17] + i14;
                        fArr[i18] = fArr[i18] + f17;
                    }
                    fArr2[i17] = 0.0f;
                }
            }
        }
        return floatBuffer;
    }

    @Override
    public int getMargin(int i10, int i11) {
        return super.getMargin(i10, i11) + 1;
    }

    public ThermalErodeFilter setC(float f10) {
        this.f81646c = f10;
        return this;
    }

    public ThermalErodeFilter setTalus(float f10) {
        this.talus = f10;
        return this;
    }
}
