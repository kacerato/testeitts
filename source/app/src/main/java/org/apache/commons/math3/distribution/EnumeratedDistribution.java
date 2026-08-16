package org.apache.commons.math3.distribution;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotANumberException;
import org.apache.commons.math3.exception.NotFiniteNumberException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.Pair;

public class EnumeratedDistribution<T> implements Serializable {
    private static final long serialVersionUID = 20123308;
    private final double[] cumulativeProbabilities;
    private final double[] probabilities;
    protected final RandomGenerator random;
    private final List<T> singletons;

    public EnumeratedDistribution(List<Pair<T, Double>> list) throws NotPositiveException, MathArithmeticException, NotFiniteNumberException, NotANumberException {
        this(new Well19937c(), list);
    }

    public List<Pair<T, Double>> getPmf() {
        ArrayList arrayList = new ArrayList(this.probabilities.length);
        for (int i10 = 0; i10 < this.probabilities.length; i10++) {
            arrayList.add(new Pair(this.singletons.get(i10), Double.valueOf(this.probabilities[i10])));
        }
        return arrayList;
    }

    public double probability(T t10) {
        double d10 = 0.0d;
        for (int i10 = 0; i10 < this.probabilities.length; i10++) {
            if ((t10 == null && this.singletons.get(i10) == null) || (t10 != null && t10.equals(this.singletons.get(i10)))) {
                d10 += this.probabilities[i10];
            }
        }
        return d10;
    }

    public void reseedRandomGenerator(long j10) {
        this.random.setSeed(j10);
    }

    public T sample() {
        double nextDouble = this.random.nextDouble();
        int binarySearch = Arrays.binarySearch(this.cumulativeProbabilities, nextDouble);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
        }
        if (binarySearch >= 0 && binarySearch < this.probabilities.length && nextDouble < this.cumulativeProbabilities[binarySearch]) {
            return this.singletons.get(binarySearch);
        }
        return this.singletons.get(r0.size() - 1);
    }

    public EnumeratedDistribution(RandomGenerator randomGenerator, List<Pair<T, Double>> list) throws NotPositiveException, MathArithmeticException, NotFiniteNumberException, NotANumberException {
        this.random = randomGenerator;
        this.singletons = new ArrayList(list.size());
        double[] dArr = new double[list.size()];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            double d10 = 0.0d;
            if (i11 < list.size()) {
                Pair<T, Double> pair = list.get(i11);
                this.singletons.add(pair.getKey());
                Double value = pair.getValue();
                double doubleValue = value.doubleValue();
                if (doubleValue >= 0.0d) {
                    if (!Double.isInfinite(doubleValue)) {
                        if (!Double.isNaN(doubleValue)) {
                            dArr[i11] = doubleValue;
                            i11++;
                        } else {
                            throw new NotANumberException();
                        }
                    } else {
                        throw new NotFiniteNumberException(value, new Object[0]);
                    }
                } else {
                    throw new NotPositiveException(pair.getValue());
                }
            } else {
                double[] normalizeArray = MathArrays.normalizeArray(dArr, 1.0d);
                this.probabilities = normalizeArray;
                this.cumulativeProbabilities = new double[normalizeArray.length];
                while (true) {
                    double[] dArr2 = this.probabilities;
                    if (i10 >= dArr2.length) {
                        return;
                    }
                    d10 += dArr2[i10];
                    this.cumulativeProbabilities[i10] = d10;
                    i10++;
                }
            }
        }
    }

    public Object[] sample(int i10) throws NotStrictlyPositiveException {
        if (i10 > 0) {
            Object[] objArr = new Object[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                objArr[i11] = sample();
            }
            return objArr;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i10));
    }

    public T[] sample(int i10, T[] tArr) throws NotStrictlyPositiveException {
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i10));
        }
        if (tArr != null) {
            if (tArr.length < i10) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i10));
            }
            for (int i11 = 0; i11 < i10; i11++) {
                tArr[i11] = sample();
            }
            return tArr;
        }
        throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
    }
}
