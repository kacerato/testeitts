package com.simsilica.mathd.util;

import b3.s;

public class FixedIntRange implements IntRange {
    private int min;
    private int size;

    public FixedIntRange(int i10, int i11) {
        this.min = i10;
        this.size = (i11 - i10) + 1;
    }

    @Override
    public int getLength() {
        return this.size;
    }

    @Override
    public int getMaxValue() {
        return (this.min + this.size) - 1;
    }

    @Override
    public int getMinValue() {
        return this.min;
    }

    public String toString() {
        return "IntRange[" + getMinValue() + s.f32937c + getMaxValue() + "]";
    }
}
