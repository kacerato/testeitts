package org.apache.commons.math3.complex;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

public class RootsOfUnity implements Serializable {
    private static final long serialVersionUID = 20120201;
    private int omegaCount = 0;
    private double[] omegaReal = null;
    private double[] omegaImaginaryCounterClockwise = null;
    private double[] omegaImaginaryClockwise = null;
    private boolean isCounterClockWise = true;

    public synchronized void computeRoots(int i10) throws ZeroException {
        try {
            if (i10 == 0) {
                throw new ZeroException(LocalizedFormats.CANNOT_COMPUTE_0TH_ROOT_OF_UNITY, new Object[0]);
            }
            this.isCounterClockWise = i10 > 0;
            int abs = FastMath.abs(i10);
            if (abs == this.omegaCount) {
                return;
            }
            double d10 = 6.283185307179586d / abs;
            double cos = FastMath.cos(d10);
            double sin = FastMath.sin(d10);
            double[] dArr = new double[abs];
            this.omegaReal = dArr;
            double[] dArr2 = new double[abs];
            this.omegaImaginaryCounterClockwise = dArr2;
            double[] dArr3 = new double[abs];
            this.omegaImaginaryClockwise = dArr3;
            dArr[0] = 1.0d;
            dArr2[0] = 0.0d;
            dArr3[0] = 0.0d;
            for (int i11 = 1; i11 < abs; i11++) {
                double[] dArr4 = this.omegaReal;
                int i12 = i11 - 1;
                double d11 = dArr4[i12] * cos;
                double[] dArr5 = this.omegaImaginaryCounterClockwise;
                dArr4[i11] = d11 - (dArr5[i12] * sin);
                double d12 = (dArr4[i12] * sin) + (dArr5[i12] * cos);
                dArr5[i11] = d12;
                this.omegaImaginaryClockwise[i11] = -d12;
            }
            this.omegaCount = abs;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized double getImaginary(int i10) throws MathIllegalStateException, OutOfRangeException {
        try {
            int i11 = this.omegaCount;
            if (i11 == 0) {
                throw new MathIllegalStateException(LocalizedFormats.ROOTS_OF_UNITY_NOT_COMPUTED_YET, new Object[0]);
            }
            if (i10 < 0 || i10 >= i11) {
                throw new OutOfRangeException(LocalizedFormats.OUT_OF_RANGE_ROOT_OF_UNITY_INDEX, Integer.valueOf(i10), 0, Integer.valueOf(this.omegaCount - 1));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.isCounterClockWise ? this.omegaImaginaryCounterClockwise[i10] : this.omegaImaginaryClockwise[i10];
    }

    public synchronized int getNumberOfRoots() {
        return this.omegaCount;
    }

    public synchronized double getReal(int i10) throws MathIllegalStateException, MathIllegalArgumentException {
        int i11 = this.omegaCount;
        if (i11 == 0) {
            throw new MathIllegalStateException(LocalizedFormats.ROOTS_OF_UNITY_NOT_COMPUTED_YET, new Object[0]);
        }
        if (i10 < 0 || i10 >= i11) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_RANGE_ROOT_OF_UNITY_INDEX, Integer.valueOf(i10), 0, Integer.valueOf(this.omegaCount - 1));
        }
        return this.omegaReal[i10];
    }

    public synchronized boolean isCounterClockWise() throws MathIllegalStateException {
        if (this.omegaCount == 0) {
            throw new MathIllegalStateException(LocalizedFormats.ROOTS_OF_UNITY_NOT_COMPUTED_YET, new Object[0]);
        }
        return this.isCounterClockWise;
    }
}
