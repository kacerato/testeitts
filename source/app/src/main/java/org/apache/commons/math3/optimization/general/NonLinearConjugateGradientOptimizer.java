package org.apache.commons.math3.optimization.general;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.solvers.BrentSolver;
import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.SimpleValueChecker;
import org.apache.commons.math3.util.FastMath;

@Deprecated
public class NonLinearConjugateGradientOptimizer extends AbstractScalarDifferentiableOptimizer {
    private double initialStep;
    private double[] point;
    private final Preconditioner preconditioner;
    private final UnivariateSolver solver;
    private final ConjugateGradientFormula updateFormula;

    public static class IdentityPreconditioner implements Preconditioner {
        @Override
        public double[] precondition(double[] dArr, double[] dArr2) {
            return (double[]) dArr2.clone();
        }
    }

    public class LineSearchFunction implements UnivariateFunction {
        private final double[] searchDirection;

        public LineSearchFunction(double[] dArr) {
            this.searchDirection = dArr;
        }

        @Override
        public double value(double d10) {
            double[] dArr = (double[]) NonLinearConjugateGradientOptimizer.this.point.clone();
            for (int i10 = 0; i10 < dArr.length; i10++) {
                dArr[i10] = dArr[i10] + (this.searchDirection[i10] * d10);
            }
            double[] computeObjectiveGradient = NonLinearConjugateGradientOptimizer.this.computeObjectiveGradient(dArr);
            double d11 = 0.0d;
            for (int i11 = 0; i11 < computeObjectiveGradient.length; i11++) {
                d11 += computeObjectiveGradient[i11] * this.searchDirection[i11];
            }
            return d11;
        }
    }

    @Deprecated
    public NonLinearConjugateGradientOptimizer(ConjugateGradientFormula conjugateGradientFormula) {
        this(conjugateGradientFormula, new SimpleValueChecker());
    }

    private double findUpperBound(UnivariateFunction univariateFunction, double d10, double d11) {
        double value = univariateFunction.value(d10);
        while (d11 < Double.MAX_VALUE) {
            double d12 = d10 + d11;
            double value2 = univariateFunction.value(d12);
            if (value * value2 <= 0.0d) {
                return d12;
            }
            d11 *= FastMath.max(2.0d, value / value2);
        }
        throw new MathIllegalStateException(LocalizedFormats.UNABLE_TO_BRACKET_OPTIMUM_IN_LINE_SEARCH, new Object[0]);
    }

    @Override
    public PointValuePair doOptimize() {
        double[] dArr;
        double d10;
        ConvergenceChecker<PointValuePair> convergenceChecker = getConvergenceChecker();
        this.point = getStartPoint();
        GoalType goalType = getGoalType();
        double[] dArr2 = this.point;
        int length = dArr2.length;
        double[] computeObjectiveGradient = computeObjectiveGradient(dArr2);
        if (goalType == GoalType.MINIMIZE) {
            for (int i10 = 0; i10 < length; i10++) {
                computeObjectiveGradient[i10] = -computeObjectiveGradient[i10];
            }
        }
        double[] precondition = this.preconditioner.precondition(this.point, computeObjectiveGradient);
        double[] dArr3 = (double[]) precondition.clone();
        double d11 = 0.0d;
        for (int i11 = 0; i11 < length; i11++) {
            d11 += computeObjectiveGradient[i11] * dArr3[i11];
        }
        PointValuePair pointValuePair = null;
        int maxEvaluations = getMaxEvaluations();
        double[] dArr4 = precondition;
        double[] dArr5 = dArr3;
        double d12 = d11;
        int i12 = 0;
        while (true) {
            int i13 = i12 + 1;
            PointValuePair pointValuePair2 = new PointValuePair(this.point, computeObjectiveValue(this.point));
            if (pointValuePair != null && convergenceChecker.converged(i13, pointValuePair, pointValuePair2)) {
                return pointValuePair2;
            }
            LineSearchFunction lineSearchFunction = new LineSearchFunction(dArr5);
            double findUpperBound = findUpperBound(lineSearchFunction, 0.0d, this.initialStep);
            pointValuePair = pointValuePair2;
            double[] dArr6 = dArr5;
            double solve = this.solver.solve(maxEvaluations, lineSearchFunction, 0.0d, findUpperBound, 1.0E-15d);
            maxEvaluations -= this.solver.getEvaluations();
            int i14 = 0;
            while (true) {
                dArr = this.point;
                if (i14 >= dArr.length) {
                    break;
                }
                dArr[i14] = dArr[i14] + (dArr6[i14] * solve);
                i14++;
            }
            double[] computeObjectiveGradient2 = computeObjectiveGradient(dArr);
            if (goalType == GoalType.MINIMIZE) {
                for (int i15 = 0; i15 < length; i15++) {
                    computeObjectiveGradient2[i15] = -computeObjectiveGradient2[i15];
                }
            }
            double[] precondition2 = this.preconditioner.precondition(this.point, computeObjectiveGradient2);
            double d13 = 0.0d;
            for (int i16 = 0; i16 < length; i16++) {
                d13 += computeObjectiveGradient2[i16] * precondition2[i16];
            }
            if (this.updateFormula == ConjugateGradientFormula.FLETCHER_REEVES) {
                d10 = d13 / d12;
            } else {
                double d14 = 0.0d;
                for (int i17 = 0; i17 < computeObjectiveGradient2.length; i17++) {
                    d14 += computeObjectiveGradient2[i17] * dArr4[i17];
                }
                d10 = (d13 - d14) / d12;
            }
            if (i13 % length == 0 || d10 < 0.0d) {
                dArr5 = (double[]) precondition2.clone();
            } else {
                for (int i18 = 0; i18 < length; i18++) {
                    dArr6[i18] = precondition2[i18] + (dArr6[i18] * d10);
                }
                dArr5 = dArr6;
            }
            dArr4 = precondition2;
            i12 = i13;
            d12 = d13;
        }
    }

    public void setInitialStep(double d10) {
        if (d10 <= 0.0d) {
            this.initialStep = 1.0d;
        } else {
            this.initialStep = d10;
        }
    }

    public NonLinearConjugateGradientOptimizer(ConjugateGradientFormula conjugateGradientFormula, ConvergenceChecker<PointValuePair> convergenceChecker) {
        this(conjugateGradientFormula, convergenceChecker, new BrentSolver(), new IdentityPreconditioner());
    }

    public NonLinearConjugateGradientOptimizer(ConjugateGradientFormula conjugateGradientFormula, ConvergenceChecker<PointValuePair> convergenceChecker, UnivariateSolver univariateSolver) {
        this(conjugateGradientFormula, convergenceChecker, univariateSolver, new IdentityPreconditioner());
    }

    public NonLinearConjugateGradientOptimizer(ConjugateGradientFormula conjugateGradientFormula, ConvergenceChecker<PointValuePair> convergenceChecker, UnivariateSolver univariateSolver, Preconditioner preconditioner) {
        super(convergenceChecker);
        this.updateFormula = conjugateGradientFormula;
        this.solver = univariateSolver;
        this.preconditioner = preconditioner;
        this.initialStep = 1.0d;
    }
}
