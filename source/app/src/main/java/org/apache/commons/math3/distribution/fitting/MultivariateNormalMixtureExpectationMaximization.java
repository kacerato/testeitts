package org.apache.commons.math3.distribution.fitting;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.distribution.MixtureMultivariateNormalDistribution;
import org.apache.commons.math3.distribution.MultivariateNormalDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.SingularMatrixException;
import org.apache.commons.math3.stat.correlation.Covariance;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.Pair;

public class MultivariateNormalMixtureExpectationMaximization {
    private static final int DEFAULT_MAX_ITERATIONS = 1000;
    private static final double DEFAULT_THRESHOLD = 1.0E-5d;
    private final double[][] data;
    private MixtureMultivariateNormalDistribution fittedModel;
    private double logLikelihood = 0.0d;

    public static class DataRow implements Comparable<DataRow> {
        private Double mean;
        private final double[] row;

        public DataRow(double[] dArr) {
            this.row = dArr;
            this.mean = Double.valueOf(0.0d);
            for (double d10 : dArr) {
                this.mean = Double.valueOf(this.mean.doubleValue() + d10);
            }
            this.mean = Double.valueOf(this.mean.doubleValue() / dArr.length);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof DataRow) {
                return MathArrays.equals(this.row, ((DataRow) obj).row);
            }
            return false;
        }

        public double[] getRow() {
            return this.row;
        }

        public int hashCode() {
            return Arrays.hashCode(this.row);
        }

        @Override
        public int compareTo(DataRow dataRow) {
            return this.mean.compareTo(dataRow.mean);
        }
    }

    public MultivariateNormalMixtureExpectationMaximization(double[][] dArr) throws NotStrictlyPositiveException, DimensionMismatchException, NumberIsTooSmallException {
        if (dArr.length < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(dArr.length));
        }
        this.data = (double[][]) Array.newInstance(Double.TYPE, dArr.length, dArr[0].length);
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double[] dArr2 = dArr[i10];
            if (dArr2.length != dArr[0].length) {
                throw new DimensionMismatchException(dArr[i10].length, dArr[0].length);
            }
            if (dArr2.length < 2) {
                throw new NumberIsTooSmallException(LocalizedFormats.NUMBER_TOO_SMALL, Integer.valueOf(dArr[i10].length), 2, true);
            }
            this.data[i10] = MathArrays.copyOf(dArr2, dArr2.length);
        }
    }

    public static MixtureMultivariateNormalDistribution estimate(double[][] dArr, int i10) throws NotStrictlyPositiveException, DimensionMismatchException {
        if (dArr.length < 2) {
            throw new NotStrictlyPositiveException(Integer.valueOf(dArr.length));
        }
        if (i10 < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(i10), 2, true);
        }
        if (i10 > dArr.length) {
            throw new NumberIsTooLargeException(Integer.valueOf(i10), Integer.valueOf(dArr.length), true);
        }
        int length = dArr.length;
        int i11 = 0;
        int length2 = dArr[0].length;
        DataRow[] dataRowArr = new DataRow[length];
        for (int i12 = 0; i12 < length; i12++) {
            dataRowArr[i12] = new DataRow(dArr[i12]);
        }
        Arrays.sort(dataRowArr);
        double d10 = 1.0d / i10;
        ArrayList arrayList = new ArrayList(i10);
        int i13 = 0;
        while (i13 < i10) {
            int i14 = (i13 * length) / i10;
            i13++;
            int i15 = (i13 * length) / i10;
            int i16 = i15 - i14;
            int[] iArr = new int[2];
            iArr[1] = length2;
            iArr[i11] = i16;
            double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, iArr);
            double[] dArr3 = new double[length2];
            int i17 = i11;
            while (i14 < i15) {
                while (i11 < length2) {
                    double d11 = dataRowArr[i14].getRow()[i11];
                    dArr3[i11] = dArr3[i11] + d11;
                    dArr2[i17][i11] = d11;
                    i11++;
                }
                i14++;
                i17++;
                i11 = 0;
            }
            MathArrays.scaleInPlace(1.0d / i16, dArr3);
            arrayList.add(new Pair(Double.valueOf(d10), new MultivariateNormalDistribution(dArr3, new Covariance(dArr2).getCovarianceMatrix().getData())));
            i11 = 0;
        }
        return new MixtureMultivariateNormalDistribution(arrayList);
    }

    public void fit(MixtureMultivariateNormalDistribution mixtureMultivariateNormalDistribution, int i10, double d10) throws SingularMatrixException, NotStrictlyPositiveException, DimensionMismatchException {
        int i11 = i10;
        char c10 = 1;
        if (i11 < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }
        if (d10 >= Double.MIN_VALUE) {
            double[][] dArr = this.data;
            int length = dArr.length;
            int i12 = 0;
            int length2 = dArr[0].length;
            int size = mixtureMultivariateNormalDistribution.getComponents().size();
            int length3 = mixtureMultivariateNormalDistribution.getComponents().get(0).getSecond().getMeans().length;
            if (length3 == length2) {
                this.logLikelihood = Double.NEGATIVE_INFINITY;
                this.fittedModel = new MixtureMultivariateNormalDistribution(mixtureMultivariateNormalDistribution.getComponents());
                int i13 = 0;
                double d11 = 0.0d;
                while (true) {
                    int i14 = i13 + 1;
                    if (i13 > i11 || FastMath.abs(d11 - this.logLikelihood) <= d10) {
                        break;
                    }
                    double d12 = this.logLikelihood;
                    List<Pair<Double, MultivariateNormalDistribution>> components = this.fittedModel.getComponents();
                    double[] dArr2 = new double[size];
                    MultivariateNormalDistribution[] multivariateNormalDistributionArr = new MultivariateNormalDistribution[size];
                    for (int i15 = i12; i15 < size; i15++) {
                        dArr2[i15] = components.get(i15).getFirst().doubleValue();
                        multivariateNormalDistributionArr[i15] = components.get(i15).getSecond();
                    }
                    int[] iArr = new int[2];
                    iArr[c10] = size;
                    iArr[i12] = length;
                    Class<Double> cls = Double.TYPE;
                    double[][] dArr3 = (double[][]) Array.newInstance(cls, iArr);
                    double[] dArr4 = new double[size];
                    int[] iArr2 = new int[2];
                    iArr2[c10] = length2;
                    iArr2[i12] = size;
                    double[][] dArr5 = (double[][]) Array.newInstance(cls, iArr2);
                    double d13 = 0.0d;
                    for (int i16 = i12; i16 < length; i16++) {
                        double density = this.fittedModel.density(this.data[i16]);
                        d13 += FastMath.log(density);
                        int i17 = 0;
                        while (i17 < size) {
                            double d14 = d12;
                            dArr3[i16][i17] = (dArr2[i17] * multivariateNormalDistributionArr[i17].density(this.data[i16])) / density;
                            dArr4[i17] = dArr4[i17] + dArr3[i16][i17];
                            int i18 = 0;
                            while (i18 < length2) {
                                double[] dArr6 = dArr5[i17];
                                dArr6[i18] = dArr6[i18] + (dArr3[i16][i17] * this.data[i16][i18]);
                                i18++;
                                i14 = i14;
                            }
                            i17++;
                            d12 = d14;
                        }
                    }
                    double d15 = d12;
                    int i19 = i14;
                    double d16 = length;
                    this.logLikelihood = d13 / d16;
                    double[] dArr7 = new double[size];
                    double[][] dArr8 = (double[][]) Array.newInstance(Double.TYPE, size, length2);
                    for (int i20 = 0; i20 < size; i20++) {
                        dArr7[i20] = dArr4[i20] / d16;
                        for (int i21 = 0; i21 < length2; i21++) {
                            dArr8[i20][i21] = dArr5[i20][i21] / dArr4[i20];
                        }
                    }
                    RealMatrix[] realMatrixArr = new RealMatrix[size];
                    for (int i22 = 0; i22 < size; i22++) {
                        realMatrixArr[i22] = new Array2DRowRealMatrix(length2, length2);
                    }
                    for (int i23 = 0; i23 < length; i23++) {
                        for (int i24 = 0; i24 < size; i24++) {
                            Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(MathArrays.ebeSubtract(this.data[i23], dArr8[i24]));
                            realMatrixArr[i24] = realMatrixArr[i24].add(array2DRowRealMatrix.multiply(array2DRowRealMatrix.transpose()).scalarMultiply(dArr3[i23][i24]));
                        }
                    }
                    double[][][] dArr9 = (double[][][]) Array.newInstance(Double.TYPE, size, length2, length2);
                    for (int i25 = 0; i25 < size; i25++) {
                        RealMatrix scalarMultiply = realMatrixArr[i25].scalarMultiply(1.0d / dArr4[i25]);
                        realMatrixArr[i25] = scalarMultiply;
                        dArr9[i25] = scalarMultiply.getData();
                    }
                    this.fittedModel = new MixtureMultivariateNormalDistribution(dArr7, dArr8, dArr9);
                    i11 = i10;
                    c10 = 1;
                    i12 = 0;
                    i13 = i19;
                    d11 = d15;
                }
                if (FastMath.abs(d11 - this.logLikelihood) > d10) {
                    throw new ConvergenceException();
                }
                return;
            }
            throw new DimensionMismatchException(length3, length2);
        }
        throw new NotStrictlyPositiveException(Double.valueOf(d10));
    }

    public MixtureMultivariateNormalDistribution getFittedModel() {
        return new MixtureMultivariateNormalDistribution(this.fittedModel.getComponents());
    }

    public double getLogLikelihood() {
        return this.logLikelihood;
    }

    public void fit(MixtureMultivariateNormalDistribution mixtureMultivariateNormalDistribution) throws SingularMatrixException, NotStrictlyPositiveException {
        fit(mixtureMultivariateNormalDistribution, 1000, 1.0E-5d);
    }
}
