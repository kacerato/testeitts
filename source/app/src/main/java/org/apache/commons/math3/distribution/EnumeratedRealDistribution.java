package org.apache.commons.math3.distribution;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotANumberException;
import org.apache.commons.math3.exception.NotFiniteNumberException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.Pair;

public class EnumeratedRealDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = 20130308;
    protected final EnumeratedDistribution<Double> innerDistribution;

    public EnumeratedRealDistribution(double[] dArr, double[] dArr2) throws DimensionMismatchException, NotPositiveException, MathArithmeticException, NotFiniteNumberException, NotANumberException {
        this(new Well19937c(), dArr, dArr2);
    }

    private static List<Pair<Double, Double>> createDistribution(double[] dArr, double[] dArr2) {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr2.length, dArr.length);
        }
        ArrayList arrayList = new ArrayList(dArr.length);
        for (int i10 = 0; i10 < dArr.length; i10++) {
            arrayList.add(new Pair(Double.valueOf(dArr[i10]), Double.valueOf(dArr2[i10])));
        }
        return arrayList;
    }

    @Override
    public double cumulativeProbability(double d10) {
        double d11 = 0.0d;
        for (Pair<Double, Double> pair : this.innerDistribution.getPmf()) {
            if (pair.getKey().doubleValue() <= d10) {
                d11 += pair.getValue().doubleValue();
            }
        }
        return d11;
    }

    @Override
    public double density(double d10) {
        return probability(d10);
    }

    @Override
    public double getNumericalMean() {
        double d10 = 0.0d;
        for (Pair<Double, Double> pair : this.innerDistribution.getPmf()) {
            d10 += pair.getValue().doubleValue() * pair.getKey().doubleValue();
        }
        return d10;
    }

    @Override
    public double getNumericalVariance() {
        double d10 = 0.0d;
        double d11 = 0.0d;
        for (Pair<Double, Double> pair : this.innerDistribution.getPmf()) {
            d11 += pair.getValue().doubleValue() * pair.getKey().doubleValue();
            d10 += pair.getValue().doubleValue() * pair.getKey().doubleValue() * pair.getKey().doubleValue();
        }
        return d10 - (d11 * d11);
    }

    @Override
    public double getSupportLowerBound() {
        double d10 = Double.POSITIVE_INFINITY;
        for (Pair<Double, Double> pair : this.innerDistribution.getPmf()) {
            if (pair.getKey().doubleValue() < d10 && pair.getValue().doubleValue() > 0.0d) {
                d10 = pair.getKey().doubleValue();
            }
        }
        return d10;
    }

    @Override
    public double getSupportUpperBound() {
        double d10 = Double.NEGATIVE_INFINITY;
        for (Pair<Double, Double> pair : this.innerDistribution.getPmf()) {
            if (pair.getKey().doubleValue() > d10 && pair.getValue().doubleValue() > 0.0d) {
                d10 = pair.getKey().doubleValue();
            }
        }
        return d10;
    }

    @Override
    public double inverseCumulativeProbability(double d10) throws OutOfRangeException {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        double supportLowerBound = getSupportLowerBound();
        double d11 = 0.0d;
        for (Pair<Double, Double> pair : this.innerDistribution.getPmf()) {
            if (pair.getValue().doubleValue() != 0.0d) {
                d11 += pair.getValue().doubleValue();
                supportLowerBound = pair.getKey().doubleValue();
                if (d11 >= d10) {
                    break;
                }
            }
        }
        return supportLowerBound;
    }

    @Override
    public boolean isSupportConnected() {
        return true;
    }

    @Override
    public boolean isSupportLowerBoundInclusive() {
        return true;
    }

    @Override
    public boolean isSupportUpperBoundInclusive() {
        return true;
    }

    @Override
    public double probability(double d10) {
        return this.innerDistribution.probability(Double.valueOf(d10));
    }

    @Override
    public double sample() {
        return this.innerDistribution.sample().doubleValue();
    }

    public EnumeratedRealDistribution(RandomGenerator randomGenerator, double[] dArr, double[] dArr2) throws DimensionMismatchException, NotPositiveException, MathArithmeticException, NotFiniteNumberException, NotANumberException {
        super(randomGenerator);
        this.innerDistribution = new EnumeratedDistribution<>(randomGenerator, createDistribution(dArr, dArr2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public EnumeratedRealDistribution(RandomGenerator randomGenerator, double[] dArr) {
        super(randomGenerator);
        HashMap hashMap = new HashMap();
        int i10 = 0;
        for (double d10 : dArr) {
            Integer num = (Integer) hashMap.get(Double.valueOf(d10));
            if (num == null) {
                num = 0;
            }
            hashMap.put(Double.valueOf(d10), Integer.valueOf(num.intValue() + 1));
        }
        int size = hashMap.size();
        double length = dArr.length;
        double[] dArr2 = new double[size];
        double[] dArr3 = new double[size];
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            dArr2[i10] = ((Double) ((Map.Entry) it.next()).getKey()).doubleValue();
            dArr3[i10] = ((Integer) r5.getValue()).intValue() / length;
            i10++;
        }
        this.innerDistribution = new EnumeratedDistribution<>(randomGenerator, createDistribution(dArr2, dArr3));
    }

    public EnumeratedRealDistribution(double[] dArr) {
        this(new Well19937c(), dArr);
    }
}
