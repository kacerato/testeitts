package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.CholeskyDecomposition;
import org.apache.commons.math3.linear.LUDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.NonPositiveDefiniteMatrixException;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.linear.SingularMatrixException;
import org.apache.commons.math3.linear.SingularValueDecomposition;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.Pair;
import org.eclipse.jdt.internal.core.JavaElement;

public class GaussNewtonOptimizer implements LeastSquaresOptimizer {
    private static final double SINGULARITY_THRESHOLD = 1.0E-11d;
    private final Decomposition decomposition;

    public enum Decomposition {
        LU {
            @Override
            public RealVector solve(RealMatrix realMatrix, RealVector realVector) {
                try {
                    Pair computeNormalMatrix = GaussNewtonOptimizer.computeNormalMatrix(realMatrix, realVector);
                    RealMatrix realMatrix2 = (RealMatrix) computeNormalMatrix.getFirst();
                    return new LUDecomposition(realMatrix2, GaussNewtonOptimizer.SINGULARITY_THRESHOLD).getSolver().solve((RealVector) computeNormalMatrix.getSecond());
                } catch (SingularMatrixException e10) {
                    throw new ConvergenceException(LocalizedFormats.UNABLE_TO_SOLVE_SINGULAR_PROBLEM, e10);
                }
            }
        },
        QR {
            @Override
            public RealVector solve(RealMatrix realMatrix, RealVector realVector) {
                try {
                    return new QRDecomposition(realMatrix, GaussNewtonOptimizer.SINGULARITY_THRESHOLD).getSolver().solve(realVector);
                } catch (SingularMatrixException e10) {
                    throw new ConvergenceException(LocalizedFormats.UNABLE_TO_SOLVE_SINGULAR_PROBLEM, e10);
                }
            }
        },
        CHOLESKY {
            @Override
            public RealVector solve(RealMatrix realMatrix, RealVector realVector) {
                try {
                    Pair computeNormalMatrix = GaussNewtonOptimizer.computeNormalMatrix(realMatrix, realVector);
                    RealMatrix realMatrix2 = (RealMatrix) computeNormalMatrix.getFirst();
                    return new CholeskyDecomposition(realMatrix2, GaussNewtonOptimizer.SINGULARITY_THRESHOLD, GaussNewtonOptimizer.SINGULARITY_THRESHOLD).getSolver().solve((RealVector) computeNormalMatrix.getSecond());
                } catch (NonPositiveDefiniteMatrixException e10) {
                    throw new ConvergenceException(LocalizedFormats.UNABLE_TO_SOLVE_SINGULAR_PROBLEM, e10);
                }
            }
        },
        SVD {
            @Override
            public RealVector solve(RealMatrix realMatrix, RealVector realVector) {
                return new SingularValueDecomposition(realMatrix).getSolver().solve(realVector);
            }
        };

        public abstract RealVector solve(RealMatrix realMatrix, RealVector realVector);
    }

    public GaussNewtonOptimizer() {
        this(Decomposition.QR);
    }

    public static Pair<RealMatrix, RealVector> computeNormalMatrix(RealMatrix realMatrix, RealVector realVector) {
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        RealMatrix createRealMatrix = MatrixUtils.createRealMatrix(columnDimension, columnDimension);
        ArrayRealVector arrayRealVector = new ArrayRealVector(columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                arrayRealVector.setEntry(i11, arrayRealVector.getEntry(i11) + (realVector.getEntry(i10) * realMatrix.getEntry(i10, i11)));
            }
            for (int i12 = 0; i12 < columnDimension; i12++) {
                for (int i13 = i12; i13 < columnDimension; i13++) {
                    createRealMatrix.setEntry(i12, i13, createRealMatrix.getEntry(i12, i13) + (realMatrix.getEntry(i10, i12) * realMatrix.getEntry(i10, i13)));
                }
            }
        }
        for (int i14 = 0; i14 < columnDimension; i14++) {
            for (int i15 = 0; i15 < i14; i15++) {
                createRealMatrix.setEntry(i14, i15, createRealMatrix.getEntry(i15, i14));
            }
        }
        return new Pair<>(createRealMatrix, arrayRealVector);
    }

    public Decomposition getDecomposition() {
        return this.decomposition;
    }

    @Override
    public LeastSquaresOptimizer.Optimum optimize(LeastSquaresProblem leastSquaresProblem) {
        Incrementor evaluationCounter = leastSquaresProblem.getEvaluationCounter();
        Incrementor iterationCounter = leastSquaresProblem.getIterationCounter();
        ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker = leastSquaresProblem.getConvergenceChecker();
        if (convergenceChecker == null) {
            throw new NullArgumentException();
        }
        RealVector start = leastSquaresProblem.getStart();
        LeastSquaresProblem.Evaluation evaluation = null;
        while (true) {
            iterationCounter.incrementCount();
            evaluationCounter.incrementCount();
            LeastSquaresProblem.Evaluation evaluate = leastSquaresProblem.evaluate(start);
            RealVector residuals = evaluate.getResiduals();
            RealMatrix jacobian = evaluate.getJacobian();
            RealVector point = evaluate.getPoint();
            if (evaluation != null && convergenceChecker.converged(iterationCounter.getCount(), evaluation, evaluate)) {
                return new OptimumImpl(evaluate, evaluationCounter.getCount(), iterationCounter.getCount());
            }
            evaluation = evaluate;
            start = point.add(this.decomposition.solve(jacobian, residuals));
        }
    }

    public String toString() {
        return "GaussNewtonOptimizer{decomposition=" + ((Object) this.decomposition) + JavaElement.JEM_ANNOTATION;
    }

    public GaussNewtonOptimizer withDecomposition(Decomposition decomposition) {
        return new GaussNewtonOptimizer(decomposition);
    }

    public GaussNewtonOptimizer(Decomposition decomposition) {
        this.decomposition = decomposition;
    }
}
