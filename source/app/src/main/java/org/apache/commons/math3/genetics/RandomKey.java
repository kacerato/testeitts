package org.apache.commons.math3.genetics;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public abstract class RandomKey<T> extends AbstractListChromosome<Double> implements PermutationChromosome<T> {
    private final List<Integer> baseSeqPermutation;
    private final List<Double> sortedRepresentation;

    public RandomKey(List<Double> list) throws InvalidRepresentationException {
        super(list);
        ArrayList arrayList = new ArrayList(getRepresentation());
        Collections.sort(arrayList);
        List<Double> unmodifiableList = Collections.unmodifiableList(arrayList);
        this.sortedRepresentation = unmodifiableList;
        this.baseSeqPermutation = Collections.unmodifiableList(decodeGeneric(baseSequence(getLength()), getRepresentation(), unmodifiableList));
    }

    private static List<Integer> baseSequence(int i10) {
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(Integer.valueOf(i11));
        }
        return arrayList;
    }

    public static <S> List<Double> comparatorPermutation(List<S> list, Comparator<S> comparator) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList, comparator);
        return inducedPermutation(list, arrayList);
    }

    private static <S> List<S> decodeGeneric(List<S> list, List<Double> list2, List<Double> list3) throws DimensionMismatchException {
        int size = list.size();
        if (list2.size() != size) {
            throw new DimensionMismatchException(list2.size(), size);
        }
        if (list3.size() != size) {
            throw new DimensionMismatchException(list3.size(), size);
        }
        ArrayList arrayList = new ArrayList(list2);
        ArrayList arrayList2 = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            int indexOf = arrayList.indexOf(list3.get(i10));
            arrayList2.add(list.get(indexOf));
            arrayList.set(indexOf, null);
        }
        return arrayList2;
    }

    public static final List<Double> identityPermutation(int i10) {
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(Double.valueOf(i11 / i10));
        }
        return arrayList;
    }

    public static <S> List<Double> inducedPermutation(List<S> list, List<S> list2) throws DimensionMismatchException, MathIllegalArgumentException {
        if (list.size() != list2.size()) {
            throw new DimensionMismatchException(list2.size(), list.size());
        }
        int size = list.size();
        ArrayList arrayList = new ArrayList(list);
        Double[] dArr = new Double[size];
        for (int i10 = 0; i10 < size; i10++) {
            int indexOf = arrayList.indexOf(list2.get(i10));
            if (indexOf == -1) {
                throw new MathIllegalArgumentException(LocalizedFormats.DIFFERENT_ORIG_AND_PERMUTED_DATA, new Object[0]);
            }
            dArr[indexOf] = Double.valueOf(i10 / size);
            arrayList.set(indexOf, null);
        }
        return Arrays.asList(dArr);
    }

    public static final List<Double> randomPermutation(int i10) {
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(Double.valueOf(GeneticAlgorithm.getRandomGenerator().nextDouble()));
        }
        return arrayList;
    }

    @Override
    public void checkValidity(List<Double> list) throws InvalidRepresentationException {
        for (Double d10 : list) {
            double doubleValue = d10.doubleValue();
            if (doubleValue < 0.0d || doubleValue > 1.0d) {
                throw new InvalidRepresentationException(LocalizedFormats.OUT_OF_RANGE_SIMPLE, d10, 0, 1);
            }
        }
    }

    @Override
    public List<T> decode(List<T> list) {
        return decodeGeneric(list, getRepresentation(), this.sortedRepresentation);
    }

    @Override
    public boolean isSame(Chromosome chromosome) {
        if (!(chromosome instanceof RandomKey)) {
            return false;
        }
        RandomKey randomKey = (RandomKey) chromosome;
        if (getLength() != randomKey.getLength()) {
            return false;
        }
        List<Integer> list = this.baseSeqPermutation;
        List<Integer> list2 = randomKey.baseSeqPermutation;
        for (int i10 = 0; i10 < getLength(); i10++) {
            if (list.get(i10) != list2.get(i10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public String toString() {
        return String.format("(f=%s pi=(%s))", Double.valueOf(getFitness()), this.baseSeqPermutation);
    }

    public RandomKey(Double[] dArr) throws InvalidRepresentationException {
        this((List<Double>) Arrays.asList(dArr));
    }
}
