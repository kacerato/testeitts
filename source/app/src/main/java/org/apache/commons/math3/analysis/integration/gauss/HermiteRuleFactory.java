package org.apache.commons.math3.analysis.integration.gauss;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Pair;

public class HermiteRuleFactory extends BaseRuleFactory<Double> {

    private static final double f100123H0 = 0.7511255444649425d;

    private static final double f100124H1 = 1.0622519320271968d;
    private static final double SQRT_PI = 1.772453850905516d;

    @Override
    public Pair<Double[], Double[]> computeRule(int i10) throws DimensionMismatchException {
        double d10;
        Double valueOf = Double.valueOf(0.0d);
        int i11 = 1;
        if (i10 == 1) {
            return new Pair<>(new Double[]{valueOf}, new Double[]{Double.valueOf(SQRT_PI)});
        }
        int i12 = i10 - 1;
        Double[] first = getRuleInternal(i12).getFirst();
        Double[] dArr = new Double[i10];
        Double[] dArr2 = new Double[i10];
        double sqrt = FastMath.sqrt(i12 * 2);
        double sqrt2 = FastMath.sqrt(i10 * 2);
        int i13 = i10 / 2;
        int i14 = 0;
        while (true) {
            d10 = f100123H0;
            if (i14 >= i13) {
                break;
            }
            double doubleValue = i14 == 0 ? -sqrt : first[i14 - 1].doubleValue();
            double doubleValue2 = i13 == i11 ? -0.5d : first[i14].doubleValue();
            double d11 = doubleValue * f100124H1;
            double d12 = 0.7511255444649425d;
            while (i11 < i10) {
                int i15 = i11 + 1;
                double d13 = sqrt;
                double d14 = i15;
                double sqrt3 = ((FastMath.sqrt(2.0d / d14) * doubleValue) * d11) - (FastMath.sqrt(i11 / d14) * d12);
                d12 = d11;
                sqrt = d13;
                i11 = i15;
                d11 = sqrt3;
                first = first;
            }
            Double[] dArr3 = first;
            double d15 = sqrt;
            double d16 = (doubleValue + doubleValue2) * 0.5d;
            double d17 = 0.7511255444649425d;
            boolean z10 = false;
            while (!z10) {
                z10 = doubleValue2 - doubleValue <= Math.ulp(d16);
                double d18 = d16 * f100124H1;
                double d19 = 0.7511255444649425d;
                int i16 = 1;
                while (i16 < i10) {
                    int i17 = i16 + 1;
                    double d20 = doubleValue;
                    double d21 = i17;
                    double sqrt4 = ((FastMath.sqrt(2.0d / d21) * d16) * d18) - (FastMath.sqrt(i16 / d21) * d19);
                    d19 = d18;
                    i16 = i17;
                    d18 = sqrt4;
                    doubleValue = d20;
                }
                double d22 = doubleValue;
                if (z10) {
                    d17 = d19;
                    doubleValue = d22;
                } else {
                    if (d11 * d18 < 0.0d) {
                        doubleValue2 = d16;
                        doubleValue = d22;
                    } else {
                        doubleValue = d16;
                        d11 = d18;
                    }
                    d16 = (doubleValue + doubleValue2) * 0.5d;
                    d17 = d19;
                }
            }
            double d23 = d17 * sqrt2;
            double d24 = 2.0d / (d23 * d23);
            dArr[i14] = Double.valueOf(d16);
            dArr2[i14] = Double.valueOf(d24);
            int i18 = i12 - i14;
            dArr[i18] = Double.valueOf(-d16);
            dArr2[i18] = Double.valueOf(d24);
            i14++;
            sqrt = d15;
            first = dArr3;
            i11 = 1;
        }
        if (i10 % 2 != 0) {
            for (int i19 = 1; i19 < i10; i19 += 2) {
                d10 *= -FastMath.sqrt(i19 / (i19 + 1));
            }
            double d25 = sqrt2 * d10;
            dArr[i13] = valueOf;
            dArr2[i13] = Double.valueOf(2.0d / (d25 * d25));
        }
        return new Pair<>(dArr, dArr2);
    }
}
