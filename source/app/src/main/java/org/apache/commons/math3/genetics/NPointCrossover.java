package org.apache.commons.math3.genetics;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;

public class NPointCrossover<T> implements CrossoverPolicy {
    private final int crossoverPoints;

    public NPointCrossover(int i10) throws NotStrictlyPositiveException {
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }
        this.crossoverPoints = i10;
    }

    private ChromosomePair mate(AbstractListChromosome<T> abstractListChromosome, AbstractListChromosome<T> abstractListChromosome2) throws DimensionMismatchException, NumberIsTooLargeException {
        int length = abstractListChromosome.getLength();
        if (length != abstractListChromosome2.getLength()) {
            throw new DimensionMismatchException(abstractListChromosome2.getLength(), length);
        }
        int i10 = 0;
        if (this.crossoverPoints >= length) {
            throw new NumberIsTooLargeException(Integer.valueOf(this.crossoverPoints), Integer.valueOf(length), false);
        }
        List<T> representation = abstractListChromosome.getRepresentation();
        List<T> representation2 = abstractListChromosome2.getRepresentation();
        ArrayList arrayList = new ArrayList(length);
        ArrayList arrayList2 = new ArrayList(length);
        RandomGenerator randomGenerator = GeneticAlgorithm.getRandomGenerator();
        ArrayList arrayList3 = arrayList;
        ArrayList arrayList4 = arrayList2;
        int i11 = this.crossoverPoints;
        int i12 = 0;
        while (i10 < this.crossoverPoints) {
            int nextInt = i12 + 1 + randomGenerator.nextInt((length - i12) - i11);
            while (i12 < nextInt) {
                arrayList3.add(representation.get(i12));
                arrayList4.add(representation2.get(i12));
                i12++;
            }
            i10++;
            i11--;
            i12 = nextInt;
            ArrayList arrayList5 = arrayList4;
            arrayList4 = arrayList3;
            arrayList3 = arrayList5;
        }
        while (i12 < length) {
            arrayList3.add(representation.get(i12));
            arrayList4.add(representation2.get(i12));
            i12++;
        }
        return new ChromosomePair(abstractListChromosome.newFixedLengthChromosome(arrayList), abstractListChromosome2.newFixedLengthChromosome(arrayList2));
    }

    @Override
    public ChromosomePair crossover(Chromosome chromosome, Chromosome chromosome2) throws DimensionMismatchException, MathIllegalArgumentException {
        if ((chromosome instanceof AbstractListChromosome) && (chromosome2 instanceof AbstractListChromosome)) {
            return mate((AbstractListChromosome) chromosome, (AbstractListChromosome) chromosome2);
        }
        throw new MathIllegalArgumentException(LocalizedFormats.INVALID_FIXED_LENGTH_CHROMOSOME, new Object[0]);
    }

    public int getCrossoverPoints() {
        return this.crossoverPoints;
    }
}
