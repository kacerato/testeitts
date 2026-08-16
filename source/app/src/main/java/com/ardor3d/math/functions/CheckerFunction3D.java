package com.ardor3d.math.functions;

import com.ardor3d.math.MathUtils;

public class CheckerFunction3D implements Function3D {
    @Override
    public double eval(double d10, double d11, double d12) {
        return ((MathUtils.floor(d10) + MathUtils.floor(d11)) + MathUtils.floor(d12)) % 2 == 0 ? -1.0d : 1.0d;
    }
}
