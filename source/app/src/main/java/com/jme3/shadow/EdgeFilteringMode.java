package com.jme3.shadow;

public enum EdgeFilteringMode {
    Nearest(10),
    Bilinear(1),
    Dither(2),
    PCF4(3),
    PCFPOISSON(4),
    PCF8(5);

    int materialParamValue;

    EdgeFilteringMode(int i10) {
        this.materialParamValue = i10;
    }

    public int getMaterialParamValue() {
        return this.materialParamValue;
    }
}
