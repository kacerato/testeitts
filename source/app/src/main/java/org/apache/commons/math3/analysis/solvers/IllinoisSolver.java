package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.solvers.BaseSecantSolver;

public class IllinoisSolver extends BaseSecantSolver {
    public IllinoisSolver() {
        super(1.0E-6d, BaseSecantSolver.Method.ILLINOIS);
    }

    public IllinoisSolver(double d10) {
        super(d10, BaseSecantSolver.Method.ILLINOIS);
    }

    public IllinoisSolver(double d10, double d11) {
        super(d10, d11, BaseSecantSolver.Method.ILLINOIS);
    }

    public IllinoisSolver(double d10, double d11, double d12) {
        super(d10, d11, d12, BaseSecantSolver.Method.PEGASUS);
    }
}
