package org.apache.commons.math3.ml.distance;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class CanberraDistance implements DistanceMeasure {
    private static final long serialVersionUID = -6972277381587032228L;

    @Override
    public double compute(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        MathArrays.checkEqualLength(dArr, dArr2);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double abs = FastMath.abs(dArr[i10] - dArr2[i10]);
            double abs2 = FastMath.abs(dArr[i10]) + FastMath.abs(dArr2[i10]);
            d10 += (abs == 0.0d && abs2 == 0.0d) ? 0.0d : abs / abs2;
        }
        return d10;
    }
}
