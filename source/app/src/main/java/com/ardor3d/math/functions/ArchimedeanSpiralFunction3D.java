package com.ardor3d.math.functions;

public class ArchimedeanSpiralFunction3D implements Function3D {
    private static final int DEFAULT_ROUGHNESS = 1;
    private final int _numArms;
    private final Function3D _turbulenceFunction;
    private static final double DEFAULT_FREQUENCY = 0.2d;
    private static final Function3D DEFAULT_TURBULENCE = new FbmFunction3D(Functions.simplexNoise(), 1, DEFAULT_FREQUENCY, 0.5d, 2.0d);

    public ArchimedeanSpiralFunction3D(int i10, boolean z10) {
        this(i10, z10 ? DEFAULT_TURBULENCE : null);
    }

    @Override
    public double eval(double d10, double d11, double d12) {
        double asin;
        double sqrt = Math.sqrt((d10 * d10) + (d11 * d11));
        if (sqrt == 0.0d) {
            asin = 0.0d;
        } else {
            asin = d10 < 0.0d ? 4.71238898038469d - Math.asin(d11 / sqrt) : 1.5707963267948966d + Math.asin(d11 / sqrt);
        }
        Function3D function3D = this._turbulenceFunction;
        return (((((d12 + sqrt) + ((this._numArms * asin) / 6.283185307179586d)) + (function3D != null ? function3D.eval(d10, d11, d12) : 0.0d)) % 1.0d) * 2.0d) - 1.0d;
    }

    public ArchimedeanSpiralFunction3D(int i10, Function3D function3D) {
        this._numArms = i10;
        this._turbulenceFunction = function3D;
    }
}
