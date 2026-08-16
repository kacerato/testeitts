package org.apache.commons.math3.analysis.integration.gauss;

import Dd.c;
import java.math.BigDecimal;
import java.math.MathContext;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.Pair;

public class LegendreHighPrecisionRuleFactory extends BaseRuleFactory<BigDecimal> {
    private final MathContext mContext;
    private final BigDecimal minusOne;
    private final BigDecimal oneHalf;
    private final BigDecimal two;

    public LegendreHighPrecisionRuleFactory() {
        this(MathContext.DECIMAL128);
    }

    @Override
    public Pair<BigDecimal[], BigDecimal[]> computeRule(int i10) throws DimensionMismatchException {
        int i11 = 1;
        if (i10 == 1) {
            return new Pair<>(new BigDecimal[]{BigDecimal.ZERO}, new BigDecimal[]{this.two});
        }
        BigDecimal[] first = getRuleInternal(i10 - 1).getFirst();
        BigDecimal[] bigDecimalArr = new BigDecimal[i10];
        BigDecimal[] bigDecimalArr2 = new BigDecimal[i10];
        int i12 = i10 / 2;
        int i13 = 0;
        while (i13 < i12) {
            BigDecimal bigDecimal = i13 == 0 ? this.minusOne : first[i13 - 1];
            BigDecimal bigDecimal2 = i12 == i11 ? BigDecimal.ONE : first[i13];
            int i14 = i11;
            BigDecimal bigDecimal3 = bigDecimal2;
            BigDecimal bigDecimal4 = BigDecimal.ONE;
            BigDecimal bigDecimal5 = bigDecimal4;
            BigDecimal bigDecimal6 = bigDecimal;
            while (i14 < i10) {
                BigDecimal[] bigDecimalArr3 = first;
                BigDecimal bigDecimal7 = new BigDecimal((i14 * 2) + 1, this.mContext);
                BigDecimal bigDecimal8 = new BigDecimal(i14, this.mContext);
                int i15 = i14 + 1;
                int i16 = i12;
                BigDecimal bigDecimal9 = new BigDecimal(i15, this.mContext);
                BigDecimal divide = bigDecimal6.multiply(bigDecimal.multiply(bigDecimal7, this.mContext), this.mContext).subtract(bigDecimal4.multiply(bigDecimal8, this.mContext), this.mContext).divide(bigDecimal9, this.mContext);
                BigDecimal divide2 = bigDecimal3.multiply(bigDecimal2.multiply(bigDecimal7, this.mContext), this.mContext).subtract(bigDecimal5.multiply(bigDecimal8, this.mContext), this.mContext).divide(bigDecimal9, this.mContext);
                bigDecimal4 = bigDecimal6;
                bigDecimal5 = bigDecimal3;
                first = bigDecimalArr3;
                i14 = i15;
                bigDecimal3 = divide2;
                bigDecimal6 = divide;
                i12 = i16;
            }
            BigDecimal[] bigDecimalArr4 = first;
            int i17 = i12;
            BigDecimal multiply = bigDecimal.add(bigDecimal2, this.mContext).multiply(this.oneHalf, this.mContext);
            BigDecimal bigDecimal10 = BigDecimal.ONE;
            boolean z10 = false;
            BigDecimal bigDecimal11 = multiply;
            while (!z10) {
                z10 = bigDecimal2.subtract(bigDecimal, this.mContext).compareTo(multiply.ulp().multiply(BigDecimal.TEN, this.mContext)) <= 0;
                bigDecimal10 = BigDecimal.ONE;
                int i18 = 1;
                bigDecimal11 = multiply;
                while (i18 < i10) {
                    BigDecimal bigDecimal12 = new BigDecimal((i18 * 2) + 1, this.mContext);
                    BigDecimal bigDecimal13 = new BigDecimal(i18, this.mContext);
                    i18++;
                    BigDecimal divide3 = bigDecimal11.multiply(multiply.multiply(bigDecimal12, this.mContext), this.mContext).subtract(bigDecimal10.multiply(bigDecimal13, this.mContext), this.mContext).divide(new BigDecimal(i18, this.mContext), this.mContext);
                    bigDecimal = bigDecimal;
                    bigDecimal10 = bigDecimal11;
                    bigDecimal11 = divide3;
                }
                BigDecimal bigDecimal14 = bigDecimal;
                if (z10) {
                    bigDecimal = bigDecimal14;
                } else {
                    if (bigDecimal6.signum() * bigDecimal11.signum() <= 0) {
                        bigDecimal2 = multiply;
                        multiply = bigDecimal14;
                    } else {
                        bigDecimal6 = bigDecimal11;
                    }
                    bigDecimal = multiply;
                    multiply = multiply.add(bigDecimal2, this.mContext).multiply(this.oneHalf, this.mContext);
                }
            }
            BigDecimal divide4 = BigDecimal.ONE.subtract(multiply.pow(2, this.mContext), this.mContext).multiply(this.two, this.mContext).divide(bigDecimal10.subtract(multiply.multiply(bigDecimal11, this.mContext), this.mContext).multiply(new BigDecimal(i10, this.mContext)).pow(2, this.mContext), this.mContext);
            bigDecimalArr[i13] = multiply;
            bigDecimalArr2[i13] = divide4;
            int i19 = (i10 - i13) - 1;
            bigDecimalArr[i19] = multiply.negate(this.mContext);
            bigDecimalArr2[i19] = divide4;
            i13++;
            i11 = 1;
            first = bigDecimalArr4;
            i12 = i17;
        }
        int i20 = i11;
        int i21 = i12;
        if (i10 % 2 != 0) {
            BigDecimal bigDecimal15 = BigDecimal.ONE;
            for (int i22 = i20; i22 < i10; i22 += 2) {
                bigDecimal15 = bigDecimal15.multiply(new BigDecimal(i22, this.mContext), this.mContext).divide(new BigDecimal(i22 + 1, this.mContext), this.mContext).negate(this.mContext);
            }
            BigDecimal divide5 = this.two.divide(bigDecimal15.multiply(new BigDecimal(i10, this.mContext), this.mContext).pow(2, this.mContext), this.mContext);
            bigDecimalArr[i21] = BigDecimal.ZERO;
            bigDecimalArr2[i21] = divide5;
        }
        return new Pair<>(bigDecimalArr, bigDecimalArr2);
    }

    public LegendreHighPrecisionRuleFactory(MathContext mathContext) {
        this.mContext = mathContext;
        this.two = new BigDecimal("2", mathContext);
        this.minusOne = new BigDecimal("-1", mathContext);
        this.oneHalf = new BigDecimal(c.f5125q, mathContext);
    }
}
