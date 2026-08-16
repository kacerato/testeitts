package org.apache.commons.math3.genetics;

public abstract class Chromosome implements Comparable<Chromosome>, Fitness {
    private static final double NO_FITNESS = Double.NEGATIVE_INFINITY;
    private double fitness = Double.NEGATIVE_INFINITY;

    public Chromosome findSameChromosome(Population population) {
        for (Chromosome chromosome : population) {
            if (isSame(chromosome)) {
                return chromosome;
            }
        }
        return null;
    }

    public double getFitness() {
        if (this.fitness == Double.NEGATIVE_INFINITY) {
            this.fitness = fitness();
        }
        return this.fitness;
    }

    public boolean isSame(Chromosome chromosome) {
        return false;
    }

    public void searchForFitnessUpdate(Population population) {
        Chromosome findSameChromosome = findSameChromosome(population);
        if (findSameChromosome != null) {
            this.fitness = findSameChromosome.getFitness();
        }
    }

    @Override
    public int compareTo(Chromosome chromosome) {
        return Double.compare(getFitness(), chromosome.getFitness());
    }
}
