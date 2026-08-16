package com.jme3.terrain.noise;

import com.jme3.terrain.noise.modulator.Modulator;
import java.nio.FloatBuffer;

public interface Basis {
    Basis addModulator(Modulator modulator);

    FloatBuffer getBuffer(float f10, float f11, float f12, int i10);

    float getScale();

    void init();

    Basis setScale(float f10);

    float value(float f10, float f11, float f12);
}
