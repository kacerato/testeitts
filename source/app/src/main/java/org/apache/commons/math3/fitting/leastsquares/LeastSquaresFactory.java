package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.analysis.MultivariateMatrixFunction;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.DiagonalMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optim.AbstractOptimizationProblem;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.PointVectorValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.Pair;

public class LeastSquaresFactory {

    public static class LocalLeastSquaresProblem extends AbstractOptimizationProblem<LeastSquaresProblem.Evaluation> implements LeastSquaresProblem {
        private final boolean lazyEvaluation;
        private final MultivariateJacobianFunction model;
        private final ParameterValidator paramValidator;
        private final RealVector start;
        private final RealVector target;

        public static class LazyUnweightedEvaluation extends AbstractEvaluation {
            private final ValueAndJacobianFunction model;
            private final RealVector point;
            private final RealVector target;

            @Override
            public RealMatrix getJacobian() {
                return this.model.computeJacobian(this.point.toArray());
            }

            @Override
            public RealVector getPoint() {
                return this.point;
            }

            @Override
            public RealVector getResiduals() {
                return this.target.subtract(this.model.computeValue(this.point.toArray()));
            }

            private LazyUnweightedEvaluation(ValueAndJacobianFunction valueAndJacobianFunction, RealVector realVector, RealVector realVector2) {
                super(realVector.getDimension());
                this.model = valueAndJacobianFunction;
                this.point = realVector2;
                this.target = realVector;
            }
        }

        public static class UnweightedEvaluation extends AbstractEvaluation {
            private final RealMatrix jacobian;
            private final RealVector point;
            private final RealVector residuals;

            @Override
            public RealMatrix getJacobian() {
                return this.jacobian;
            }

            @Override
            public RealVector getPoint() {
                return this.point;
            }

            @Override
            public RealVector getResiduals() {
                return this.residuals;
            }

            private UnweightedEvaluation(RealVector realVector, RealMatrix realMatrix, RealVector realVector2, RealVector realVector3) {
                super(realVector2.getDimension());
                this.jacobian = realMatrix;
                this.point = realVector3;
                this.residuals = realVector2.subtract(realVector);
            }
        }

        public LocalLeastSquaresProblem(MultivariateJacobianFunction multivariateJacobianFunction, RealVector realVector, RealVector realVector2, ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker, int i10, int i11, boolean z10, ParameterValidator parameterValidator) {
            super(i10, i11, convergenceChecker);
            this.target = realVector;
            this.model = multivariateJacobianFunction;
            this.start = realVector2;
            this.lazyEvaluation = z10;
            this.paramValidator = parameterValidator;
            if (z10 && !(multivariateJacobianFunction instanceof ValueAndJacobianFunction)) {
                throw new MathIllegalStateException(LocalizedFormats.INVALID_IMPLEMENTATION, multivariateJacobianFunction.getClass().getName());
            }
        }

        @Override
        public LeastSquaresProblem.Evaluation evaluate(RealVector realVector) {
            ParameterValidator parameterValidator = this.paramValidator;
            RealVector copy = realVector.copy();
            if (parameterValidator != null) {
                copy = parameterValidator.validate(copy);
            }
            RealVector realVector2 = copy;
            if (this.lazyEvaluation) {
                return new LazyUnweightedEvaluation((ValueAndJacobianFunction) this.model, this.target, realVector2);
            }
            Pair<RealVector, RealMatrix> value = this.model.value(realVector2);
            return new UnweightedEvaluation(value.getFirst(), value.getSecond(), this.target, realVector2);
        }

        @Override
        public int getObservationSize() {
            return this.target.getDimension();
        }

        @Override
        public int getParameterSize() {
            return this.start.getDimension();
        }

        @Override
        public RealVector getStart() {
            RealVector realVector = this.start;
            if (realVector == null) {
                return null;
            }
            return realVector.copy();
        }
    }

    public static class LocalValueAndJacobianFunction implements ValueAndJacobianFunction {
        private final MultivariateMatrixFunction jacobian;
        private final MultivariateVectorFunction value;

        public LocalValueAndJacobianFunction(MultivariateVectorFunction multivariateVectorFunction, MultivariateMatrixFunction multivariateMatrixFunction) {
            this.value = multivariateVectorFunction;
            this.jacobian = multivariateMatrixFunction;
        }

        @Override
        public RealMatrix computeJacobian(double[] dArr) {
            return new Array2DRowRealMatrix(this.jacobian.value(dArr), false);
        }

        @Override
        public RealVector computeValue(double[] dArr) {
            return new ArrayRealVector(this.value.value(dArr), false);
        }

        @Override
        public Pair<RealVector, RealMatrix> value(RealVector realVector) {
            double[] array = realVector.toArray();
            return new Pair<>(computeValue(array), computeJacobian(array));
        }
    }

    private LeastSquaresFactory() {
    }

    public static LeastSquaresProblem countEvaluations(LeastSquaresProblem leastSquaresProblem, final Incrementor incrementor) {
        return new LeastSquaresAdapter(leastSquaresProblem) {
            @Override
            public LeastSquaresProblem.Evaluation evaluate(RealVector realVector) {
                incrementor.incrementCount();
                return super.evaluate(realVector);
            }
        };
    }

    public static LeastSquaresProblem create(MultivariateJacobianFunction multivariateJacobianFunction, RealVector realVector, RealVector realVector2, RealMatrix realMatrix, ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker, int i10, int i11, boolean z10, ParameterValidator parameterValidator) {
        LocalLeastSquaresProblem localLeastSquaresProblem = new LocalLeastSquaresProblem(multivariateJacobianFunction, realVector, realVector2, convergenceChecker, i10, i11, z10, parameterValidator);
        return realMatrix != null ? weightMatrix(localLeastSquaresProblem, realMatrix) : localLeastSquaresProblem;
    }

    public static ConvergenceChecker<LeastSquaresProblem.Evaluation> evaluationChecker(final ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        return new ConvergenceChecker<LeastSquaresProblem.Evaluation>() {
            @Override
            public boolean converged(int i10, LeastSquaresProblem.Evaluation evaluation, LeastSquaresProblem.Evaluation evaluation2) {
                return ConvergenceChecker.this.converged(i10, new PointVectorValuePair(evaluation.getPoint().toArray(), evaluation.getResiduals().toArray(), false), new PointVectorValuePair(evaluation2.getPoint().toArray(), evaluation2.getResiduals().toArray(), false));
            }
        };
    }

    public static MultivariateJacobianFunction model(MultivariateVectorFunction multivariateVectorFunction, MultivariateMatrixFunction multivariateMatrixFunction) {
        return new LocalValueAndJacobianFunction(multivariateVectorFunction, multivariateMatrixFunction);
    }

    private static RealMatrix squareRoot(RealMatrix realMatrix) {
        if (!(realMatrix instanceof DiagonalMatrix)) {
            return new EigenDecomposition(realMatrix).getSquareRoot();
        }
        int rowDimension = realMatrix.getRowDimension();
        DiagonalMatrix diagonalMatrix = new DiagonalMatrix(rowDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            diagonalMatrix.setEntry(i10, i10, FastMath.sqrt(realMatrix.getEntry(i10, i10)));
        }
        return diagonalMatrix;
    }

    public static LeastSquaresProblem weightDiagonal(LeastSquaresProblem leastSquaresProblem, RealVector realVector) {
        return weightMatrix(leastSquaresProblem, new DiagonalMatrix(realVector.toArray()));
    }

    public static LeastSquaresProblem weightMatrix(LeastSquaresProblem leastSquaresProblem, RealMatrix realMatrix) {
        final RealMatrix squareRoot = squareRoot(realMatrix);
        return new LeastSquaresAdapter(leastSquaresProblem) {
            @Override
            public LeastSquaresProblem.Evaluation evaluate(RealVector realVector) {
                return new DenseWeightedEvaluation(super.evaluate(realVector), squareRoot);
            }
        };
    }

    public static LeastSquaresProblem create(MultivariateJacobianFunction multivariateJacobianFunction, RealVector realVector, RealVector realVector2, ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker, int i10, int i11) {
        return create(multivariateJacobianFunction, realVector, realVector2, null, convergenceChecker, i10, i11, false, null);
    }

    public static LeastSquaresProblem create(MultivariateJacobianFunction multivariateJacobianFunction, RealVector realVector, RealVector realVector2, RealMatrix realMatrix, ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker, int i10, int i11) {
        return weightMatrix(create(multivariateJacobianFunction, realVector, realVector2, convergenceChecker, i10, i11), realMatrix);
    }

    public static LeastSquaresProblem create(MultivariateVectorFunction multivariateVectorFunction, MultivariateMatrixFunction multivariateMatrixFunction, double[] dArr, double[] dArr2, RealMatrix realMatrix, ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker, int i10, int i11) {
        return create(model(multivariateVectorFunction, multivariateMatrixFunction), new ArrayRealVector(dArr, false), new ArrayRealVector(dArr2, false), realMatrix, convergenceChecker, i10, i11);
    }
}
