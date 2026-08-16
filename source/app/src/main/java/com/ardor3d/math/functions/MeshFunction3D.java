package com.ardor3d.math.functions;

public class MeshFunction3D implements Function3D {
    private final double _lineSize;

    public MeshFunction3D() {
        this(0.5d);
    }

    @Override
    public double eval(double d10, double d11, double d12) {
        double sin = ((Math.sin(d10) + Math.sin(d11)) + Math.sin(d12)) / this._lineSize;
        return ((sin * sin) * 2.0d) - 1.0d;
    }

    public MeshFunction3D(double d10) {
        this._lineSize = d10;
    }
}
