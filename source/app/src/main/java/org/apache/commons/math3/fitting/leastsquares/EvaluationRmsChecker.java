package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.util.Precision;

public class EvaluationRmsChecker implements ConvergenceChecker<LeastSquaresProblem.Evaluation> {
    private final double absTol;
    private final double relTol;

    public EvaluationRmsChecker(double d10) {
        this(d10, d10);
    }

    public EvaluationRmsChecker(double d10, double d11) {
        this.relTol = d10;
        this.absTol = d11;
    }

    @Override
    public boolean converged(int i10, LeastSquaresProblem.Evaluation evaluation, LeastSquaresProblem.Evaluation evaluation2) {
        double rms = evaluation.getRMS();
        double rms2 = evaluation2.getRMS();
        return Precision.equals(rms, rms2, this.absTol) || Precision.equalsWithRelativeTolerance(rms, rms2, this.relTol);
    }
}
