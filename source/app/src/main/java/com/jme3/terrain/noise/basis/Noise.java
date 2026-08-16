package com.jme3.terrain.noise.basis;

import com.jme3.terrain.noise.Basis;
import com.jme3.terrain.noise.modulator.Modulator;
import com.jme3.terrain.noise.modulator.NoiseModulator;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;

public abstract class Noise implements Basis {
    protected List<Modulator> modulators = new ArrayList();
    protected float scale = 1.0f;

    @Override
    public Basis addModulator(Modulator modulator) {
        this.modulators.add(modulator);
        return this;
    }

    @Override
    public FloatBuffer getBuffer(float f10, float f11, float f12, int i10) {
        FloatBuffer allocate = FloatBuffer.allocate(i10 * i10);
        for (int i11 = 0; i11 < i10; i11++) {
            for (int i12 = 0; i12 < i10; i12++) {
                float f13 = i10;
                allocate.put(modulate((i12 + f10) / f13, (i11 + f11) / f13, f12));
            }
        }
        return allocate;
    }

    @Override
    public float getScale() {
        return this.scale;
    }

    public float modulate(float f10, float f11, float f12) {
        float value = value(f10, f11, f12);
        for (Modulator modulator : this.modulators) {
            if (modulator instanceof NoiseModulator) {
                value = modulator.value(value);
            }
        }
        return value;
    }

    @Override
    public Basis setScale(float f10) {
        this.scale = f10;
        return this;
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
