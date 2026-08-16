package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;

public class VectorialCovariance implements Serializable {
    private static final long serialVersionUID = 4118372414238930270L;
    private final boolean isBiasCorrected;

    private long f100346n = 0;
    private final double[] productsSums;
    private final double[] sums;

    public VectorialCovariance(int i10, boolean z10) {
        this.sums = new double[i10];
        this.productsSums = new double[(i10 * (i10 + 1)) / 2];
        this.isBiasCorrected = z10;
    }

    public void clear() {
        this.f100346n = 0L;
        Arrays.fill(this.sums, 0.0d);
        Arrays.fill(this.productsSums, 0.0d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VectorialCovariance)) {
            return false;
        }
        VectorialCovariance vectorialCovariance = (VectorialCovariance) obj;
        return this.isBiasCorrected == vectorialCovariance.isBiasCorrected && this.f100346n == vectorialCovariance.f100346n && Arrays.equals(this.productsSums, vectorialCovariance.productsSums) && Arrays.equals(this.sums, vectorialCovariance.sums);
    }

    public long getN() {
        return this.f100346n;
    }

    public RealMatrix getResult() {
        int length = this.sums.length;
        RealMatrix createRealMatrix = MatrixUtils.createRealMatrix(length, length);
        if (this.f100346n > 1) {
            double d10 = 1.0d / (r3 * (this.isBiasCorrected ? r3 - 1 : r3));
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                int i12 = 0;
                while (i12 <= i11) {
                    int i13 = i10 + 1;
                    double d11 = this.f100346n * this.productsSums[i10];
                    double[] dArr = this.sums;
                    double d12 = (d11 - (dArr[i11] * dArr[i12])) * d10;
                    createRealMatrix.setEntry(i11, i12, d12);
                    createRealMatrix.setEntry(i12, i11, d12);
                    i12++;
                    i10 = i13;
                }
            }
        }
        return createRealMatrix;
    }

    public int hashCode() {
        int i10 = this.isBiasCorrected ? 1231 : 1237;
        long j10 = this.f100346n;
        return ((((((i10 + 31) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + Arrays.hashCode(this.productsSums)) * 31) + Arrays.hashCode(this.sums);
    }

    public void increment(double[] dArr) throws DimensionMismatchException {
        if (dArr.length != this.sums.length) {
            throw new DimensionMismatchException(dArr.length, this.sums.length);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < dArr.length; i11++) {
            double[] dArr2 = this.sums;
            dArr2[i11] = dArr2[i11] + dArr[i11];
            int i12 = 0;
            while (i12 <= i11) {
                double[] dArr3 = this.productsSums;
                dArr3[i10] = dArr3[i10] + (dArr[i11] * dArr[i12]);
                i12++;
                i10++;
            }
        }
        this.f100346n++;
    }
}
