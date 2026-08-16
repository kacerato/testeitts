package com.jme3.terrain.noise.fractal;

import com.jme3.terrain.noise.Basis;
import com.jme3.terrain.noise.ShaderUtils;
import com.jme3.terrain.noise.basis.ImprovedNoise;
import com.jme3.terrain.noise.basis.Noise;

public class FractalSum extends Noise implements Fractal {
    private int maxFreq;
    private float octaves;
    private Basis basis = new ImprovedNoise();
    private float lacunarity = 2.124367f;
    private float amplitude = 1.0f;
    private float roughness = 0.6f;
    private float frequency = 1.0f;

    public FractalSum() {
        setOctaves(1.0f);
    }

    @Override
    public Fractal addBasis(Basis basis) {
        this.basis = basis;
        return this;
    }

    public float getAmplitude() {
        return this.amplitude;
    }

    public float getFrequency() {
        return this.frequency;
    }

    public float getLacunarity() {
        return this.lacunarity;
    }

    public float getOctaves() {
        return this.octaves;
    }

    public float getRoughness() {
        return this.roughness;
    }

    @Override
    public void init() {
    }

    @Override
    public Fractal setAmplitude(float f10) {
        this.amplitude = f10;
        return this;
    }

    @Override
    public Fractal setFrequency(float f10) {
        this.frequency = f10;
        return this;
    }

    @Override
    public Fractal setLacunarity(float f10) {
        this.lacunarity = f10;
        return this;
    }

    @Override
    public Fractal setOctaves(float f10) {
        this.octaves = f10;
        this.maxFreq = 1 << ((int) f10);
        return this;
    }

    @Override
    public Fractal setRoughness(float f10) {
        this.roughness = f10;
        return this;
    }

    @Override
    public float value(float f10, float f11, float f12) {
        float f13 = this.frequency;
        float f14 = this.amplitude;
        float f15 = 0.0f;
        while (f13 < this.maxFreq) {
            Basis basis = this.basis;
            float f16 = this.scale;
            f15 += basis.value(f16 * f10 * f13, f16 * f11 * f13, f16 * f12 * f13) * f14;
            f13 *= this.lacunarity;
            f14 *= this.roughness;
        }
        return ShaderUtils.clamp(f15, -1.0f, 1.0f);
    }
}
