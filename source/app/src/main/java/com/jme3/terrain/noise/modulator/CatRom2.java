package com.jme3.terrain.noise.modulator;

import com.jme3.terrain.noise.ShaderUtils;
import java.util.HashMap;
import java.util.Map;

public class CatRom2 implements Modulator {
    private static Map<Integer, CatRom2> instances = new HashMap();
    private int sampleRate;
    private final float[] table;

    public CatRom2(int i10) {
        this.sampleRate = i10;
        int i11 = (i10 * 4) + 1;
        this.table = new float[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            float sqrt = (float) Math.sqrt(i12 / i10);
            if (sqrt < 1.0f) {
                this.table[i12] = ((sqrt * sqrt * ((sqrt * 3.0f) - 5.0f)) + 2.0f) * 0.5f;
            } else {
                this.table[i12] = ((sqrt * (((5.0f - sqrt) * sqrt) - 8.0f)) + 4.0f) * 0.5f;
            }
        }
    }

    public static CatRom2 getInstance(int i10) {
        if (!instances.containsKey(Integer.valueOf(i10))) {
            instances.put(Integer.valueOf(i10), new CatRom2(i10));
        }
        return instances.get(Integer.valueOf(i10));
    }

    @Override
    public float value(float... fArr) {
        float f10 = fArr[0];
        if (f10 >= 4.0f) {
            return 0.0f;
        }
        float f11 = (f10 * this.sampleRate) + 0.5f;
        fArr[0] = f11;
        int floor = ShaderUtils.floor(f11);
        if (floor >= (this.sampleRate * 4) + 1) {
            return 0.0f;
        }
        return this.table[floor];
    }
}
