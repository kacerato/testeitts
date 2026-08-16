package org.apache.commons.math3.optim.nonlinear.scalar.gradient;

import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.optim.nonlinear.scalar.GradientMultivariateOptimizer;
import org.apache.commons.math3.optim.nonlinear.scalar.LineSearch;

public class NonLinearConjugateGradientOptimizer extends GradientMultivariateOptimizer {
    private final LineSearch line;
    private final Preconditioner preconditioner;
    private final Formula updateFormula;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$optim$nonlinear$scalar$gradient$NonLinearConjugateGradientOptimizer$Formula;

        static {
            int[] iArr = new int[Formula.values().length];
            $SwitchMap$org$apache$commons$math3$optim$nonlinear$scalar$gradient$NonLinearConjugateGradientOptimizer$Formula = iArr;
            try {
                iArr[Formula.FLETCHER_REEVES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$optim$nonlinear$scalar$gradient$NonLinearConjugateGradientOptimizer$Formula[Formula.POLAK_RIBIERE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Deprecated
    public static class BracketingStep implements OptimizationData {
        private final double initialStep;

        public BracketingStep(double d10) {
            this.initialStep = d10;
        }

        public double getBracketingStep() {
            return this.initialStep;
        }
    }

    public enum Formula {
        FLETCHER_REEVES,
        POLAK_RIBIERE
    }

    public static class IdentityPreconditioner implements Preconditioner {
        @Override
        public double[] precondition(double[] dArr, double[] dArr2) {
            return (double[]) dArr2.clone();
        }
    }

    public NonLinearConjugateGradientOptimizer(Formula formula, ConvergenceChecker<PointValuePair> convergenceChecker) {
        this(formula, convergenceChecker, 1.0E-8d, 1.0E-8d, 1.0E-8d, new IdentityPreconditioner());
    }

    private void checkParameters() {
        if (getLowerBound() != null || getUpperBound() != null) {
            throw new MathUnsupportedOperationException(LocalizedFormats.CONSTRAINT, new Object[0]);
        }
    }

    @Override
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        checkParameters();
    }

    @Deprecated
    public NonLinearConjugateGradientOptimizer(Formula formula, ConvergenceChecker<PointValuePair> convergenceChecker, UnivariateSolver univariateSolver) {
        this(formula, convergenceChecker, univariateSolver, new IdentityPreconditioner());
    }

    @Override
    public PointValuePair doOptimize() {
        double d10;
        ConvergenceChecker<PointValuePair> convergenceChecker = getConvergenceChecker();
        double[] startPoint = getStartPoint();
        GoalType goalType = getGoalType();
        int length = startPoint.length;
        double[] computeObjectiveGradient = computeObjectiveGradient(startPoint);
        if (goalType == GoalType.MINIMIZE) {
            for (int i10 = 0; i10 < length; i10++) {
                computeObjectiveGradient[i10] = -computeObjectiveGradient[i10];
            }
        }
        double[] precondition = this.preconditioner.precondition(startPoint, computeObjectiveGradient);
        double[] dArr = (double[]) precondition.clone();
        double d11 = 0.0d;
        for (int i11 = 0; i11 < length; i11++) {
            d11 += computeObjectiveGradient[i11] * dArr[i11];
        }
        PointValuePair pointValuePair = null;
        while (true) {
            incrementIterationCount();
            PointValuePair pointValuePair2 = new PointValuePair(startPoint, computeObjectiveValue(startPoint));
            if (pointValuePair != null && convergenceChecker.converged(getIterations(), pointValuePair, pointValuePair2)) {
                return pointValuePair2;
            }
            double point = this.line.search(startPoint, dArr).getPoint();
            for (int i12 = 0; i12 < startPoint.length; i12++) {
                startPoint[i12] = startPoint[i12] + (dArr[i12] * point);
            }
            double[] computeObjectiveGradient2 = computeObjectiveGradient(startPoint);
            if (goalType == GoalType.MINIMIZE) {
                for (int i13 = 0; i13 < length; i13++) {
                    computeObjectiveGradient2[i13] = -computeObjectiveGradient2[i13];
                }
            }
            double[] precondition2 = this.preconditioner.precondition(startPoint, computeObjectiveGradient2);
            double d12 = 0.0d;
            for (int i14 = 0; i14 < length; i14++) {
                d12 += computeObjectiveGradient2[i14] * precondition2[i14];
            }
            int i15 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$optim$nonlinear$scalar$gradient$NonLinearConjugateGradientOptimizer$Formula[this.updateFormula.ordinal()];
            if (i15 == 1) {
                d10 = d12 / d11;
            } else if (i15 == 2) {
                double d13 = 0.0d;
                for (int i16 = 0; i16 < computeObjectiveGradient2.length; i16++) {
                    d13 += computeObjectiveGradient2[i16] * precondition[i16];
                }
                d10 = (d12 - d13) / d11;
            } else {
                throw new MathInternalError();
            }
            if (getIterations() % length != 0 && d10 >= 0.0d) {
                for (int i17 = 0; i17 < length; i17++) {
                    dArr[i17] = precondition2[i17] + (dArr[i17] * d10);
                }
                precondition = precondition2;
                pointValuePair = pointValuePair2;
                d11 = d12;
            }
            dArr = (double[]) precondition2.clone();
            precondition = precondition2;
            pointValuePair = pointValuePair2;
            d11 = d12;
        }
    }

    @Override
    public PointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException {
        return super.optimize(optimizationDataArr);
    }

    public NonLinearConjugateGradientOptimizer(Formula formula, ConvergenceChecker<PointValuePair> convergenceChecker, double d10, double d11, double d12) {
        this(formula, convergenceChecker, d10, d11, d12, new IdentityPreconditioner());
    }

    @Deprecated
    public NonLinearConjugateGradientOptimizer(Formula formula, ConvergenceChecker<PointValuePair> convergenceChecker, UnivariateSolver univariateSolver, Preconditioner preconditioner) {
        this(formula, convergenceChecker, univariateSolver.getRelativeAccuracy(), univariateSolver.getAbsoluteAccuracy(), univariateSolver.getAbsoluteAccuracy(), preconditioner);
    }

    public NonLinearConjugateGradientOptimizer(Formula formula, ConvergenceChecker<PointValuePair> convergenceChecker, double d10, double d11, double d12, Preconditioner preconditioner) {
        super(convergenceChecker);
        this.updateFormula = formula;
        this.preconditioner = preconditioner;
        this.line = new LineSearch(this, d10, d11, d12);
    }
}
