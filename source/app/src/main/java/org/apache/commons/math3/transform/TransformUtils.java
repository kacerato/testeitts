package org.apache.commons.math3.transform;

import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.math3.complex.Complex;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class TransformUtils {
    private static final int[] POWERS_OF_TWO = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824};

    private TransformUtils() {
    }

    public static Complex[] createComplexArray(double[][] dArr) throws DimensionMismatchException {
        if (dArr.length != 2) {
            throw new DimensionMismatchException(dArr.length, 2);
        }
        double[] dArr2 = dArr[0];
        double[] dArr3 = dArr[1];
        if (dArr2.length != dArr3.length) {
            throw new DimensionMismatchException(dArr3.length, dArr2.length);
        }
        int length = dArr2.length;
        Complex[] complexArr = new Complex[length];
        for (int i10 = 0; i10 < length; i10++) {
            complexArr[i10] = new Complex(dArr2[i10], dArr3[i10]);
        }
        return complexArr;
    }

    public static double[][] createRealImaginaryArray(Complex[] complexArr) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, 2, complexArr.length);
        double[] dArr2 = dArr[0];
        double[] dArr3 = dArr[1];
        for (int i10 = 0; i10 < complexArr.length; i10++) {
            Complex complex = complexArr[i10];
            dArr2[i10] = complex.getReal();
            dArr3[i10] = complex.getImaginary();
        }
        return dArr;
    }

    public static int exactLog2(int i10) throws MathIllegalArgumentException {
        int binarySearch = Arrays.binarySearch(POWERS_OF_TWO, i10);
        if (binarySearch >= 0) {
            return binarySearch;
        }
        throw new MathIllegalArgumentException(LocalizedFormats.NOT_POWER_OF_TWO_CONSIDER_PADDING, Integer.valueOf(i10));
    }

    public static double[] scaleArray(double[] dArr, double d10) {
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr[i10] = dArr[i10] * d10;
        }
        return dArr;
    }

    public static Complex[] scaleArray(Complex[] complexArr, double d10) {
        for (int i10 = 0; i10 < complexArr.length; i10++) {
            complexArr[i10] = new Complex(complexArr[i10].getReal() * d10, complexArr[i10].getImaginary() * d10);
        }
        return complexArr;
    }
}
