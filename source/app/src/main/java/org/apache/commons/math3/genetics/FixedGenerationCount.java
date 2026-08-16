package org.apache.commons.math3.genetics;

import org.apache.commons.math3.exception.NumberIsTooSmallException;

public class FixedGenerationCount implements StoppingCondition {
    private final int maxGenerations;
    private int numGenerations = 0;

    public FixedGenerationCount(int i10) throws NumberIsTooSmallException {
        if (i10 <= 0) {
            throw new NumberIsTooSmallException(Integer.valueOf(i10), 1, true);
        }
        this.maxGenerations = i10;
    }

    public int getNumGenerations() {
        return this.numGenerations;
    }

    @Override
    public boolean isSatisfied(Population population) {
        int i10 = this.numGenerations;
        if (i10 >= this.maxGenerations) {
            return true;
        }
        this.numGenerations = i10 + 1;
        return false;
    }
}
