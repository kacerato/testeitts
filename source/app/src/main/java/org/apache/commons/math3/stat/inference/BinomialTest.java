package org.apache.commons.math3.stat.inference;

import org.apache.commons.math3.distribution.BinomialDistribution;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class BinomialTest {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$stat$inference$AlternativeHypothesis;

        static {
            int[] iArr = new int[AlternativeHypothesis.values().length];
            $SwitchMap$org$apache$commons$math3$stat$inference$AlternativeHypothesis = iArr;
            try {
                iArr[AlternativeHypothesis.GREATER_THAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$inference$AlternativeHypothesis[AlternativeHypothesis.LESS_THAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$inference$AlternativeHypothesis[AlternativeHypothesis.TWO_SIDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean binomialTest(int i10, int i11, double d10, AlternativeHypothesis alternativeHypothesis, double d11) {
        return binomialTest(i10, i11, d10, alternativeHypothesis) < d11;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f A[EDGE_INSN: B:25:0x004f->B:22:0x004f BREAK  A[LOOP:0: B:15:0x002c->B:24:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public double binomialTest(int i10, int i11, double d10, AlternativeHypothesis alternativeHypothesis) {
        if (i10 < 0) {
            throw new NotPositiveException(Integer.valueOf(i10));
        }
        if (i11 < 0) {
            throw new NotPositiveException(Integer.valueOf(i11));
        }
        double d11 = 0.0d;
        int i12 = 0;
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        if (i10 < i11) {
            throw new MathIllegalArgumentException(LocalizedFormats.BINOMIAL_INVALID_PARAMETERS_ORDER, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        if (alternativeHypothesis != null) {
            BinomialDistribution binomialDistribution = new BinomialDistribution(null, i10, d10);
            int i13 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$stat$inference$AlternativeHypothesis[alternativeHypothesis.ordinal()];
            if (i13 == 1) {
                return 1.0d - binomialDistribution.cumulativeProbability(i11 - 1);
            }
            if (i13 == 2) {
                return binomialDistribution.cumulativeProbability(i11);
            }
            if (i13 != 3) {
                throw new MathInternalError(LocalizedFormats.OUT_OF_RANGE_SIMPLE, alternativeHypothesis, AlternativeHypothesis.TWO_SIDED, AlternativeHypothesis.LESS_THAN);
            }
            do {
                double probability = binomialDistribution.probability(i12);
                double probability2 = binomialDistribution.probability(i10);
                if (probability == probability2) {
                    d11 += probability * 2.0d;
                    i12++;
                } else if (probability < probability2) {
                    d11 += probability;
                    i12++;
                    if (i12 <= i11) {
                        break;
                    }
                } else {
                    d11 += probability2;
                }
                i10--;
                if (i12 <= i11) {
                }
            } while (i10 >= i11);
            return d11;
        }
        throw new NullArgumentException();
    }
}
