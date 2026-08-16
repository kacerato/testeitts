package org.apache.commons.math3.complex;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

public class ComplexUtils {
    private ComplexUtils() {
    }

    public static Complex[] convertToComplex(double[] dArr) {
        Complex[] complexArr = new Complex[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            complexArr[i10] = new Complex(dArr[i10], 0.0d);
        }
        return complexArr;
    }

    public static Complex polar2Complex(double d10, double d11) throws MathIllegalArgumentException {
        if (d10 >= 0.0d) {
            return new Complex(FastMath.cos(d11) * d10, d10 * FastMath.sin(d11));
        }
        throw new MathIllegalArgumentException(LocalizedFormats.NEGATIVE_COMPLEX_MODULE, Double.valueOf(d10));
    }
}
