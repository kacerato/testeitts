package com.ardor3d.math.functions;

public class CloudsFunction3D extends FbmFunction3D {
    public static final int MAX_OCTAVES = 32;

    public CloudsFunction3D(Function3D function3D, int i10, double d10, double d11, double d12) {
        super(function3D, i10, d10, d11, d12);
    }

    @Override
    public double getValue(double d10, double d11, double d12) {
        return (Math.abs(getSource().eval(d10, d11, d12)) * 2.0d) - 1.0d;
    }
}
