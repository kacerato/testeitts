package org.apache.commons.math3.analysis.differentiation;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateMatrixFunction;
import org.apache.commons.math3.analysis.UnivariateVectorFunction;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.FastMath;

public class FiniteDifferencesDifferentiator implements UnivariateFunctionDifferentiator, UnivariateVectorFunctionDifferentiator, UnivariateMatrixFunctionDifferentiator, Serializable {
    private static final long serialVersionUID = 20120917;
    private final double halfSampleSpan;
    private final int nbPoints;
    private final double stepSize;
    private final double tMax;
    private final double tMin;

    public FiniteDifferencesDifferentiator(int i10, double d10) throws NotPositiveException, NumberIsTooSmallException {
        this(i10, d10, Double.NEGATIVE_INFINITY, Double.POSITIVE_INFINITY);
    }

    public DerivativeStructure evaluate(DerivativeStructure derivativeStructure, double d10, double[] dArr) throws NumberIsTooLargeException {
        int i10 = this.nbPoints;
        double[] dArr2 = new double[i10];
        double[] dArr3 = new double[i10];
        for (int i11 = 0; i11 < this.nbPoints; i11++) {
            dArr3[i11] = dArr[i11];
            for (int i12 = 1; i12 <= i11; i12++) {
                int i13 = i11 - i12;
                dArr3[i13] = (dArr3[i13 + 1] - dArr3[i13]) / (i12 * this.stepSize);
            }
            dArr2[i11] = dArr3[0];
        }
        int order = derivativeStructure.getOrder();
        int freeParameters = derivativeStructure.getFreeParameters();
        double[] allDerivatives = derivativeStructure.getAllDerivatives();
        double value = derivativeStructure.getValue() - d10;
        DerivativeStructure derivativeStructure2 = new DerivativeStructure(freeParameters, order, 0.0d);
        DerivativeStructure derivativeStructure3 = null;
        for (int i14 = 0; i14 < this.nbPoints; i14++) {
            if (i14 == 0) {
                derivativeStructure3 = new DerivativeStructure(freeParameters, order, 1.0d);
            } else {
                allDerivatives[0] = value - ((i14 - 1) * this.stepSize);
                derivativeStructure3 = derivativeStructure3.multiply(new DerivativeStructure(freeParameters, order, allDerivatives));
            }
            derivativeStructure2 = derivativeStructure2.add(derivativeStructure3.multiply(dArr2[i14]));
        }
        return derivativeStructure2;
    }

    @Override
    public UnivariateDifferentiableFunction differentiate(final UnivariateFunction univariateFunction) {
        return new UnivariateDifferentiableFunction() {
            @Override
            public double value(double d10) throws MathIllegalArgumentException {
                return univariateFunction.value(d10);
            }

            @Override
            public DerivativeStructure value(DerivativeStructure derivativeStructure) throws MathIllegalArgumentException {
                if (derivativeStructure.getOrder() < FiniteDifferencesDifferentiator.this.nbPoints) {
                    double max = FastMath.max(FastMath.min(derivativeStructure.getValue(), FiniteDifferencesDifferentiator.this.tMax), FiniteDifferencesDifferentiator.this.tMin) - FiniteDifferencesDifferentiator.this.halfSampleSpan;
                    double[] dArr = new double[FiniteDifferencesDifferentiator.this.nbPoints];
                    for (int i10 = 0; i10 < FiniteDifferencesDifferentiator.this.nbPoints; i10++) {
                        dArr[i10] = univariateFunction.value((i10 * FiniteDifferencesDifferentiator.this.stepSize) + max);
                    }
                    return FiniteDifferencesDifferentiator.this.evaluate(derivativeStructure, max, dArr);
                }
                throw new NumberIsTooLargeException(Integer.valueOf(derivativeStructure.getOrder()), Integer.valueOf(FiniteDifferencesDifferentiator.this.nbPoints), false);
            }
        };
    }

    public int getNbPoints() {
        return this.nbPoints;
    }

    public double getStepSize() {
        return this.stepSize;
    }

    public FiniteDifferencesDifferentiator(int i10, double d10, double d11, double d12) throws NotPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        if (i10 > 1) {
            this.nbPoints = i10;
            if (d10 > 0.0d) {
                this.stepSize = d10;
                double d13 = d10 * 0.5d * (i10 - 1);
                this.halfSampleSpan = d13;
                double d14 = d12 - d11;
                if (d13 * 2.0d < d14) {
                    double ulp = FastMath.ulp(d13);
                    this.tMin = d11 + d13 + ulp;
                    this.tMax = (d12 - d13) - ulp;
                    return;
                }
                throw new NumberIsTooLargeException(Double.valueOf(d13 * 2.0d), Double.valueOf(d14), false);
            }
            throw new NotPositiveException(Double.valueOf(d10));
        }
        throw new NumberIsTooSmallException(Double.valueOf(d10), 1, false);
    }

    @Override
    public UnivariateDifferentiableVectorFunction differentiate(final UnivariateVectorFunction univariateVectorFunction) {
        return new UnivariateDifferentiableVectorFunction() {
            @Override
            public double[] value(double d10) throws MathIllegalArgumentException {
                return univariateVectorFunction.value(d10);
            }

            @Override
            public DerivativeStructure[] value(DerivativeStructure derivativeStructure) throws MathIllegalArgumentException {
                if (derivativeStructure.getOrder() < FiniteDifferencesDifferentiator.this.nbPoints) {
                    double max = FastMath.max(FastMath.min(derivativeStructure.getValue(), FiniteDifferencesDifferentiator.this.tMax), FiniteDifferencesDifferentiator.this.tMin) - FiniteDifferencesDifferentiator.this.halfSampleSpan;
                    double[][] dArr = null;
                    for (int i10 = 0; i10 < FiniteDifferencesDifferentiator.this.nbPoints; i10++) {
                        double[] value = univariateVectorFunction.value((i10 * FiniteDifferencesDifferentiator.this.stepSize) + max);
                        if (i10 == 0) {
                            dArr = (double[][]) Array.newInstance(Double.TYPE, value.length, FiniteDifferencesDifferentiator.this.nbPoints);
                        }
                        for (int i11 = 0; i11 < value.length; i11++) {
                            dArr[i11][i10] = value[i11];
                        }
                    }
                    int length = dArr.length;
                    DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
                    for (int i12 = 0; i12 < length; i12++) {
                        derivativeStructureArr[i12] = FiniteDifferencesDifferentiator.this.evaluate(derivativeStructure, max, dArr[i12]);
                    }
                    return derivativeStructureArr;
                }
                throw new NumberIsTooLargeException(Integer.valueOf(derivativeStructure.getOrder()), Integer.valueOf(FiniteDifferencesDifferentiator.this.nbPoints), false);
            }
        };
    }

    @Override
    public UnivariateDifferentiableMatrixFunction differentiate(final UnivariateMatrixFunction univariateMatrixFunction) {
        return new UnivariateDifferentiableMatrixFunction() {
            @Override
            public double[][] value(double d10) throws MathIllegalArgumentException {
                return univariateMatrixFunction.value(d10);
            }

            @Override
            public DerivativeStructure[][] value(DerivativeStructure derivativeStructure) throws MathIllegalArgumentException {
                if (derivativeStructure.getOrder() < FiniteDifferencesDifferentiator.this.nbPoints) {
                    double max = FastMath.max(FastMath.min(derivativeStructure.getValue(), FiniteDifferencesDifferentiator.this.tMax), FiniteDifferencesDifferentiator.this.tMin) - FiniteDifferencesDifferentiator.this.halfSampleSpan;
                    double[][][] dArr = null;
                    for (int i10 = 0; i10 < FiniteDifferencesDifferentiator.this.nbPoints; i10++) {
                        double[][] value = univariateMatrixFunction.value((i10 * FiniteDifferencesDifferentiator.this.stepSize) + max);
                        if (i10 == 0) {
                            dArr = (double[][][]) Array.newInstance(Double.TYPE, value.length, value[0].length, FiniteDifferencesDifferentiator.this.nbPoints);
                        }
                        for (int i11 = 0; i11 < value.length; i11++) {
                            int i12 = 0;
                            while (true) {
                                double[] dArr2 = value[i11];
                                if (i12 < dArr2.length) {
                                    dArr[i11][i12][i10] = dArr2[i12];
                                    i12++;
                                }
                            }
                        }
                    }
                    DerivativeStructure[][] derivativeStructureArr = (DerivativeStructure[][]) Array.newInstance((Class<?>) DerivativeStructure.class, dArr.length, dArr[0].length);
                    for (int i13 = 0; i13 < derivativeStructureArr.length; i13++) {
                        int i14 = 0;
                        while (true) {
                            double[][] dArr3 = dArr[i13];
                            if (i14 < dArr3.length) {
                                derivativeStructureArr[i13][i14] = FiniteDifferencesDifferentiator.this.evaluate(derivativeStructure, max, dArr3[i14]);
                                i14++;
                            }
                        }
                    }
                    return derivativeStructureArr;
                }
                throw new NumberIsTooLargeException(Integer.valueOf(derivativeStructure.getOrder()), Integer.valueOf(FiniteDifferencesDifferentiator.this.nbPoints), false);
            }
        };
    }
}
