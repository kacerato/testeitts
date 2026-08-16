package org.apache.commons.math3.optimization;

@Deprecated
public interface ConvergenceChecker<PAIR> {
    boolean converged(int i10, PAIR pair, PAIR pair2);
}
