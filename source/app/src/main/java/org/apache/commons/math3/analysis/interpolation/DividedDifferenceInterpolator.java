package org.apache.commons.math3.analysis.interpolation;

import java.io.Serializable;
import org.apache.commons.math3.analysis.polynomials.PolynomialFunctionLagrangeForm;
import org.apache.commons.math3.analysis.polynomials.PolynomialFunctionNewtonForm;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;

public class DividedDifferenceInterpolator implements UnivariateInterpolator, Serializable {
    private static final long serialVersionUID = 107049519551235069L;

    public static double[] computeDividedDifference(double[] dArr, double[] dArr2) throws DimensionMismatchException, NumberIsTooSmallException, NonMonotonicSequenceException {
        PolynomialFunctionLagrangeForm.verifyInterpolationArray(dArr, dArr2, true);
        double[] dArr3 = (double[]) dArr2.clone();
        int length = dArr.length;
        double[] dArr4 = new double[length];
        dArr4[0] = dArr3[0];
        for (int i10 = 1; i10 < length; i10++) {
            int i11 = 0;
            while (i11 < length - i10) {
                int i12 = i11 + 1;
                dArr3[i11] = (dArr3[i12] - dArr3[i11]) / (dArr[i11 + i10] - dArr[i11]);
                i11 = i12;
            }
            dArr4[i10] = dArr3[0];
        }
        return dArr4;
    }

    @Override
    public PolynomialFunctionNewtonForm interpolate(double[] dArr, double[] dArr2) throws DimensionMismatchException, NumberIsTooSmallException, NonMonotonicSequenceException {
        PolynomialFunctionLagrangeForm.verifyInterpolationArray(dArr, dArr2, true);
        int length = dArr.length - 1;
        double[] dArr3 = new double[length];
        System.arraycopy(dArr, 0, dArr3, 0, length);
        return new PolynomialFunctionNewtonForm(computeDividedDifference(dArr, dArr2), dArr3);
    }
}
