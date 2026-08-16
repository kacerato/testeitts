package org.apache.commons.math3.genetics;

import java.util.ArrayList;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class TournamentSelection implements SelectionPolicy {
    private int arity;

    public TournamentSelection(int i10) {
        this.arity = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Chromosome tournament(ListPopulation listPopulation) throws MathIllegalArgumentException {
        int populationSize = listPopulation.getPopulationSize();
        int i10 = this.arity;
        if (populationSize < i10) {
            throw new MathIllegalArgumentException(LocalizedFormats.TOO_LARGE_TOURNAMENT_ARITY, Integer.valueOf(this.arity), Integer.valueOf(listPopulation.getPopulationSize()));
        }
        ListPopulation listPopulation2 = new ListPopulation(i10) {
            @Override
            public Population nextGeneration() {
                return null;
            }
        };
        ArrayList arrayList = new ArrayList(listPopulation.getChromosomes());
        for (int i11 = 0; i11 < this.arity; i11++) {
            int nextInt = GeneticAlgorithm.getRandomGenerator().nextInt(arrayList.size());
            listPopulation2.addChromosome((Chromosome) arrayList.get(nextInt));
            arrayList.remove(nextInt);
        }
        return listPopulation2.getFittestChromosome();
    }

    public int getArity() {
        return this.arity;
    }

    @Override
    public ChromosomePair select(Population population) throws MathIllegalArgumentException {
        ListPopulation listPopulation = (ListPopulation) population;
        return new ChromosomePair(tournament(listPopulation), tournament(listPopulation));
    }

    public void setArity(int i10) {
        this.arity = i10;
    }
}
