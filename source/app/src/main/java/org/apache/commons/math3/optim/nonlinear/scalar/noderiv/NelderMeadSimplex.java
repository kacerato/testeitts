package org.apache.commons.math3.optim.nonlinear.scalar.noderiv;

import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.optim.PointValuePair;

public class NelderMeadSimplex extends AbstractSimplex {
    private static final double DEFAULT_GAMMA = 0.5d;
    private static final double DEFAULT_KHI = 2.0d;
    private static final double DEFAULT_RHO = 1.0d;
    private static final double DEFAULT_SIGMA = 0.5d;
    private final double gamma;
    private final double khi;
    private final double rho;
    private final double sigma;

    public NelderMeadSimplex(int i10) {
        this(i10, 1.0d);
    }

    @Override
    public void iterate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator) {
        int dimension = getDimension();
        PointValuePair point = getPoint(0);
        PointValuePair point2 = getPoint(dimension - 1);
        PointValuePair point3 = getPoint(dimension);
        double[] pointRef = point3.getPointRef();
        double[] dArr = new double[dimension];
        for (int i10 = 0; i10 < dimension; i10++) {
            double[] pointRef2 = getPoint(i10).getPointRef();
            for (int i11 = 0; i11 < dimension; i11++) {
                dArr[i11] = dArr[i11] + pointRef2[i11];
            }
        }
        double d10 = 1.0d / dimension;
        for (int i12 = 0; i12 < dimension; i12++) {
            dArr[i12] = dArr[i12] * d10;
        }
        double[] dArr2 = new double[dimension];
        for (int i13 = 0; i13 < dimension; i13++) {
            double d11 = dArr[i13];
            dArr2[i13] = d11 + (this.rho * (d11 - pointRef[i13]));
        }
        PointValuePair pointValuePair = new PointValuePair(dArr2, multivariateFunction.value(dArr2), false);
        if (comparator.compare(point, pointValuePair) <= 0 && comparator.compare(pointValuePair, point2) < 0) {
            replaceWorstPoint(pointValuePair, comparator);
            return;
        }
        if (comparator.compare(pointValuePair, point) < 0) {
            double[] dArr3 = new double[dimension];
            for (int i14 = 0; i14 < dimension; i14++) {
                double d12 = dArr[i14];
                dArr3[i14] = d12 + (this.khi * (dArr2[i14] - d12));
            }
            PointValuePair pointValuePair2 = new PointValuePair(dArr3, multivariateFunction.value(dArr3), false);
            if (comparator.compare(pointValuePair2, pointValuePair) < 0) {
                replaceWorstPoint(pointValuePair2, comparator);
                return;
            } else {
                replaceWorstPoint(pointValuePair, comparator);
                return;
            }
        }
        if (comparator.compare(pointValuePair, point3) < 0) {
            double[] dArr4 = new double[dimension];
            for (int i15 = 0; i15 < dimension; i15++) {
                double d13 = dArr[i15];
                dArr4[i15] = d13 + (this.gamma * (dArr2[i15] - d13));
            }
            PointValuePair pointValuePair3 = new PointValuePair(dArr4, multivariateFunction.value(dArr4), false);
            if (comparator.compare(pointValuePair3, pointValuePair) <= 0) {
                replaceWorstPoint(pointValuePair3, comparator);
                return;
            }
        } else {
            double[] dArr5 = new double[dimension];
            for (int i16 = 0; i16 < dimension; i16++) {
                double d14 = dArr[i16];
                dArr5[i16] = d14 - (this.gamma * (d14 - pointRef[i16]));
            }
            PointValuePair pointValuePair4 = new PointValuePair(dArr5, multivariateFunction.value(dArr5), false);
            if (comparator.compare(pointValuePair4, point3) < 0) {
                replaceWorstPoint(pointValuePair4, comparator);
                return;
            }
        }
        double[] pointRef3 = getPoint(0).getPointRef();
        for (int i17 = 1; i17 <= dimension; i17++) {
            double[] point4 = getPoint(i17).getPoint();
            for (int i18 = 0; i18 < dimension; i18++) {
                double d15 = pointRef3[i18];
                point4[i18] = d15 + (this.sigma * (point4[i18] - d15));
            }
            setPoint(i17, new PointValuePair(point4, Double.NaN, false));
        }
        evaluate(multivariateFunction, comparator);
    }

    public NelderMeadSimplex(int i10, double d10) {
        this(i10, d10, 1.0d, DEFAULT_KHI, 0.5d, 0.5d);
    }

    public NelderMeadSimplex(int i10, double d10, double d11, double d12, double d13, double d14) {
        super(i10, d10);
        this.rho = d11;
        this.khi = d12;
        this.gamma = d13;
        this.sigma = d14;
    }

    public NelderMeadSimplex(int i10, double d10, double d11, double d12, double d13) {
        this(i10, 1.0d, d10, d11, d12, d13);
    }

    public NelderMeadSimplex(double[] dArr) {
        this(dArr, 1.0d, DEFAULT_KHI, 0.5d, 0.5d);
    }

    public NelderMeadSimplex(double[] dArr, double d10, double d11, double d12, double d13) {
        super(dArr);
        this.rho = d10;
        this.khi = d11;
        this.gamma = d12;
        this.sigma = d13;
    }

    public NelderMeadSimplex(double[][] dArr) {
        this(dArr, 1.0d, DEFAULT_KHI, 0.5d, 0.5d);
    }

    public NelderMeadSimplex(double[][] dArr, double d10, double d11, double d12, double d13) {
        super(dArr);
        this.rho = d10;
        this.khi = d11;
        this.gamma = d12;
        this.sigma = d13;
    }
}
