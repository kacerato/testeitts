package org.apache.commons.math3.analysis.integration.gauss;

import java.lang.Number;
import java.util.Map;
import java.util.TreeMap;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.Pair;

public abstract class BaseRuleFactory<T extends Number> {
    private final Map<Integer, Pair<T[], T[]>> pointsAndWeights = new TreeMap();
    private final Map<Integer, Pair<double[], double[]>> pointsAndWeightsDouble = new TreeMap();

    private static <T extends Number> Pair<double[], double[]> convertToDouble(Pair<T[], T[]> pair) {
        T[] first = pair.getFirst();
        T[] second = pair.getSecond();
        int length = first.length;
        double[] dArr = new double[length];
        double[] dArr2 = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr[i10] = first[i10].doubleValue();
            dArr2[i10] = second[i10].doubleValue();
        }
        return new Pair<>(dArr, dArr2);
    }

    public void addRule(Pair<T[], T[]> pair) throws DimensionMismatchException {
        if (pair.getFirst().length != pair.getSecond().length) {
            throw new DimensionMismatchException(pair.getFirst().length, pair.getSecond().length);
        }
        this.pointsAndWeights.put(Integer.valueOf(pair.getFirst().length), pair);
    }

    public abstract Pair<T[], T[]> computeRule(int i10) throws DimensionMismatchException;

    public Pair<double[], double[]> getRule(int i10) throws NotStrictlyPositiveException, DimensionMismatchException {
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_POINTS, Integer.valueOf(i10));
        }
        Pair<double[], double[]> pair = this.pointsAndWeightsDouble.get(Integer.valueOf(i10));
        if (pair == null) {
            pair = convertToDouble(getRuleInternal(i10));
            this.pointsAndWeightsDouble.put(Integer.valueOf(i10), pair);
        }
        return new Pair<>(pair.getFirst().clone(), pair.getSecond().clone());
    }

    public synchronized Pair<T[], T[]> getRuleInternal(int i10) throws DimensionMismatchException {
        Pair<T[], T[]> pair = this.pointsAndWeights.get(Integer.valueOf(i10));
        if (pair != null) {
            return pair;
        }
        addRule(computeRule(i10));
        return getRuleInternal(i10);
    }
}
