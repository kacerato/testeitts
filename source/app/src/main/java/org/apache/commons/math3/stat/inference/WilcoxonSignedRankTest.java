package org.apache.commons.math3.stat.inference;

import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.ranking.NaNStrategy;
import org.apache.commons.math3.stat.ranking.NaturalRanking;
import org.apache.commons.math3.stat.ranking.TiesStrategy;
import org.apache.commons.math3.util.FastMath;

public class WilcoxonSignedRankTest {
    private NaturalRanking naturalRanking;

    public WilcoxonSignedRankTest() {
        this.naturalRanking = new NaturalRanking(NaNStrategy.FIXED, TiesStrategy.AVERAGE);
    }

    private double[] calculateAbsoluteDifferences(double[] dArr) throws NullArgumentException, NoDataException {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        double[] dArr2 = new double[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr2[i10] = FastMath.abs(dArr[i10]);
        }
        return dArr2;
    }

    private double calculateAsymptoticPValue(double d10, int i10) {
        double d11 = ((i10 + 1) * i10) / 4.0d;
        return new NormalDistribution((RandomGenerator) null, 0.0d, 1.0d).cumulativeProbability(((d10 - d11) - 0.5d) / FastMath.sqrt((((i10 * 2) + 1) / 6.0d) * d11)) * 2.0d;
    }

    private double[] calculateDifferences(double[] dArr, double[] dArr2) {
        double[] dArr3 = new double[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr3[i10] = dArr2[i10] - dArr[i10];
        }
        return dArr3;
    }

    private double calculateExactPValue(double d10, int i10) {
        int i11 = 1 << i10;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = 0;
            for (int i15 = 0; i15 < i10; i15++) {
                if (((i13 >> i15) & 1) == 1) {
                    i14 += i15 + 1;
                }
            }
            if (i14 >= d10) {
                i12++;
            }
        }
        return (i12 * 2.0d) / i11;
    }

    private void ensureDataConformance(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0 || dArr2.length == 0) {
            throw new NoDataException();
        }
        if (dArr2.length != dArr.length) {
            throw new DimensionMismatchException(dArr2.length, dArr.length);
        }
    }

    public double wilcoxonSignedRank(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException {
        ensureDataConformance(dArr, dArr2);
        double[] calculateDifferences = calculateDifferences(dArr, dArr2);
        double[] rank = this.naturalRanking.rank(calculateAbsoluteDifferences(calculateDifferences));
        double d10 = 0.0d;
        for (int i10 = 0; i10 < calculateDifferences.length; i10++) {
            if (calculateDifferences[i10] > 0.0d) {
                d10 += rank[i10];
            }
        }
        int length = dArr.length;
        return FastMath.max(d10, ((length * (length + 1)) / 2.0d) - d10);
    }

    public double wilcoxonSignedRankTest(double[] dArr, double[] dArr2, boolean z10) throws NullArgumentException, NoDataException, DimensionMismatchException, NumberIsTooLargeException, ConvergenceException, MaxCountExceededException {
        ensureDataConformance(dArr, dArr2);
        int length = dArr.length;
        double wilcoxonSignedRank = wilcoxonSignedRank(dArr, dArr2);
        if (!z10 || length <= 30) {
            return z10 ? calculateExactPValue(wilcoxonSignedRank, length) : calculateAsymptoticPValue((((length + 1) * length) / 2.0d) - wilcoxonSignedRank, length);
        }
        throw new NumberIsTooLargeException(Integer.valueOf(length), 30, true);
    }

    public WilcoxonSignedRankTest(NaNStrategy naNStrategy, TiesStrategy tiesStrategy) {
        this.naturalRanking = new NaturalRanking(naNStrategy, tiesStrategy);
    }
}
