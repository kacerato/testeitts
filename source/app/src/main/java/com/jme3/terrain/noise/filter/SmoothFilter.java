package com.jme3.terrain.noise.filter;

import java.nio.FloatBuffer;

public class SmoothFilter extends AbstractFilter {
    private float effect;
    private int radius;

    @Override
    public FloatBuffer filter(float f10, float f11, float f12, FloatBuffer floatBuffer, int i10) {
        int i11;
        float[] array = floatBuffer.array();
        float[] fArr = new float[array.length];
        int i12 = this.radius;
        while (true) {
            int i13 = this.radius;
            if (i12 >= i10 - i13) {
                return FloatBuffer.wrap(fArr);
            }
            while (true) {
                int i14 = this.radius;
                if (i13 < i10 - i14) {
                    int i15 = (i12 * i10) + i13;
                    int i16 = -i14;
                    float f13 = 0.0f;
                    while (true) {
                        i11 = this.radius;
                        if (i16 < i11 + 1) {
                            for (int i17 = -i11; i17 < this.radius + 1; i17++) {
                                f13 += array[((i12 + i16) * i10) + i13 + i17];
                            }
                            i16++;
                        }
                    }
                    float f14 = this.effect;
                    fArr[i15] = ((f13 * f14) / (((i11 * 4) * (i11 + 1)) + 1)) + ((1.0f - f14) * array[i15]);
                    i13++;
                }
            }
            i12++;
        }
    }

    public float getEffect() {
        return this.effect;
    }

    @Override
    public int getMargin(int i10, int i11) {
        return super.getMargin(i10, i11) + this.radius;
    }

    public int getRadius() {
        return this.radius;
    }

    public void setEffect(float f10) {
        this.effect = f10;
    }

    public void setRadius(int i10) {
        this.radius = i10;
    }
}
