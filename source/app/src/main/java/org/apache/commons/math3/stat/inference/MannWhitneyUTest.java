package org.apache.commons.math3.stat.inference;

import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.ranking.NaNStrategy;
import org.apache.commons.math3.stat.ranking.NaturalRanking;
import org.apache.commons.math3.stat.ranking.TiesStrategy;
import org.apache.commons.math3.util.FastMath;

public class MannWhitneyUTest {
    private NaturalRanking naturalRanking;

    public MannWhitneyUTest() {
        this.naturalRanking = new NaturalRanking(NaNStrategy.FIXED, TiesStrategy.AVERAGE);
    }

    private double calculateAsymptoticPValue(double d10, int i10, int i11) throws ConvergenceException, MaxCountExceededException {
        return new NormalDistribution((RandomGenerator) null, 0.0d, 1.0d).cumulativeProbability((d10 - ((i10 * i11) / 2.0d)) / FastMath.sqrt((r2 * ((i10 + i11) + 1)) / 12.0d)) * 2.0d;
    }

    private double[] concatenateSamples(double[] dArr, double[] dArr2) {
        double[] dArr3 = new double[dArr.length + dArr2.length];
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr3, dArr.length, dArr2.length);
        return dArr3;
    }

    private void ensureDataConformance(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0 || dArr2.length == 0) {
            throw new NoDataException();
        }
    }

    public double mannWhitneyU(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException {
        ensureDataConformance(dArr, dArr2);
        double[] rank = this.naturalRanking.rank(concatenateSamples(dArr, dArr2));
        double d10 = 0.0d;
        for (int i10 = 0; i10 < dArr.length; i10++) {
            d10 += rank[i10];
        }
        double length = d10 - ((dArr.length * (dArr.length + 1)) / 2);
        return FastMath.max(length, (dArr.length * dArr2.length) - length);
    }

    public double mannWhitneyUTest(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, ConvergenceException, MaxCountExceededException {
        ensureDataConformance(dArr, dArr2);
        return calculateAsymptoticPValue((dArr.length * dArr2.length) - mannWhitneyU(dArr, dArr2), dArr.length, dArr2.length);
    }

    public MannWhitneyUTest(NaNStrategy naNStrategy, TiesStrategy tiesStrategy) {
        this.naturalRanking = new NaturalRanking(naNStrategy, tiesStrategy);
    }
}
