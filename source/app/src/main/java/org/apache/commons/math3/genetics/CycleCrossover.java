package org.apache.commons.math3.genetics;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class CycleCrossover<T> implements CrossoverPolicy {
    private final boolean randomStart;

    public CycleCrossover() {
        this(false);
    }

    @Override
    public ChromosomePair crossover(Chromosome chromosome, Chromosome chromosome2) throws DimensionMismatchException, MathIllegalArgumentException {
        if ((chromosome instanceof AbstractListChromosome) && (chromosome2 instanceof AbstractListChromosome)) {
            return mate((AbstractListChromosome) chromosome, (AbstractListChromosome) chromosome2);
        }
        throw new MathIllegalArgumentException(LocalizedFormats.INVALID_FIXED_LENGTH_CHROMOSOME, new Object[0]);
    }

    public boolean isRandomStart() {
        return this.randomStart;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChromosomePair mate(AbstractListChromosome<T> abstractListChromosome, AbstractListChromosome<T> abstractListChromosome2) throws DimensionMismatchException {
        int length = abstractListChromosome.getLength();
        if (length != abstractListChromosome2.getLength()) {
            throw new DimensionMismatchException(abstractListChromosome2.getLength(), length);
        }
        List<T> representation = abstractListChromosome.getRepresentation();
        List<T> representation2 = abstractListChromosome2.getRepresentation();
        List<T> arrayList = new ArrayList<>(abstractListChromosome2.getRepresentation());
        List<T> arrayList2 = new ArrayList<>(abstractListChromosome.getRepresentation());
        HashSet hashSet = new HashSet(length);
        ArrayList arrayList3 = new ArrayList(length);
        int nextInt = this.randomStart ? GeneticAlgorithm.getRandomGenerator().nextInt(length) : 0;
        int i10 = 1;
        while (hashSet.size() < length) {
            arrayList3.add(Integer.valueOf(nextInt));
            for (int indexOf = representation.indexOf(representation2.get(nextInt)); indexOf != ((Integer) arrayList3.get(0)).intValue(); indexOf = representation.indexOf(representation2.get(indexOf))) {
                arrayList3.add(Integer.valueOf(indexOf));
            }
            int i11 = i10 + 1;
            if (i10 % 2 != 0) {
                Iterator<E> it = arrayList3.iterator();
                while (it.hasNext()) {
                    int intValue = ((Integer) it.next()).intValue();
                    E e10 = arrayList.get(intValue);
                    arrayList.set(intValue, arrayList2.get(intValue));
                    arrayList2.set(intValue, e10);
                }
            }
            hashSet.addAll(arrayList3);
            int intValue2 = (((Integer) arrayList3.get(0)).intValue() + 1) % length;
            while (hashSet.contains(Integer.valueOf(intValue2)) && hashSet.size() < length) {
                intValue2++;
                if (intValue2 >= length) {
                    intValue2 = 0;
                }
            }
            arrayList3.clear();
            int i12 = intValue2;
            i10 = i11;
            nextInt = i12;
        }
        return new ChromosomePair(abstractListChromosome.newFixedLengthChromosome(arrayList), abstractListChromosome2.newFixedLengthChromosome(arrayList2));
    }

    public CycleCrossover(boolean z10) {
        this.randomStart = z10;
    }
}
