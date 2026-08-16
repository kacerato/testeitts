package org.apache.commons.math3.genetics;

import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.JDKRandomGenerator;
import org.apache.commons.math3.random.RandomGenerator;

public class GeneticAlgorithm {
    private static RandomGenerator randomGenerator = new JDKRandomGenerator();
    private final CrossoverPolicy crossoverPolicy;
    private final double crossoverRate;
    private int generationsEvolved = 0;
    private final MutationPolicy mutationPolicy;
    private final double mutationRate;
    private final SelectionPolicy selectionPolicy;

    public GeneticAlgorithm(CrossoverPolicy crossoverPolicy, double d10, MutationPolicy mutationPolicy, double d11, SelectionPolicy selectionPolicy) throws OutOfRangeException {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(LocalizedFormats.CROSSOVER_RATE, Double.valueOf(d10), 0, 1);
        }
        if (d11 < 0.0d || d11 > 1.0d) {
            throw new OutOfRangeException(LocalizedFormats.MUTATION_RATE, Double.valueOf(d11), 0, 1);
        }
        this.crossoverPolicy = crossoverPolicy;
        this.crossoverRate = d10;
        this.mutationPolicy = mutationPolicy;
        this.mutationRate = d11;
        this.selectionPolicy = selectionPolicy;
    }

    public static synchronized RandomGenerator getRandomGenerator() {
        RandomGenerator randomGenerator2;
        synchronized (GeneticAlgorithm.class) {
            randomGenerator2 = randomGenerator;
        }
        return randomGenerator2;
    }

    public static synchronized void setRandomGenerator(RandomGenerator randomGenerator2) {
        synchronized (GeneticAlgorithm.class) {
            randomGenerator = randomGenerator2;
        }
    }

    public Population evolve(Population population, StoppingCondition stoppingCondition) {
        this.generationsEvolved = 0;
        while (!stoppingCondition.isSatisfied(population)) {
            population = nextGeneration(population);
            this.generationsEvolved++;
        }
        return population;
    }

    public CrossoverPolicy getCrossoverPolicy() {
        return this.crossoverPolicy;
    }

    public double getCrossoverRate() {
        return this.crossoverRate;
    }

    public int getGenerationsEvolved() {
        return this.generationsEvolved;
    }

    public MutationPolicy getMutationPolicy() {
        return this.mutationPolicy;
    }

    public double getMutationRate() {
        return this.mutationRate;
    }

    public SelectionPolicy getSelectionPolicy() {
        return this.selectionPolicy;
    }

    public Population nextGeneration(Population population) {
        Population nextGeneration = population.nextGeneration();
        RandomGenerator randomGenerator2 = getRandomGenerator();
        while (nextGeneration.getPopulationSize() < nextGeneration.getPopulationLimit()) {
            ChromosomePair select = getSelectionPolicy().select(population);
            if (randomGenerator2.nextDouble() < getCrossoverRate()) {
                select = getCrossoverPolicy().crossover(select.getFirst(), select.getSecond());
            }
            if (randomGenerator2.nextDouble() < getMutationRate()) {
                select = new ChromosomePair(getMutationPolicy().mutate(select.getFirst()), getMutationPolicy().mutate(select.getSecond()));
            }
            nextGeneration.addChromosome(select.getFirst());
            if (nextGeneration.getPopulationSize() < nextGeneration.getPopulationLimit()) {
                nextGeneration.addChromosome(select.getSecond());
            }
        }
        return nextGeneration;
    }
}
