package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.NonPositiveDefiniteMatrixException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.SingularMatrixException;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class MultivariateNormalDistribution extends AbstractMultivariateRealDistribution {
    private final RealMatrix covarianceMatrix;
    private final double covarianceMatrixDeterminant;
    private final RealMatrix covarianceMatrixInverse;
    private final double[] means;
    private final RealMatrix samplingMatrix;

    public MultivariateNormalDistribution(double[] dArr, double[][] dArr2) throws SingularMatrixException, DimensionMismatchException, NonPositiveDefiniteMatrixException {
        this(new Well19937c(), dArr, dArr2);
    }

    private double getExponentTerm(double[] dArr) {
        int length = dArr.length;
        double[] dArr2 = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr2[i10] = dArr[i10] - getMeans()[i10];
        }
        double[] preMultiply = this.covarianceMatrixInverse.preMultiply(dArr2);
        double d10 = 0.0d;
        for (int i11 = 0; i11 < preMultiply.length; i11++) {
            d10 += preMultiply[i11] * dArr2[i11];
        }
        return FastMath.exp(d10 * (-0.5d));
    }

    @Override
    public double density(double[] dArr) throws DimensionMismatchException {
        int dimension = getDimension();
        if (dArr.length == dimension) {
            return FastMath.pow(6.283185307179586d, dimension * (-0.5d)) * FastMath.pow(this.covarianceMatrixDeterminant, -0.5d) * getExponentTerm(dArr);
        }
        throw new DimensionMismatchException(dArr.length, dimension);
    }

    public RealMatrix getCovariances() {
        return this.covarianceMatrix.copy();
    }

    public double[] getMeans() {
        return MathArrays.copyOf(this.means);
    }

    public double[] getStandardDeviations() {
        int dimension = getDimension();
        double[] dArr = new double[dimension];
        double[][] data = this.covarianceMatrix.getData();
        for (int i10 = 0; i10 < dimension; i10++) {
            dArr[i10] = FastMath.sqrt(data[i10][i10]);
        }
        return dArr;
    }

    @Override
    public double[] sample() {
        int dimension = getDimension();
        double[] dArr = new double[dimension];
        for (int i10 = 0; i10 < dimension; i10++) {
            dArr[i10] = this.random.nextGaussian();
        }
        double[] operate = this.samplingMatrix.operate(dArr);
        for (int i11 = 0; i11 < dimension; i11++) {
            operate[i11] = operate[i11] + this.means[i11];
        }
        return operate;
    }

    public MultivariateNormalDistribution(RandomGenerator randomGenerator, double[] dArr, double[][] dArr2) throws SingularMatrixException, DimensionMismatchException, NonPositiveDefiniteMatrixException {
        super(randomGenerator, dArr.length);
        int length = dArr.length;
        if (dArr2.length == length) {
            for (int i10 = 0; i10 < length; i10++) {
                if (length != dArr2[i10].length) {
                    throw new DimensionMismatchException(dArr2[i10].length, length);
                }
            }
            this.means = MathArrays.copyOf(dArr);
            Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(dArr2);
            this.covarianceMatrix = array2DRowRealMatrix;
            EigenDecomposition eigenDecomposition = new EigenDecomposition(array2DRowRealMatrix);
            this.covarianceMatrixInverse = eigenDecomposition.getSolver().getInverse();
            this.covarianceMatrixDeterminant = eigenDecomposition.getDeterminant();
            double[] realEigenvalues = eigenDecomposition.getRealEigenvalues();
            for (int i11 = 0; i11 < realEigenvalues.length; i11++) {
                if (realEigenvalues[i11] < 0.0d) {
                    throw new NonPositiveDefiniteMatrixException(realEigenvalues[i11], i11, 0.0d);
                }
            }
            Array2DRowRealMatrix array2DRowRealMatrix2 = new Array2DRowRealMatrix(length, length);
            for (int i12 = 0; i12 < length; i12++) {
                array2DRowRealMatrix2.setColumn(i12, eigenDecomposition.getEigenvector(i12).toArray());
            }
            RealMatrix transpose = array2DRowRealMatrix2.transpose();
            for (int i13 = 0; i13 < length; i13++) {
                double sqrt = FastMath.sqrt(realEigenvalues[i13]);
                for (int i14 = 0; i14 < length; i14++) {
                    transpose.multiplyEntry(i13, i14, sqrt);
                }
            }
            this.samplingMatrix = array2DRowRealMatrix2.multiply(transpose);
            return;
        }
        throw new DimensionMismatchException(dArr2.length, length);
    }
}
