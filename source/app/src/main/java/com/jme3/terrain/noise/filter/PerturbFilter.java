package com.jme3.terrain.noise.filter;

import com.jme3.terrain.noise.ShaderUtils;
import com.jme3.terrain.noise.fractal.FractalSum;
import java.nio.FloatBuffer;
import java.util.logging.Logger;

public class PerturbFilter extends AbstractFilter {
    private float magnitude;

    private int wrap(int i10, int i11) {
        return i10 < 0 ? (i10 + i11) - 1 : i10 >= i11 ? i10 - i11 : i10;
    }

    @Override
    public FloatBuffer filter(float f10, float f11, float f12, FloatBuffer floatBuffer, int i10) {
        float[] array = floatBuffer.array();
        int ceil = (int) Math.ceil(i10 / ((this.magnitude * 2.0f) + 1.0f));
        Logger.getLogger(PerturbFilter.class.getCanonicalName()).info("Found origSize : " + ceil + " and offset: " + ((i10 - ceil) / 2) + " for workSize : " + i10 + " and magnitude : " + this.magnitude);
        float[] fArr = new float[i10 * i10];
        float[] array2 = new FractalSum().setOctaves(8.0f).setScale(5.0f).getBuffer(f10, f11, f12, i10).array();
        float[] array3 = new FractalSum().setOctaves(8.0f).setScale(5.0f).getBuffer(f10, f11, f12 + 1.0f, i10).array();
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = 0;
            while (i12 < i10) {
                int i13 = (i11 * i10) + i12;
                float f13 = array2[i13];
                float f14 = array3[i13];
                float f15 = ceil;
                float f16 = this.magnitude;
                int i14 = (int) (f15 * f13 * f16);
                int i15 = (int) (f15 * f14 * f16);
                int i16 = i11 - i15;
                int i17 = i12 - i14;
                int i18 = i14 + i12;
                int i19 = i15 + i11;
                fArr[i13] = ShaderUtils.mix(ShaderUtils.mix(array[(wrap(i16, i10) * i10) + wrap(i17, i10)], array[(wrap(i16, i10) * i10) + wrap(i18, i10)], f13), ShaderUtils.mix(array[(wrap(i19, i10) * i10) + wrap(i17, i10)], array[(wrap(i19, i10) * i10) + wrap(i18, i10)], f13), f14);
                i12++;
                array3 = array3;
            }
        }
        return FloatBuffer.wrap(fArr);
    }

    public float getMagnitude() {
        return this.magnitude;
    }

    @Override
    public int getMargin(int i10, int i11) {
        int margin = super.getMargin(i10, i11);
        return (int) Math.floor((this.magnitude * (i10 + margin)) + margin);
    }

    public void setMagnitude(float f10) {
        this.magnitude = f10;
    }
}
