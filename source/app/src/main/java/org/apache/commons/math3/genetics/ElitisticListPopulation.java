package org.apache.commons.math3.genetics;

import java.util.Collections;
import java.util.List;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

public class ElitisticListPopulation extends ListPopulation {
    private double elitismRate;

    public ElitisticListPopulation(List<Chromosome> list, int i10, double d10) throws NullArgumentException, NotPositiveException, NumberIsTooLargeException, OutOfRangeException {
        super(list, i10);
        this.elitismRate = 0.9d;
        setElitismRate(d10);
    }

    public double getElitismRate() {
        return this.elitismRate;
    }

    @Override
    public Population nextGeneration() {
        ElitisticListPopulation elitisticListPopulation = new ElitisticListPopulation(getPopulationLimit(), getElitismRate());
        List<Chromosome> chromosomeList = getChromosomeList();
        Collections.sort(chromosomeList);
        for (int ceil = (int) FastMath.ceil((1.0d - getElitismRate()) * chromosomeList.size()); ceil < chromosomeList.size(); ceil++) {
            elitisticListPopulation.addChromosome(chromosomeList.get(ceil));
        }
        return elitisticListPopulation;
    }

    public void setElitismRate(double d10) throws OutOfRangeException {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(LocalizedFormats.ELITISM_RATE, Double.valueOf(d10), 0, 1);
        }
        this.elitismRate = d10;
    }

    public ElitisticListPopulation(int i10, double d10) throws NotPositiveException, OutOfRangeException {
        super(i10);
        this.elitismRate = 0.9d;
        setElitismRate(d10);
    }
}
