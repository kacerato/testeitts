package org.apache.commons.math3.optimization.direct;

import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.optimization.PointValuePair;

@Deprecated
public class MultiDirectionalSimplex extends AbstractSimplex {
    private static final double DEFAULT_GAMMA = 0.5d;
    private static final double DEFAULT_KHI = 2.0d;
    private final double gamma;
    private final double khi;

    public MultiDirectionalSimplex(int i10) {
        this(i10, 1.0d);
    }

    private PointValuePair evaluateNewSimplex(MultivariateFunction multivariateFunction, PointValuePair[] pointValuePairArr, double d10, Comparator<PointValuePair> comparator) {
        double[] pointRef = pointValuePairArr[0].getPointRef();
        setPoint(0, pointValuePairArr[0]);
        int dimension = getDimension();
        for (int i10 = 1; i10 < getSize(); i10++) {
            double[] pointRef2 = pointValuePairArr[i10].getPointRef();
            double[] dArr = new double[dimension];
            for (int i11 = 0; i11 < dimension; i11++) {
                double d11 = pointRef[i11];
                dArr[i11] = d11 + ((d11 - pointRef2[i11]) * d10);
            }
            setPoint(i10, new PointValuePair(dArr, Double.NaN, false));
        }
        evaluate(multivariateFunction, comparator);
        return getPoint(0);
    }

    @Override
    public void iterate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator) {
        PointValuePair[] points = getPoints();
        PointValuePair pointValuePair = points[0];
        PointValuePair evaluateNewSimplex = evaluateNewSimplex(multivariateFunction, points, 1.0d, comparator);
        if (comparator.compare(evaluateNewSimplex, pointValuePair) >= 0) {
            evaluateNewSimplex(multivariateFunction, points, this.gamma, comparator);
            return;
        }
        PointValuePair[] points2 = getPoints();
        if (comparator.compare(evaluateNewSimplex, evaluateNewSimplex(multivariateFunction, points, this.khi, comparator)) <= 0) {
            setPoints(points2);
        }
    }

    public MultiDirectionalSimplex(int i10, double d10) {
        this(i10, d10, DEFAULT_KHI, 0.5d);
    }

    public MultiDirectionalSimplex(int i10, double d10, double d11) {
        this(i10, 1.0d, d10, d11);
    }

    public MultiDirectionalSimplex(int i10, double d10, double d11, double d12) {
        super(i10, d10);
        this.khi = d11;
        this.gamma = d12;
    }

    public MultiDirectionalSimplex(double[] dArr) {
        this(dArr, DEFAULT_KHI, 0.5d);
    }

    public MultiDirectionalSimplex(double[] dArr, double d10, double d11) {
        super(dArr);
        this.khi = d10;
        this.gamma = d11;
    }

    public MultiDirectionalSimplex(double[][] dArr) {
        this(dArr, DEFAULT_KHI, 0.5d);
    }

    public MultiDirectionalSimplex(double[][] dArr, double d10, double d11) {
        super(dArr);
        this.khi = d10;
        this.gamma = d11;
    }
}
