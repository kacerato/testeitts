package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.solvers.BaseSecantSolver;

public class RegulaFalsiSolver extends BaseSecantSolver {
    public RegulaFalsiSolver() {
        super(1.0E-6d, BaseSecantSolver.Method.REGULA_FALSI);
    }

    public RegulaFalsiSolver(double d10) {
        super(d10, BaseSecantSolver.Method.REGULA_FALSI);
    }

    public RegulaFalsiSolver(double d10, double d11) {
        super(d10, d11, BaseSecantSolver.Method.REGULA_FALSI);
    }

    public RegulaFalsiSolver(double d10, double d11, double d12) {
        super(d10, d11, d12, BaseSecantSolver.Method.REGULA_FALSI);
    }
}
