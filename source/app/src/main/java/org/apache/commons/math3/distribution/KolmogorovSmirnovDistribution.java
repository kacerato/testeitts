package org.apache.commons.math3.distribution;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.fraction.BigFractionField;
import org.apache.commons.math3.fraction.FractionConversionException;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.FieldMatrix;
import org.apache.commons.math3.util.FastMath;

public class KolmogorovSmirnovDistribution implements Serializable {
    private static final long serialVersionUID = -4670676796862967187L;

    private int f100151n;

    public KolmogorovSmirnovDistribution(int i10) throws NotStrictlyPositiveException {
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_NUMBER_OF_SAMPLES, Integer.valueOf(i10));
        }
        this.f100151n = i10;
    }

    private FieldMatrix<BigFraction> createH(double d10) throws NumberIsTooLargeException, FractionConversionException {
        BigFraction bigFraction;
        int i10;
        int ceil = (int) FastMath.ceil(this.f100151n * d10);
        int i11 = ceil * 2;
        int i12 = i11 - 1;
        double d11 = ceil - (this.f100151n * d10);
        if (d11 >= 1.0d) {
            throw new NumberIsTooLargeException(Double.valueOf(d11), Double.valueOf(1.0d), false);
        }
        try {
            try {
                bigFraction = new BigFraction(d11, 1.0E-20d, 10000);
            } catch (FractionConversionException unused) {
                bigFraction = new BigFraction(d11, 1.0E-5d, 10000);
            }
        } catch (FractionConversionException unused2) {
            bigFraction = new BigFraction(d11, 1.0E-10d, 10000);
        }
        BigFraction[][] bigFractionArr = (BigFraction[][]) Array.newInstance((Class<?>) BigFraction.class, i12, i12);
        for (int i13 = 0; i13 < i12; i13++) {
            for (int i14 = 0; i14 < i12; i14++) {
                if ((i13 - i14) + 1 < 0) {
                    bigFractionArr[i13][i14] = BigFraction.ZERO;
                } else {
                    bigFractionArr[i13][i14] = BigFraction.ONE;
                }
            }
        }
        BigFraction[] bigFractionArr2 = new BigFraction[i12];
        bigFractionArr2[0] = bigFraction;
        for (int i15 = 1; i15 < i12; i15++) {
            bigFractionArr2[i15] = bigFraction.multiply(bigFractionArr2[i15 - 1]);
        }
        for (int i16 = 0; i16 < i12; i16++) {
            BigFraction[] bigFractionArr3 = bigFractionArr[i16];
            bigFractionArr3[0] = bigFractionArr3[0].subtract(bigFractionArr2[i16]);
            BigFraction[] bigFractionArr4 = bigFractionArr[i11 - 2];
            bigFractionArr4[i16] = bigFractionArr4[i16].subtract(bigFractionArr2[(i12 - i16) - 1]);
        }
        if (bigFraction.compareTo(BigFraction.ONE_HALF) == 1) {
            BigFraction[] bigFractionArr5 = bigFractionArr[i11 - 2];
            bigFractionArr5[0] = bigFractionArr5[0].add(bigFraction.multiply(2).subtract(1).pow(i12));
        }
        int i17 = 0;
        while (i17 < i12) {
            int i18 = 0;
            while (true) {
                i10 = i17 + 1;
                if (i18 < i10) {
                    int i19 = (i17 - i18) + 1;
                    if (i19 > 0) {
                        for (int i20 = 2; i20 <= i19; i20++) {
                            BigFraction[] bigFractionArr6 = bigFractionArr[i17];
                            bigFractionArr6[i18] = bigFractionArr6[i18].divide(i20);
                        }
                    }
                    i18++;
                }
            }
            i17 = i10;
        }
        return new Array2DRowFieldMatrix(BigFractionField.getInstance(), bigFractionArr);
    }

    private double exactK(double d10) throws MathArithmeticException {
        int ceil = ((int) FastMath.ceil(this.f100151n * d10)) - 1;
        BigFraction entry = createH(d10).power(this.f100151n).getEntry(ceil, ceil);
        for (int i10 = 1; i10 <= this.f100151n; i10++) {
            entry = entry.multiply(i10).divide(this.f100151n);
        }
        return entry.bigDecimalValue(20, 4).doubleValue();
    }

    private double roundedK(double d10) throws MathArithmeticException {
        int ceil = (int) FastMath.ceil(this.f100151n * d10);
        FieldMatrix<BigFraction> createH = createH(d10);
        int rowDimension = createH.getRowDimension();
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(rowDimension, rowDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < rowDimension; i11++) {
                array2DRowRealMatrix.setEntry(i10, i11, createH.getEntry(i10, i11).doubleValue());
            }
        }
        int i12 = 1;
        int i13 = ceil - 1;
        double entry = array2DRowRealMatrix.power(this.f100151n).getEntry(i13, i13);
        while (true) {
            int i14 = this.f100151n;
            if (i12 > i14) {
                return entry;
            }
            entry *= i12 / i14;
            i12++;
        }
    }

    public double cdf(double d10) throws MathArithmeticException {
        return cdf(d10, false);
    }

    public double cdfExact(double d10) throws MathArithmeticException {
        return cdf(d10, true);
    }

    public double cdf(double d10, boolean z10) throws MathArithmeticException {
        int i10 = this.f100151n;
        double d11 = 1.0d;
        double d12 = 1.0d / i10;
        double d13 = 0.5d * d12;
        if (d10 <= d13) {
            return 0.0d;
        }
        if (d13 >= d10 || d10 > d12) {
            if (1.0d - d12 <= d10 && d10 < 1.0d) {
                return 1.0d - (FastMath.pow(1.0d - d10, i10) * 2.0d);
            }
            if (1.0d <= d10) {
                return 1.0d;
            }
            return z10 ? exactK(d10) : roundedK(d10);
        }
        double d14 = (d10 * 2.0d) - d12;
        for (int i11 = 1; i11 <= this.f100151n; i11++) {
            d11 *= i11 * d14;
        }
        return d11;
    }
}
