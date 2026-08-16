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
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.Pair;

public class EnumeratedIntegerDistribution extends AbstractIntegerDistribution {
    private static final long serialVersionUID = 20130308;
    protected final EnumeratedDistribution<Integer> innerDistribution;

    public EnumeratedIntegerDistribution(int[] iArr, double[] dArr) throws DimensionMismatchException, NotPositiveException, MathArithmeticException, NotFiniteNumberException, NotANumberException {
        this(new Well19937c(), iArr, dArr);
    }

    private static List<Pair<Integer, Double>> createDistribution(int[] iArr, double[] dArr) {
        if (iArr.length != dArr.length) {
            throw new DimensionMismatchException(dArr.length, iArr.length);
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i10 = 0; i10 < iArr.length; i10++) {
            arrayList.add(new Pair(Integer.valueOf(iArr[i10]), Double.valueOf(dArr[i10])));
        }
        return arrayList;
    }

    @Override
    public double cumulativeProbability(int i10) {
        double d10 = 0.0d;
        for (Pair<Integer, Double> pair : this.innerDistribution.getPmf()) {
            if (pair.getKey().intValue() <= i10) {
                d10 += pair.getValue().doubleValue();
            }
        }
        return d10;
    }

    @Override
    public double getNumericalMean() {
        Iterator<Pair<Integer, Double>> it = this.innerDistribution.getPmf().iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            d10 += it.next().getValue().doubleValue() * r3.getKey().intValue();
        }
        return d10;
    }

    @Override
    public double getNumericalVariance() {
        double d10 = 0.0d;
        double d11 = 0.0d;
        for (Pair<Integer, Double> pair : this.innerDistribution.getPmf()) {
            d11 += pair.getValue().doubleValue() * pair.getKey().intValue();
            d10 += pair.getValue().doubleValue() * pair.getKey().intValue() * pair.getKey().intValue();
        }
        return d10 - (d11 * d11);
    }

    @Override
    public int getSupportLowerBound() {
        int i10 = Integer.MAX_VALUE;
        for (Pair<Integer, Double> pair : this.innerDistribution.getPmf()) {
            if (pair.getKey().intValue() < i10 && pair.getValue().doubleValue() > 0.0d) {
                i10 = pair.getKey().intValue();
            }
        }
        return i10;
    }

    @Override
    public int getSupportUpperBound() {
        int i10 = Integer.MIN_VALUE;
        for (Pair<Integer, Double> pair : this.innerDistribution.getPmf()) {
            if (pair.getKey().intValue() > i10 && pair.getValue().doubleValue() > 0.0d) {
                i10 = pair.getKey().intValue();
            }
        }
        return i10;
    }

    @Override
    public boolean isSupportConnected() {
        return true;
    }

    @Override
    public double probability(int i10) {
        return this.innerDistribution.probability(Integer.valueOf(i10));
    }

    @Override
    public int sample() {
        return this.innerDistribution.sample().intValue();
    }

    public EnumeratedIntegerDistribution(RandomGenerator randomGenerator, int[] iArr, double[] dArr) throws DimensionMismatchException, NotPositiveException, MathArithmeticException, NotFiniteNumberException, NotANumberException {
        super(randomGenerator);
        this.innerDistribution = new EnumeratedDistribution<>(randomGenerator, createDistribution(iArr, dArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public EnumeratedIntegerDistribution(RandomGenerator randomGenerator, int[] iArr) {
        super(randomGenerator);
        HashMap hashMap = new HashMap();
        int i10 = 0;
        for (int i11 : iArr) {
            Integer num = (Integer) hashMap.get(Integer.valueOf(i11));
            if (num == null) {
                num = 0;
            }
            hashMap.put(Integer.valueOf(i11), Integer.valueOf(num.intValue() + 1));
        }
        int size = hashMap.size();
        double length = iArr.length;
        int[] iArr2 = new int[size];
        double[] dArr = new double[size];
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            iArr2[i10] = ((Integer) ((Map.Entry) it.next()).getKey()).intValue();
            dArr[i10] = ((Integer) r5.getValue()).intValue() / length;
            i10++;
        }
        this.innerDistribution = new EnumeratedDistribution<>(randomGenerator, createDistribution(iArr2, dArr));
    }

    public EnumeratedIntegerDistribution(int[] iArr) {
        this(new Well19937c(), iArr);
    }
}
