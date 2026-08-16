package org.apache.commons.math3.distribution;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.Pair;

public class MixtureMultivariateNormalDistribution extends MixtureMultivariateRealDistribution<MultivariateNormalDistribution> {
    public MixtureMultivariateNormalDistribution(double[] dArr, double[][] dArr2, double[][][] dArr3) {
        super(createComponents(dArr, dArr2, dArr3));
    }

    private static List<Pair<Double, MultivariateNormalDistribution>> createComponents(double[] dArr, double[][] dArr2, double[][][] dArr3) {
        ArrayList arrayList = new ArrayList(dArr.length);
        for (int i10 = 0; i10 < dArr.length; i10++) {
            arrayList.add(new Pair(Double.valueOf(dArr[i10]), new MultivariateNormalDistribution(dArr2[i10], dArr3[i10])));
        }
        return arrayList;
    }

    public MixtureMultivariateNormalDistribution(List<Pair<Double, MultivariateNormalDistribution>> list) {
        super(list);
    }

    public MixtureMultivariateNormalDistribution(RandomGenerator randomGenerator, List<Pair<Double, MultivariateNormalDistribution>> list) throws NotPositiveException, DimensionMismatchException {
        super(randomGenerator, list);
    }
}
