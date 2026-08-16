package com.jme3.terrain.noise.basis;

import com.jme3.terrain.noise.Basis;
import com.jme3.terrain.noise.filter.AbstractFilter;
import com.jme3.terrain.noise.modulator.Modulator;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;

public class FilteredBasis extends AbstractFilter implements Basis {
    private Basis basis;
    private List<Modulator> modulators = new ArrayList();
    private float scale;

    public FilteredBasis() {
    }

    @Override
    public Basis addModulator(Modulator modulator) {
        this.modulators.add(modulator);
        return this;
    }

    public FloatBuffer clip(FloatBuffer floatBuffer, int i10, int i11, int i12) {
        FloatBuffer allocate = FloatBuffer.allocate(i11 * i11);
        float[] array = floatBuffer.array();
        for (int i13 = i12; i13 < i12 + i11; i13++) {
            allocate.put(array, (i13 * i10) + i12, i11);
        }
        return allocate;
    }

    @Override
    public FloatBuffer filter(float f10, float f11, float f12, FloatBuffer floatBuffer, int i10) {
        return floatBuffer;
    }

    public Basis getBasis() {
        return this.basis;
    }

    @Override
    public FloatBuffer getBuffer(float f10, float f11, float f12, int i10) {
        int margin = getMargin(i10, 0);
        int i11 = (margin * 2) + i10;
        float f13 = margin;
        return clip(doFilter(f10, f11, f12, this.basis.getBuffer(f10 - f13, f11 - f13, f12, i11), i11), i11, i10, margin);
    }

    @Override
    public float getScale() {
        return this.scale;
    }

    @Override
    public void init() {
        this.basis.init();
    }

    public void setBasis(Basis basis) {
        this.basis = basis;
    }

    @Override
    public Basis setScale(float f10) {
        this.scale = f10;
        return this;
    }

    @Override
    public float value(float f10, float f11, float f12) {
        throw new UnsupportedOperationException("Method value cannot be called on FilteredBasis and its descendants. Use getBuffer instead!");
    }

    public FilteredBasis(Basis basis) {
        this.basis = basis;
    }
}
