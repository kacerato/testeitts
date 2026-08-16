package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.math3.exception.DimensionMismatchException;

public class VectorialMean implements Serializable {
    private static final long serialVersionUID = 8223009086481006892L;
    private final Mean[] means;

    public VectorialMean(int i10) {
        this.means = new Mean[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            this.means[i11] = new Mean();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof VectorialMean) && Arrays.equals(this.means, ((VectorialMean) obj).means);
    }

    public long getN() {
        Mean[] meanArr = this.means;
        if (meanArr.length == 0) {
            return 0L;
        }
        return meanArr[0].getN();
    }

    public double[] getResult() {
        int length = this.means.length;
        double[] dArr = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr[i10] = this.means[i10].getResult();
        }
        return dArr;
    }

    public int hashCode() {
        return 31 + Arrays.hashCode(this.means);
    }

    public void increment(double[] dArr) throws DimensionMismatchException {
        if (dArr.length != this.means.length) {
            throw new DimensionMismatchException(dArr.length, this.means.length);
        }
        for (int i10 = 0; i10 < dArr.length; i10++) {
            this.means[i10].increment(dArr[i10]);
        }
    }
}
