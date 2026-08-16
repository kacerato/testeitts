package org.apache.commons.math3.analysis.interpolation;

import java.util.Arrays;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.InsufficientDataException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathArrays;

public class PiecewiseBicubicSplineInterpolatingFunction implements BivariateFunction {
    private static final int MIN_NUM_POINTS = 5;
    private final double[][] fval;
    private final double[] xval;
    private final double[] yval;

    public PiecewiseBicubicSplineInterpolatingFunction(double[] dArr, double[] dArr2, double[][] dArr3) throws DimensionMismatchException, NullArgumentException, NoDataException, NonMonotonicSequenceException {
        double[] dArr4;
        if (dArr == null || dArr2 == null || dArr3 == null || (dArr4 = dArr3[0]) == null) {
            throw new NullArgumentException();
        }
        int length = dArr.length;
        int length2 = dArr2.length;
        if (length == 0 || length2 == 0 || dArr3.length == 0 || dArr4.length == 0) {
            throw new NoDataException();
        }
        if (length < 5 || length2 < 5 || dArr3.length < 5 || dArr4.length < 5) {
            throw new InsufficientDataException();
        }
        if (length != dArr3.length) {
            throw new DimensionMismatchException(length, dArr3.length);
        }
        if (length2 != dArr4.length) {
            throw new DimensionMismatchException(length2, dArr3[0].length);
        }
        MathArrays.checkOrder(dArr);
        MathArrays.checkOrder(dArr2);
        this.xval = (double[]) dArr.clone();
        this.yval = (double[]) dArr2.clone();
        this.fval = (double[][]) dArr3.clone();
    }

    private int searchIndex(double d10, double[] dArr, int i10, int i11) {
        int binarySearch = Arrays.binarySearch(dArr, d10);
        if (binarySearch == -1 || binarySearch == (-dArr.length) - 1) {
            throw new OutOfRangeException(Double.valueOf(d10), Double.valueOf(dArr[0]), Double.valueOf(dArr[dArr.length - 1]));
        }
        int i12 = binarySearch < 0 ? ((-binarySearch) - i10) - 1 : binarySearch - i10;
        int i13 = i12 >= 0 ? i12 : 0;
        return i13 + i11 >= dArr.length ? dArr.length - i11 : i13;
    }

    public boolean isValidPoint(double d10, double d11) {
        double[] dArr = this.xval;
        if (d10 >= dArr[0] && d10 <= dArr[dArr.length - 1]) {
            double[] dArr2 = this.yval;
            if (d11 >= dArr2[0] && d11 <= dArr2[dArr2.length - 1]) {
                return true;
            }
        }
        return false;
    }

    @Override
    public double value(double d10, double d11) throws OutOfRangeException {
        AkimaSplineInterpolator akimaSplineInterpolator = new AkimaSplineInterpolator();
        int searchIndex = searchIndex(d10, this.xval, 2, 5);
        int searchIndex2 = searchIndex(d11, this.yval, 2, 5);
        double[] dArr = new double[5];
        double[] dArr2 = new double[5];
        double[] dArr3 = new double[5];
        double[] dArr4 = new double[5];
        for (int i10 = 0; i10 < 5; i10++) {
            dArr[i10] = this.xval[searchIndex + i10];
            dArr2[i10] = this.yval[searchIndex2 + i10];
        }
        for (int i11 = 0; i11 < 5; i11++) {
            for (int i12 = 0; i12 < 5; i12++) {
                dArr3[i12] = this.fval[searchIndex + i12][searchIndex2 + i11];
            }
            dArr4[i11] = akimaSplineInterpolator.interpolate(dArr, dArr3).value(d10);
        }
        return akimaSplineInterpolator.interpolate(dArr2, dArr4).value(d11);
    }
}
