package org.apache.commons.math3.analysis.integration.gauss;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.Pair;

public class LegendreRuleFactory extends BaseRuleFactory<Double> {
    @Override
    public Pair<Double[], Double[]> computeRule(int i10) throws DimensionMismatchException {
        Double valueOf = Double.valueOf(0.0d);
        int i11 = 1;
        if (i10 == 1) {
            return new Pair<>(new Double[]{valueOf}, new Double[]{Double.valueOf(2.0d)});
        }
        Double[] first = getRuleInternal(i10 - 1).getFirst();
        Double[] dArr = new Double[i10];
        Double[] dArr2 = new Double[i10];
        int i12 = i10 / 2;
        int i13 = 0;
        while (i13 < i12) {
            double doubleValue = i13 == 0 ? -1.0d : first[i13 - 1].doubleValue();
            double doubleValue2 = i12 == i11 ? 1.0d : first[i13].doubleValue();
            int i14 = i11;
            double d10 = doubleValue;
            double d11 = 1.0d;
            while (i14 < i10) {
                int i15 = i14 + 1;
                double d12 = (((((i14 * 2) + 1) * doubleValue) * d10) - (i14 * d11)) / i15;
                i14 = i15;
                d11 = d10;
                d10 = d12;
            }
            double d13 = (doubleValue + doubleValue2) * 0.5d;
            double d14 = d13;
            int i16 = 0;
            double d15 = 1.0d;
            while (i16 == 0) {
                i16 = doubleValue2 - doubleValue <= Math.ulp(d13) ? i11 : 0;
                d14 = d13;
                int i17 = i11;
                d15 = 1.0d;
                while (i17 < i10) {
                    double d16 = ((((i17 * 2) + i11) * d13) * d14) - (i17 * d15);
                    i17++;
                    d15 = d14;
                    valueOf = valueOf;
                    d14 = d16 / i17;
                    first = first;
                    i11 = 1;
                }
                Double d17 = valueOf;
                Double[] dArr3 = first;
                if (i16 == 0) {
                    if (d10 * d14 <= 0.0d) {
                        doubleValue2 = d13;
                    } else {
                        doubleValue = d13;
                        d10 = d14;
                    }
                    d13 = (doubleValue + doubleValue2) * 0.5d;
                    first = dArr3;
                    valueOf = d17;
                } else {
                    first = dArr3;
                    valueOf = d17;
                }
                i11 = 1;
            }
            double d18 = i10 * (d15 - (d14 * d13));
            double d19 = ((1.0d - (d13 * d13)) * 2.0d) / (d18 * d18);
            dArr[i13] = Double.valueOf(d13);
            dArr2[i13] = Double.valueOf(d19);
            int i18 = (i10 - i13) - 1;
            dArr[i18] = Double.valueOf(-d13);
            dArr2[i18] = Double.valueOf(d19);
            i13++;
            i11 = 1;
            valueOf = valueOf;
        }
        Double d20 = valueOf;
        int i19 = i11;
        if (i10 % 2 != 0) {
            double d21 = 1.0d;
            for (int i20 = i19; i20 < i10; i20 += 2) {
                d21 = ((-i20) * d21) / (i20 + 1);
            }
            double d22 = i10 * d21;
            dArr[i12] = d20;
            dArr2[i12] = Double.valueOf(2.0d / (d22 * d22));
        }
        return new Pair<>(dArr, dArr2);
    }
}
