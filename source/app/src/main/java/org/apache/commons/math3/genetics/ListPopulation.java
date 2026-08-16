package org.apache.commons.math3.genetics;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public abstract class ListPopulation implements Population {
    private List<Chromosome> chromosomes;
    private int populationLimit;

    public ListPopulation(int i10) throws NotPositiveException {
        this(Collections.emptyList(), i10);
    }

    @Override
    public void addChromosome(Chromosome chromosome) throws NumberIsTooLargeException {
        if (this.chromosomes.size() >= this.populationLimit) {
            throw new NumberIsTooLargeException(LocalizedFormats.LIST_OF_CHROMOSOMES_BIGGER_THAN_POPULATION_SIZE, Integer.valueOf(this.chromosomes.size()), Integer.valueOf(this.populationLimit), false);
        }
        this.chromosomes.add(chromosome);
    }

    public void addChromosomes(Collection<Chromosome> collection) throws NumberIsTooLargeException {
        if (this.chromosomes.size() + collection.size() > this.populationLimit) {
            throw new NumberIsTooLargeException(LocalizedFormats.LIST_OF_CHROMOSOMES_BIGGER_THAN_POPULATION_SIZE, Integer.valueOf(this.chromosomes.size()), Integer.valueOf(this.populationLimit), false);
        }
        this.chromosomes.addAll(collection);
    }

    public List<Chromosome> getChromosomeList() {
        return this.chromosomes;
    }

    public List<Chromosome> getChromosomes() {
        return Collections.unmodifiableList(this.chromosomes);
    }

    @Override
    public Chromosome getFittestChromosome() {
        Chromosome chromosome = this.chromosomes.get(0);
        for (Chromosome chromosome2 : this.chromosomes) {
            if (chromosome2.compareTo(chromosome) > 0) {
                chromosome = chromosome2;
            }
        }
        return chromosome;
    }

    @Override
    public int getPopulationLimit() {
        return this.populationLimit;
    }

    @Override
    public int getPopulationSize() {
        return this.chromosomes.size();
    }

    @Override
    public Iterator<Chromosome> iterator() {
        return getChromosomes().iterator();
    }

    @Deprecated
    public void setChromosomes(List<Chromosome> list) throws NullArgumentException, NumberIsTooLargeException {
        if (list == null) {
            throw new NullArgumentException();
        }
        if (list.size() > this.populationLimit) {
            throw new NumberIsTooLargeException(LocalizedFormats.LIST_OF_CHROMOSOMES_BIGGER_THAN_POPULATION_SIZE, Integer.valueOf(list.size()), Integer.valueOf(this.populationLimit), false);
        }
        this.chromosomes.clear();
        this.chromosomes.addAll(list);
    }

    public void setPopulationLimit(int i10) throws NotPositiveException, NumberIsTooSmallException {
        if (i10 <= 0) {
            throw new NotPositiveException(LocalizedFormats.POPULATION_LIMIT_NOT_POSITIVE, Integer.valueOf(i10));
        }
        if (i10 < this.chromosomes.size()) {
            throw new NumberIsTooSmallException(Integer.valueOf(i10), Integer.valueOf(this.chromosomes.size()), true);
        }
        this.populationLimit = i10;
    }

    public String toString() {
        return this.chromosomes.toString();
    }

    public ListPopulation(List<Chromosome> list, int i10) throws NullArgumentException, NotPositiveException, NumberIsTooLargeException {
        if (list == null) {
            throw new NullArgumentException();
        }
        if (i10 > 0) {
            if (list.size() <= i10) {
                this.populationLimit = i10;
                ArrayList arrayList = new ArrayList(i10);
                this.chromosomes = arrayList;
                arrayList.addAll(list);
                return;
            }
            throw new NumberIsTooLargeException(LocalizedFormats.LIST_OF_CHROMOSOMES_BIGGER_THAN_POPULATION_SIZE, Integer.valueOf(list.size()), Integer.valueOf(i10), false);
        }
        throw new NotPositiveException(LocalizedFormats.POPULATION_LIMIT_NOT_POSITIVE, Integer.valueOf(i10));
    }
}
