package org.apache.commons.math3.optim;

public interface ConvergenceChecker<PAIR> {
    boolean converged(int i10, PAIR pair, PAIR pair2);
}
