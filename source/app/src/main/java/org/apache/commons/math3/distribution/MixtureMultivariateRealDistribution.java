package org.apache.commons.math3.distribution;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.distribution.MultivariateRealDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.Pair;

public class MixtureMultivariateRealDistribution<T extends MultivariateRealDistribution> extends AbstractMultivariateRealDistribution {
    private final List<T> distribution;
    private final double[] weight;

    public MixtureMultivariateRealDistribution(List<Pair<Double, T>> list) {
        this(new Well19937c(), list);
    }

    @Override
    public double density(double[] dArr) {
        double d10 = 0.0d;
        int i10 = 0;
        while (true) {
            double[] dArr2 = this.weight;
            if (i10 >= dArr2.length) {
                return d10;
            }
            d10 += dArr2[i10] * this.distribution.get(i10).density(dArr);
            i10++;
        }
    }

    public List<Pair<Double, T>> getComponents() {
        ArrayList arrayList = new ArrayList(this.weight.length);
        int i10 = 0;
        while (true) {
            double[] dArr = this.weight;
            if (i10 >= dArr.length) {
                return arrayList;
            }
            arrayList.add(new Pair(Double.valueOf(dArr[i10]), this.distribution.get(i10)));
            i10++;
        }
    }

    @Override
    public void reseedRandomGenerator(long j10) {
        super.reseedRandomGenerator(j10);
        int i10 = 0;
        while (i10 < this.distribution.size()) {
            T t10 = this.distribution.get(i10);
            i10++;
            t10.reseedRandomGenerator(i10 + j10);
        }
    }

    @Override
    public double[] sample() {
        double[] dArr;
        double nextDouble = this.random.nextDouble();
        double d10 = 0.0d;
        int i10 = 0;
        while (true) {
            double[] dArr2 = this.weight;
            if (i10 >= dArr2.length) {
                dArr = null;
                break;
            }
            d10 += dArr2[i10];
            if (nextDouble <= d10) {
                dArr = this.distribution.get(i10).sample();
                break;
            }
            i10++;
        }
        return dArr == null ? this.distribution.get(this.weight.length - 1).sample() : dArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MixtureMultivariateRealDistribution(RandomGenerator randomGenerator, List<Pair<Double, T>> list) {
        super(randomGenerator, list.get(0).getSecond().getDimension());
        int size = list.size();
        int dimension = getDimension();
        double d10 = 0.0d;
        for (int i10 = 0; i10 < size; i10++) {
            Pair<Double, T> pair = list.get(i10);
            if (pair.getSecond().getDimension() != dimension) {
                throw new DimensionMismatchException(pair.getSecond().getDimension(), dimension);
            }
            if (pair.getFirst().doubleValue() >= 0.0d) {
                d10 += pair.getFirst().doubleValue();
            } else {
                throw new NotPositiveException(pair.getFirst());
            }
        }
        if (!Double.isInfinite(d10)) {
            this.distribution = new ArrayList();
            this.weight = new double[size];
            for (int i11 = 0; i11 < size; i11++) {
                Pair<Double, T> pair2 = list.get(i11);
                this.weight[i11] = pair2.getFirst().doubleValue() / d10;
                this.distribution.add(pair2.getSecond());
            }
            return;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
    }
}
