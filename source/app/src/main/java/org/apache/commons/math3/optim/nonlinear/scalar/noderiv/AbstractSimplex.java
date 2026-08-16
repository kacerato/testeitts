package org.apache.commons.math3.optim.nonlinear.scalar.noderiv;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;

public abstract class AbstractSimplex implements OptimizationData {
    private final int dimension;
    private PointValuePair[] simplex;
    private double[][] startConfiguration;

    public AbstractSimplex(int i10) {
        this(i10, 1.0d);
    }

    private static double[] createHypercubeSteps(int i10, double d10) {
        double[] dArr = new double[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            dArr[i11] = d10;
        }
        return dArr;
    }

    public void build(double[] dArr) {
        int i10 = this.dimension;
        if (i10 != dArr.length) {
            throw new DimensionMismatchException(this.dimension, dArr.length);
        }
        PointValuePair[] pointValuePairArr = new PointValuePair[i10 + 1];
        this.simplex = pointValuePairArr;
        pointValuePairArr[0] = new PointValuePair(dArr, Double.NaN);
        int i11 = 0;
        while (true) {
            int i12 = this.dimension;
            if (i11 >= i12) {
                return;
            }
            double[] dArr2 = this.startConfiguration[i11];
            double[] dArr3 = new double[i12];
            for (int i13 = 0; i13 < this.dimension; i13++) {
                dArr3[i13] = dArr[i13] + dArr2[i13];
            }
            i11++;
            this.simplex[i11] = new PointValuePair(dArr3, Double.NaN);
        }
    }

    public void evaluate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator) {
        int i10 = 0;
        while (true) {
            PointValuePair[] pointValuePairArr = this.simplex;
            if (i10 >= pointValuePairArr.length) {
                Arrays.sort(pointValuePairArr, comparator);
                return;
            }
            PointValuePair pointValuePair = pointValuePairArr[i10];
            double[] pointRef = pointValuePair.getPointRef();
            if (Double.isNaN(pointValuePair.getValue().doubleValue())) {
                this.simplex[i10] = new PointValuePair(pointRef, multivariateFunction.value(pointRef), false);
            }
            i10++;
        }
    }

    public int getDimension() {
        return this.dimension;
    }

    public PointValuePair getPoint(int i10) {
        if (i10 >= 0) {
            PointValuePair[] pointValuePairArr = this.simplex;
            if (i10 < pointValuePairArr.length) {
                return pointValuePairArr[i10];
            }
        }
        throw new OutOfRangeException(Integer.valueOf(i10), 0, Integer.valueOf(this.simplex.length - 1));
    }

    public PointValuePair[] getPoints() {
        PointValuePair[] pointValuePairArr = this.simplex;
        PointValuePair[] pointValuePairArr2 = new PointValuePair[pointValuePairArr.length];
        System.arraycopy(pointValuePairArr, 0, pointValuePairArr2, 0, pointValuePairArr.length);
        return pointValuePairArr2;
    }

    public int getSize() {
        return this.simplex.length;
    }

    public abstract void iterate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator);

    public void replaceWorstPoint(PointValuePair pointValuePair, Comparator<PointValuePair> comparator) {
        int i10 = 0;
        while (true) {
            int i11 = this.dimension;
            if (i10 >= i11) {
                this.simplex[i11] = pointValuePair;
                return;
            }
            if (comparator.compare(this.simplex[i10], pointValuePair) > 0) {
                PointValuePair[] pointValuePairArr = this.simplex;
                PointValuePair pointValuePair2 = pointValuePairArr[i10];
                pointValuePairArr[i10] = pointValuePair;
                pointValuePair = pointValuePair2;
            }
            i10++;
        }
    }

    public void setPoint(int i10, PointValuePair pointValuePair) {
        if (i10 >= 0) {
            PointValuePair[] pointValuePairArr = this.simplex;
            if (i10 < pointValuePairArr.length) {
                pointValuePairArr[i10] = pointValuePair;
                return;
            }
        }
        throw new OutOfRangeException(Integer.valueOf(i10), 0, Integer.valueOf(this.simplex.length - 1));
    }

    public void setPoints(PointValuePair[] pointValuePairArr) {
        if (pointValuePairArr.length != this.simplex.length) {
            throw new DimensionMismatchException(pointValuePairArr.length, this.simplex.length);
        }
        this.simplex = pointValuePairArr;
    }

    public AbstractSimplex(int i10, double d10) {
        this(createHypercubeSteps(i10, d10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
    
        r0 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AbstractSimplex(double[] dArr) {
        if (dArr != null) {
            if (dArr.length != 0) {
                int length = dArr.length;
                this.dimension = length;
                this.startConfiguration = (double[][]) Array.newInstance(Double.TYPE, length, length);
                int i10 = 0;
                while (i10 < this.dimension) {
                    double[] dArr2 = this.startConfiguration[i10];
                    int i11 = 0;
                    while (true) {
                        int i12 = i10 + 1;
                        if (i11 < i12) {
                            if (dArr[i11] != 0.0d) {
                                i11++;
                                System.arraycopy(dArr, 0, dArr2, 0, i11);
                            } else {
                                throw new ZeroException(LocalizedFormats.EQUAL_VERTICES_IN_SIMPLEX, new Object[0]);
                            }
                        }
                    }
                }
                return;
            }
            throw new ZeroException();
        }
        throw new NullArgumentException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
    
        r4 = r4 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AbstractSimplex(double[][] dArr) {
        if (dArr.length > 0) {
            int length = dArr.length - 1;
            this.dimension = length;
            this.startConfiguration = (double[][]) Array.newInstance(Double.TYPE, length, length);
            double[] dArr2 = dArr[0];
            for (int i10 = 0; i10 < dArr.length; i10++) {
                double[] dArr3 = dArr[i10];
                if (dArr3.length != this.dimension) {
                    throw new DimensionMismatchException(dArr3.length, this.dimension);
                }
                int i11 = 0;
                while (i11 < i10) {
                    double[] dArr4 = dArr[i11];
                    for (int i12 = 0; i12 < this.dimension; i12++) {
                        if (dArr3[i12] != dArr4[i12]) {
                            break;
                        }
                    }
                    throw new MathIllegalArgumentException(LocalizedFormats.EQUAL_VERTICES_IN_SIMPLEX, Integer.valueOf(i10), Integer.valueOf(i11));
                }
                if (i10 > 0) {
                    double[] dArr5 = this.startConfiguration[i10 - 1];
                    for (int i13 = 0; i13 < this.dimension; i13++) {
                        dArr5[i13] = dArr3[i13] - dArr2[i13];
                    }
                }
            }
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.SIMPLEX_NEED_ONE_POINT, Integer.valueOf(dArr.length));
    }
}
