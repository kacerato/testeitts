package org.apache.commons.math3.ode.nonstiff;

import E2.d;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.sampling.AbstractStepInterpolator;
import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

class GraggBulirschStoerStepInterpolator extends AbstractStepInterpolator {
    private static final long serialVersionUID = 20110928;
    private int currentDegree;
    private double[] errfac;
    private double[][] polynomials;
    private double[] y0Dot;

    private double[] f100272y1;
    private double[] y1Dot;
    private double[][] yMidDots;

    public GraggBulirschStoerStepInterpolator() {
        this.y0Dot = null;
        this.f100272y1 = null;
        this.y1Dot = null;
        this.yMidDots = null;
        resetTables(-1);
    }

    private void resetTables(int i10) {
        if (i10 < 0) {
            this.polynomials = null;
            this.errfac = null;
            this.currentDegree = -1;
            return;
        }
        int i11 = i10 + 1;
        double[][] dArr = new double[i11];
        double[][] dArr2 = this.polynomials;
        if (dArr2 != null) {
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
            for (int length = this.polynomials.length; length < i11; length++) {
                dArr[length] = new double[this.currentState.length];
            }
        } else {
            for (int i12 = 0; i12 < i11; i12++) {
                dArr[i12] = new double[this.currentState.length];
            }
        }
        this.polynomials = dArr;
        if (i10 > 4) {
            this.errfac = new double[i10 - 4];
            int i13 = 0;
            while (true) {
                double[] dArr3 = this.errfac;
                if (i13 >= dArr3.length) {
                    break;
                }
                dArr3[i13] = 1.0d / (r1 * r1);
                int i14 = i13 + 1;
                double sqrt = FastMath.sqrt(i14 / (i13 + 5)) * 0.5d;
                int i15 = 0;
                while (i15 <= i13) {
                    double[] dArr4 = this.errfac;
                    i15++;
                    dArr4[i13] = dArr4[i13] * (sqrt / i15);
                }
                i13 = i14;
            }
        } else {
            this.errfac = null;
        }
        this.currentDegree = 0;
    }

    public void computeCoefficients(int i10, double d10) {
        double[][] dArr = this.polynomials;
        if (dArr == null || dArr.length <= i10 + 4) {
            resetTables(i10 + 4);
        }
        this.currentDegree = i10 + 4;
        int i11 = 0;
        while (true) {
            double[] dArr2 = this.currentState;
            if (i11 >= dArr2.length) {
                return;
            }
            double d11 = d10 * this.y0Dot[i11];
            double d12 = d10 * this.y1Dot[i11];
            double[] dArr3 = this.f100272y1;
            double d13 = dArr3[i11];
            double d14 = dArr2[i11];
            double d15 = d13 - d14;
            double d16 = d15 - d12;
            double d17 = d11 - d15;
            double[][] dArr4 = this.polynomials;
            dArr4[0][i11] = d14;
            dArr4[1][i11] = d15;
            dArr4[2][i11] = d16;
            dArr4[3][i11] = d17;
            if (i10 < 0) {
                return;
            }
            double d18 = ((dArr2[i11] + dArr3[i11]) * 0.5d) + ((d16 + d17) * 0.125d);
            double[] dArr5 = dArr4[4];
            double[][] dArr6 = this.yMidDots;
            dArr5[i11] = (dArr6[0][i11] - d18) * 16.0d;
            if (i10 > 0) {
                double[] dArr7 = dArr4[5];
                dArr7[i11] = (dArr6[1][i11] - (d15 + ((d16 - d17) * 0.25d))) * 16.0d;
                if (i10 > 1) {
                    dArr4[6][i11] = ((dArr6[2][i11] - (d12 - d11)) + dArr5[i11]) * 16.0d;
                    if (i10 > 2) {
                        dArr4[7][i11] = ((dArr6[3][i11] - ((d17 - d16) * 6.0d)) + (dArr7[i11] * 3.0d)) * 16.0d;
                        for (int i12 = 4; i12 <= i10; i12++) {
                            double d19 = i12 * 0.5d * (i12 - 1);
                            double[][] dArr8 = this.polynomials;
                            dArr8[i12 + 4][i11] = ((this.yMidDots[i12][i11] + (d19 * dArr8[i12 + 2][i11])) - ((((2.0d * d19) * (i12 - 2)) * (i12 - 3)) * dArr8[i12][i11])) * 16.0d;
                        }
                    }
                }
            }
            i11++;
        }
    }

    @Override
    public void computeInterpolatedStateAndDerivatives(double d10, double d11) {
        double d12;
        double d13;
        long j10;
        int length = this.currentState.length;
        double d14 = 1.0d - d10;
        double d15 = d10 - 0.5d;
        double d16 = d10 * d14;
        double d17 = d16 * d16;
        double d18 = d16 * 2.0d * (1.0d - (d10 * 2.0d));
        double d19 = this.f100282h;
        double d20 = 1.0d / d19;
        double d21 = 3.0d * d10;
        double d22 = ((2.0d - d21) * d10) / d19;
        double d23 = (((d21 - 4.0d) * d10) + 1.0d) / d19;
        char c10 = 0;
        int i10 = 0;
        while (true) {
            double d24 = 0.0d;
            if (i10 >= length) {
                break;
            }
            double[][] dArr = this.polynomials;
            double d25 = dArr[c10][i10];
            double d26 = dArr[1][i10];
            double d27 = dArr[2][i10];
            double d28 = dArr[3][i10];
            this.interpolatedState[i10] = d25 + ((d26 + (((d27 * d10) + (d28 * d14)) * d14)) * d10);
            this.interpolatedDerivatives[i10] = (d26 * d20) + (d27 * d22) + (d28 * d23);
            int i11 = this.currentDegree;
            if (i11 > 3) {
                double d29 = dArr[i11][i10];
                int i12 = i11 - 1;
                for (int i13 = 3; i12 > i13; i13 = 3) {
                    double d30 = 1.0d / (i12 - 3);
                    d24 = ((d24 * d15) + d29) * d30;
                    d29 = this.polynomials[i12][i10] + (d29 * d30 * d15);
                    i12--;
                    d14 = d14;
                }
                d12 = d14;
                j10 = d.f5381g;
                double[] dArr2 = this.interpolatedState;
                dArr2[i10] = dArr2[i10] + (d17 * d29);
                double[] dArr3 = this.interpolatedDerivatives;
                d13 = d15;
                dArr3[i10] = dArr3[i10] + (((d24 * d17) + (d29 * d18)) / this.f100282h);
            } else {
                d12 = d14;
                d13 = d15;
                j10 = d.f5381g;
            }
            i10++;
            d15 = d13;
            d14 = d12;
            c10 = 0;
        }
        if (this.f100282h == 0.0d) {
            System.arraycopy(this.yMidDots[1], 0, this.interpolatedDerivatives, 0, length);
        }
    }

    @Override
    public StepInterpolator doCopy() {
        return new GraggBulirschStoerStepInterpolator(this);
    }

    public double estimateError(double[] dArr) {
        double d10 = 0.0d;
        if (this.currentDegree < 5) {
            return 0.0d;
        }
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double d11 = this.polynomials[this.currentDegree][i10] / dArr[i10];
            d10 += d11 * d11;
        }
        return FastMath.sqrt(d10 / dArr.length) * this.errfac[this.currentDegree - 5];
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        double readBaseExternal = readBaseExternal(objectInput);
        double[] dArr = this.currentState;
        int length = dArr == null ? -1 : dArr.length;
        int readInt = objectInput.readInt();
        resetTables(readInt);
        this.currentDegree = readInt;
        for (int i10 = 0; i10 <= this.currentDegree; i10++) {
            for (int i11 = 0; i11 < length; i11++) {
                this.polynomials[i10][i11] = objectInput.readDouble();
            }
        }
        setInterpolatedTime(readBaseExternal);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        double[] dArr = this.currentState;
        int length = dArr == null ? -1 : dArr.length;
        writeBaseExternal(objectOutput);
        objectOutput.writeInt(this.currentDegree);
        for (int i10 = 0; i10 <= this.currentDegree; i10++) {
            for (int i11 = 0; i11 < length; i11++) {
                objectOutput.writeDouble(this.polynomials[i10][i11]);
            }
        }
    }

    public GraggBulirschStoerStepInterpolator(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, double[][] dArr5, boolean z10, EquationsMapper equationsMapper, EquationsMapper[] equationsMapperArr) {
        super(dArr, z10, equationsMapper, equationsMapperArr);
        this.y0Dot = dArr2;
        this.f100272y1 = dArr3;
        this.y1Dot = dArr4;
        this.yMidDots = dArr5;
        resetTables(dArr5.length + 4);
    }

    public GraggBulirschStoerStepInterpolator(GraggBulirschStoerStepInterpolator graggBulirschStoerStepInterpolator) {
        super(graggBulirschStoerStepInterpolator);
        int length = this.currentState.length;
        this.y0Dot = null;
        this.f100272y1 = null;
        this.y1Dot = null;
        this.yMidDots = null;
        if (graggBulirschStoerStepInterpolator.polynomials == null) {
            this.polynomials = null;
            this.currentDegree = -1;
            return;
        }
        resetTables(graggBulirschStoerStepInterpolator.currentDegree);
        int i10 = 0;
        while (true) {
            double[][] dArr = this.polynomials;
            if (i10 < dArr.length) {
                double[] dArr2 = new double[length];
                dArr[i10] = dArr2;
                System.arraycopy(graggBulirschStoerStepInterpolator.polynomials[i10], 0, dArr2, 0, length);
                i10++;
            } else {
                this.currentDegree = graggBulirschStoerStepInterpolator.currentDegree;
                return;
            }
        }
    }
}
