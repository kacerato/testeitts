package com.jme3.terrain.noise.filter;

import java.nio.FloatBuffer;

public class OptimizedErode extends AbstractFilter {
    private int radius;
    private float talus;

    @Override
    public FloatBuffer filter(float f10, float f11, float f12, FloatBuffer floatBuffer, int i10) {
        float[] array = floatBuffer.array();
        float[] fArr = new float[array.length];
        int i11 = 1;
        int i12 = this.radius + 1;
        while (true) {
            int i13 = this.radius;
            if (i12 >= i10 - i13) {
                return FloatBuffer.wrap(fArr);
            }
            int i14 = i13 + 1;
            while (i14 < i10 - this.radius) {
                int i15 = (i12 * i10) + i14;
                float f13 = array[i15];
                float f14 = 0.0f;
                int i16 = 0;
                int i17 = 0;
                int i18 = 0;
                boolean z10 = false;
                boolean z11 = false;
                float f15 = 0.0f;
                while (i16 >= (-this.radius)) {
                    int i19 = i12 + i16;
                    int i20 = (i19 * i10) + i14;
                    int i21 = ((i19 - i11) * i10) + i14;
                    int i22 = i15 + i16;
                    int i23 = i22 - 1;
                    float f16 = array[i20];
                    float f17 = array[i22];
                    float f18 = f13 - f16;
                    if ((Math.abs(f18) > this.talus && Math.abs(f13 - array[i21]) > this.talus) || z10) {
                        z10 = true;
                    } else if (Math.abs(f18) <= this.talus) {
                        f14 += f16;
                        i17++;
                    }
                    float f19 = f13 - f17;
                    float f20 = f14;
                    if ((Math.abs(f19) > this.talus && Math.abs(f13 - array[i23]) > this.talus) || z11) {
                        z11 = true;
                    } else if (Math.abs(f19) <= this.talus) {
                        f15 += f17;
                        i18++;
                    }
                    i16--;
                    f14 = f20;
                    i11 = 1;
                }
                if (i17 <= 0) {
                    i17 = 1;
                }
                float f21 = f14 / i17;
                if (i18 <= 0) {
                    i18 = 1;
                }
                fArr[i15] = (f21 + (f15 / i18)) * 0.5f;
                i14++;
                i11 = 1;
            }
            i12++;
            i11 = 1;
        }
    }

    @Override
    public int getMargin(int i10, int i11) {
        return super.getMargin(i10, i11) + this.radius;
    }

    public int getRadius() {
        return this.radius;
    }

    public float getTalus() {
        return this.talus;
    }

    public OptimizedErode setRadius(int i10) {
        this.radius = i10;
        return this;
    }

    public OptimizedErode setTalus(float f10) {
        this.talus = f10;
        return this;
    }
}
