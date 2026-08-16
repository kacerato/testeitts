package com.ardor3d.math.functions;

import com.ardor3d.math.MathUtils;

public class CylinderFunction3D implements Function3D {
    private double _frequency;

    public CylinderFunction3D(double d10) {
        setFrequency(d10);
    }

    @Override
    public double eval(double d10, double d11, double d12) {
        double d13 = this._frequency;
        double d14 = d10 * d13;
        double d15 = d12 * d13;
        double sqrt = MathUtils.sqrt((d14 * d14) + (d15 * d15)) - MathUtils.floor(r1);
        return 1.0d - (Math.min(sqrt, 1.0d - sqrt) * 4.0d);
    }

    public double getFrequency() {
        return this._frequency;
    }

    public void setFrequency(double d10) {
        this._frequency = d10;
    }
}
