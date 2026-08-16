package com.jme3.terrain.noise.fractal;

import com.jme3.terrain.noise.Basis;

public interface Fractal extends Basis {
    Fractal addBasis(Basis basis);

    Fractal setAmplitude(float f10);

    Fractal setFrequency(float f10);

    Fractal setLacunarity(float f10);

    Fractal setOctaves(float f10);

    Fractal setRoughness(float f10);
}
