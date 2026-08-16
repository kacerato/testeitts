package org.apache.commons.math3.optimization.general;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.DifferentiableMultivariateVectorFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableVectorFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.DiagonalMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.DifferentiableMultivariateVectorOptimizer;
import org.apache.commons.math3.optimization.InitialGuess;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointVectorValuePair;
import org.apache.commons.math3.optimization.Target;
import org.apache.commons.math3.optimization.Weight;
import org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateVectorOptimizer;
import org.apache.commons.math3.util.FastMath;

@Deprecated
public abstract class AbstractLeastSquaresOptimizer extends BaseAbstractMultivariateVectorOptimizer<DifferentiableMultivariateVectorFunction> implements DifferentiableMultivariateVectorOptimizer {

    @Deprecated
    private static final double DEFAULT_SINGULARITY_THRESHOLD = 1.0E-14d;

    @Deprecated
    protected int cols;

    @Deprecated
    protected double cost;
    private MultivariateDifferentiableVectorFunction jF;
    private int jacobianEvaluations;

    @Deprecated
    protected double[] objective;

    @Deprecated
    protected double[] point;

    @Deprecated
    protected int rows;
    private RealMatrix weightMatrixSqrt;

    @Deprecated
    protected double[][] weightedResidualJacobian;

    @Deprecated
    protected double[] weightedResiduals;

    @Deprecated
    public AbstractLeastSquaresOptimizer() {
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
        this.jacobianEvaluations++;
        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[dArr.length];
        int length = dArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            derivativeStructureArr[i10] = new DerivativeStructure(length, 1, i10, dArr[i10]);
        }
        DerivativeStructure[] value = this.jF.value(derivativeStructureArr);
        int length2 = getTarget().length;
        if (value.length != length2) {
            throw new DimensionMismatchException(value.length, length2);
        }
        double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, length2, length);
        for (int i11 = 0; i11 < length2; i11++) {
            int[] iArr = new int[length];
            for (int i12 = 0; i12 < length; i12++) {
                iArr[i12] = 1;
                dArr2[i11][i12] = value[i11].getPartialDerivative(iArr);
                iArr[i12] = 0;
            }
        }
        return this.weightMatrixSqrt.multiply(MatrixUtils.createRealMatrix(dArr2));
    }

    public double getChiSquare() {
        double d10 = this.cost;
        return d10 * d10;
    }

    @Deprecated
    public double[][] getCovariances() {
        return getCovariances(DEFAULT_SINGULARITY_THRESHOLD);
    }

    public int getJacobianEvaluations() {
        return this.jacobianEvaluations;
    }

    public double getRMS() {
        return FastMath.sqrt(getChiSquare() / this.rows);
    }

    public RealMatrix getWeightSquareRoot() {
        return this.weightMatrixSqrt.copy();
    }

    @Deprecated
    public double[] guessParametersErrors() {
        int i10 = this.rows;
        int i11 = this.cols;
        if (i10 <= i11) {
            throw new NumberIsTooSmallException(LocalizedFormats.NO_DEGREES_OF_FREEDOM, Integer.valueOf(this.rows), Integer.valueOf(this.cols), false);
        }
        double[] dArr = new double[i11];
        double sqrt = FastMath.sqrt(getChiSquare() / (this.rows - this.cols));
        double[][] computeCovariances = computeCovariances(this.point, DEFAULT_SINGULARITY_THRESHOLD);
        for (int i12 = 0; i12 < i11; i12++) {
            dArr[i12] = FastMath.sqrt(computeCovariances[i12][i12]) * sqrt;
        }
        return dArr;
    }

    @Deprecated
    public PointVectorValuePair optimizeInternal(int i10, MultivariateDifferentiableVectorFunction multivariateDifferentiableVectorFunction, OptimizationData... optimizationDataArr) {
        return super.optimizeInternal(i10, (int) FunctionUtils.toDifferentiableMultivariateVectorFunction(multivariateDifferentiableVectorFunction), optimizationDataArr);
    }

    public void setCost(double d10) {
        this.cost = d10;
    }

    @Override
    public void setUp() {
        super.setUp();
        this.jacobianEvaluations = 0;
        this.weightMatrixSqrt = squareRoot(getWeight());
        this.jF = FunctionUtils.toMultivariateDifferentiableVectorFunction(getObjectiveFunction());
        this.point = getStartPoint();
        this.rows = getTarget().length;
        this.cols = this.point.length;
    }

    @Deprecated
    public void updateJacobian() {
        this.weightedResidualJacobian = computeWeightedJacobian(this.point).scalarMultiply(-1.0d).getData();
    }

    @Deprecated
    public void updateResidualsAndCost() {
        double[] computeObjectiveValue = computeObjectiveValue(this.point);
        this.objective = computeObjectiveValue;
        double[] computeResiduals = computeResiduals(computeObjectiveValue);
        this.cost = computeCost(computeResiduals);
        this.weightedResiduals = this.weightMatrixSqrt.operate(new ArrayRealVector(computeResiduals)).toArray();
    }

    public AbstractLeastSquaresOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    @Deprecated
    public double[][] getCovariances(double d10) {
        return computeCovariances(this.point, d10);
    }

    @Override
    @Deprecated
    public PointVectorValuePair optimize(int i10, DifferentiableMultivariateVectorFunction differentiableMultivariateVectorFunction, double[] dArr, double[] dArr2, double[] dArr3) {
        return optimizeInternal(i10, FunctionUtils.toMultivariateDifferentiableVectorFunction(differentiableMultivariateVectorFunction), new Target(dArr), new Weight(dArr2), new InitialGuess(dArr3));
    }

    @Deprecated
    public PointVectorValuePair optimize(int i10, MultivariateDifferentiableVectorFunction multivariateDifferentiableVectorFunction, double[] dArr, double[] dArr2, double[] dArr3) {
        return optimizeInternal(i10, multivariateDifferentiableVectorFunction, new Target(dArr), new Weight(dArr2), new InitialGuess(dArr3));
    }
}
