package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.util.FastMath;

public class InterpolatingMicrosphere2D extends InterpolatingMicrosphere {
    private static final int DIMENSION = 2;

    public InterpolatingMicrosphere2D(int i10, double d10, double d11, double d12) {
        super(2, i10, d10, d11, d12);
        for (int i11 = 0; i11 < i10; i11++) {
            double d13 = (i11 * 6.283185307179586d) / i10;
            add(new double[]{FastMath.cos(d13), FastMath.sin(d13)}, false);
        }
    }

    @Override
    public InterpolatingMicrosphere2D copy() {
        return new InterpolatingMicrosphere2D(this);
    }

    public InterpolatingMicrosphere2D(InterpolatingMicrosphere2D interpolatingMicrosphere2D) {
        super(interpolatingMicrosphere2D);
    }
}
