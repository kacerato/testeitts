package org.apache.commons.math3.ml.distance;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class EarthMoversDistance implements DistanceMeasure {
    private static final long serialVersionUID = -5406732779747414922L;

    @Override
    public double compute(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        MathArrays.checkEqualLength(dArr, dArr2);
        double d10 = 0.0d;
        double d11 = 0.0d;
        for (int i10 = 0; i10 < dArr.length; i10++) {
            d11 = (dArr[i10] + d11) - dArr2[i10];
            d10 += FastMath.abs(d11);
        }
        return d10;
    }
}
