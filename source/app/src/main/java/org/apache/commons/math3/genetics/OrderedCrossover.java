package org.apache.commons.math3.genetics;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;

public class OrderedCrossover<T> implements CrossoverPolicy {
    @Override
    public ChromosomePair crossover(Chromosome chromosome, Chromosome chromosome2) throws DimensionMismatchException, MathIllegalArgumentException {
        if ((chromosome instanceof AbstractListChromosome) && (chromosome2 instanceof AbstractListChromosome)) {
            return mate((AbstractListChromosome) chromosome, (AbstractListChromosome) chromosome2);
        }
        throw new MathIllegalArgumentException(LocalizedFormats.INVALID_FIXED_LENGTH_CHROMOSOME, new Object[0]);
    }

    public ChromosomePair mate(AbstractListChromosome<T> abstractListChromosome, AbstractListChromosome<T> abstractListChromosome2) throws DimensionMismatchException {
        int nextInt;
        int length = abstractListChromosome.getLength();
        if (length != abstractListChromosome2.getLength()) {
            throw new DimensionMismatchException(abstractListChromosome2.getLength(), length);
        }
        List<T> representation = abstractListChromosome.getRepresentation();
        List<T> representation2 = abstractListChromosome2.getRepresentation();
        ArrayList arrayList = new ArrayList(length);
        ArrayList arrayList2 = new ArrayList(length);
        HashSet hashSet = new HashSet(length);
        HashSet hashSet2 = new HashSet(length);
        RandomGenerator randomGenerator = GeneticAlgorithm.getRandomGenerator();
        int nextInt2 = randomGenerator.nextInt(length);
        do {
            nextInt = randomGenerator.nextInt(length);
        } while (nextInt2 == nextInt);
        int min = FastMath.min(nextInt2, nextInt);
        int max = FastMath.max(nextInt2, nextInt);
        int i10 = max + 1;
        arrayList.addAll(representation.subList(min, i10));
        hashSet.addAll(arrayList);
        arrayList2.addAll(representation2.subList(min, i10));
        hashSet2.addAll(arrayList2);
        for (int i11 = 1; i11 <= length; i11++) {
            int i12 = (max + i11) % length;
            T t10 = representation.get(i12);
            T t11 = representation2.get(i12);
            if (!hashSet.contains(t11)) {
                arrayList.add(t11);
                hashSet.add(t11);
            }
            if (!hashSet2.contains(t10)) {
                arrayList2.add(t10);
                hashSet2.add(t10);
            }
        }
        Collections.rotate(arrayList, min);
        Collections.rotate(arrayList2, min);
        return new ChromosomePair(abstractListChromosome.newFixedLengthChromosome(arrayList), abstractListChromosome2.newFixedLengthChromosome(arrayList2));
    }
}
