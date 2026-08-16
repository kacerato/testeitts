package com.ardor3d.math.functions;

public class MandelbrotFunction3D implements Function3D {
    private int _iterations;

    public MandelbrotFunction3D(int i10) {
        setIterations(i10);
    }

    @Override
    public double eval(double d10, double d11, double d12) {
        double d13 = 0.0d;
        int i10 = 0;
        double d14 = 0.0d;
        while (true) {
            double d15 = d13 * d13;
            double d16 = d14 * d14;
            if (d15 + d16 > 4.0d || i10 >= this._iterations) {
                break;
            }
            d14 = (d13 * 2.0d * d14) + d11;
            i10++;
            d13 = (d15 - d16) + d10;
        }
        int i11 = this._iterations;
        if (i10 == i11) {
            return 1.0d;
        }
        return ((i10 / i11) * 2.0d) - 1.0d;
    }

    public int getIterations() {
        return this._iterations;
    }

    public void setIterations(int i10) {
        this._iterations = i10;
    }
}
