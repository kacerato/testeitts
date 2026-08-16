package org.apache.commons.math3.stat.descriptive;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;

public abstract class AbstractUnivariateStatistic implements UnivariateStatistic {
    private double[] storedData;

    @Override
    public abstract UnivariateStatistic copy();

    public double evaluate() throws MathIllegalArgumentException {
        return evaluate(this.storedData);
    }

    @Override
    public abstract double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException;

    public double[] getData() {
        double[] dArr = this.storedData;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    public double[] getDataRef() {
        return this.storedData;
    }

    public void setData(double[] dArr) {
        this.storedData = dArr == null ? null : (double[]) dArr.clone();
    }

    public boolean test(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return MathArrays.verifyValues(dArr, i10, i11, false);
    }

    @Override
    public double evaluate(double[] dArr) throws MathIllegalArgumentException {
        test(dArr, 0, 0);
        return evaluate(dArr, 0, dArr.length);
    }

    public void setData(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        if (dArr == null) {
            throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
        }
        if (i10 < 0) {
            throw new NotPositiveException(LocalizedFormats.START_POSITION, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            int i12 = i10 + i11;
            if (i12 <= dArr.length) {
                double[] dArr2 = new double[i11];
                this.storedData = dArr2;
                System.arraycopy(dArr, i10, dArr2, 0, i11);
                return;
            }
            throw new NumberIsTooLargeException(LocalizedFormats.SUBARRAY_ENDS_AFTER_ARRAY_END, Integer.valueOf(i12), Integer.valueOf(dArr.length), true);
        }
        throw new NotPositiveException(LocalizedFormats.LENGTH, Integer.valueOf(i11));
    }

    public boolean test(double[] dArr, int i10, int i11, boolean z10) throws MathIllegalArgumentException {
        return MathArrays.verifyValues(dArr, i10, i11, z10);
    }

    public boolean test(double[] dArr, double[] dArr2, int i10, int i11) throws MathIllegalArgumentException {
        return MathArrays.verifyValues(dArr, dArr2, i10, i11, false);
    }

    public boolean test(double[] dArr, double[] dArr2, int i10, int i11, boolean z10) throws MathIllegalArgumentException {
        return MathArrays.verifyValues(dArr, dArr2, i10, i11, z10);
    }
}
