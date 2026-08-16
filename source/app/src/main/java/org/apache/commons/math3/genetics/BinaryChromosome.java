package org.apache.commons.math3.genetics;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public abstract class BinaryChromosome extends AbstractListChromosome<Integer> {
    public BinaryChromosome(List<Integer> list) throws InvalidRepresentationException {
        super(list);
    }

    public static List<Integer> randomBinaryRepresentation(int i10) {
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(Integer.valueOf(GeneticAlgorithm.getRandomGenerator().nextInt(2)));
        }
        return arrayList;
    }

    @Override
    public void checkValidity(List<Integer> list) throws InvalidRepresentationException {
        for (Integer num : list) {
            int intValue = num.intValue();
            if (intValue < 0 || intValue > 1) {
                throw new InvalidRepresentationException(LocalizedFormats.INVALID_BINARY_DIGIT, num);
            }
        }
    }

    @Override
    public boolean isSame(Chromosome chromosome) {
        if (!(chromosome instanceof BinaryChromosome)) {
            return false;
        }
        BinaryChromosome binaryChromosome = (BinaryChromosome) chromosome;
        if (getLength() != binaryChromosome.getLength()) {
            return false;
        }
        for (int i10 = 0; i10 < getRepresentation().size(); i10++) {
            if (!getRepresentation().get(i10).equals(binaryChromosome.getRepresentation().get(i10))) {
                return false;
            }
        }
        return true;
    }

    public BinaryChromosome(Integer[] numArr) throws InvalidRepresentationException {
        super(numArr);
    }
}
