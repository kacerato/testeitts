package org.apache.commons.math3.optim.nonlinear.vector.jacobian;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.DiagonalMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointVectorValuePair;
import org.apache.commons.math3.optim.nonlinear.vector.JacobianMultivariateVectorOptimizer;
import org.apache.commons.math3.optim.nonlinear.vector.Weight;
import org.apache.commons.math3.util.FastMath;

@Deprecated
public abstract class AbstractLeastSquaresOptimizer extends JacobianMultivariateVectorOptimizer {
    private double cost;
    private RealMatrix weightMatrixSqrt;

    public AbstractLeastSquaresOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    private RealMatrix squareRoot(RealMatrix realMatrix) {
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

    public double computeCost(double[] dArr) {
        ArrayRealVector arrayRealVector = new ArrayRealVector(dArr);
        return FastMath.sqrt(arrayRealVector.dotProduct(getWeight().operate(arrayRealVector)));
    }

    public double[][] computeCovariances(double[] dArr, double d10) {
        RealMatrix computeWeightedJacobian = computeWeightedJacobian(dArr);
        return new QRDecomposition(computeWeightedJacobian.transpose().multiply(computeWeightedJacobian), d10).getSolver().getInverse().getData();
    }

    public double[] computeResiduals(double[] dArr) {
        double[] target = getTarget();
        if (dArr.length != target.length) {
            throw new DimensionMismatchException(target.length, dArr.length);
        }
        double[] dArr2 = new double[target.length];
        for (int i10 = 0; i10 < target.length; i10++) {
            dArr2[i10] = target[i10] - dArr[i10];
        }
        return dArr2;
    }

    public double[] computeSigma(double[] dArr, double d10) {
        int length = dArr.length;
        double[] dArr2 = new double[length];
        double[][] computeCovariances = computeCovariances(dArr, d10);
        for (int i10 = 0; i10 < length; i10++) {
            dArr2[i10] = FastMath.sqrt(computeCovariances[i10][i10]);
        }
        return dArr2;
    }

    public RealMatrix computeWeightedJacobian(double[] dArr) {
        return this.weightMatrixSqrt.multiply(MatrixUtils.createRealMatrix(computeJacobian(dArr)));
    }

    public double getChiSquare() {
        double d10 = this.cost;
        return d10 * d10;
    }

    public double getRMS() {
        return FastMath.sqrt(getChiSquare() / getTargetSize());
    }

    public RealMatrix getWeightSquareRoot() {
        return this.weightMatrixSqrt.copy();
    }

    @Override
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof Weight) {
                this.weightMatrixSqrt = squareRoot(((Weight) optimizationData).getWeight());
                return;
            }
        }
    }

    public void setCost(double d10) {
        this.cost = d10;
    }

    @Override
    public PointVectorValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException {
        return super.optimize(optimizationDataArr);
    }
}
