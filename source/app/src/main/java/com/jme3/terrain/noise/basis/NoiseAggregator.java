package com.jme3.terrain.noise.basis;

import com.jme3.terrain.noise.Basis;

public class NoiseAggregator extends Noise {

    private final Basis f81641a;

    private final Basis f81642b;
    private final float rate;

    public NoiseAggregator(Basis basis, Basis basis2, float f10) {
        this.f81641a = basis;
        this.f81642b = basis2;
        this.rate = f10;
    }

    @Override
    public void init() {
        this.f81641a.init();
        this.f81642b.init();
    }

    @Override
    public float value(float f10, float f11, float f12) {
        float value = this.f81641a.value(f10, f11, f12);
        float f13 = this.rate;
        return (value * (1.0f - f13)) + (f13 * this.f81642b.value(f10, f11, f12));
    }
}
