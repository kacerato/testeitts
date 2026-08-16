package org.apache.commons.math3.ode.nonstiff;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.util.FastMath;

public abstract class EmbeddedRungeKuttaIntegrator extends AdaptiveStepsizeIntegrator {

    private final double[][] f100269a;

    private final double[] f100270b;

    private final double[] f100271c;
    private final double exp;
    private final boolean fsal;
    private double maxGrowth;
    private double minReduction;
    private final RungeKuttaStepInterpolator prototype;
    private double safety;

    public EmbeddedRungeKuttaIntegrator(String str, boolean z10, double[] dArr, double[][] dArr2, double[] dArr3, RungeKuttaStepInterpolator rungeKuttaStepInterpolator, double d10, double d11, double d12, double d13) {
        super(str, d10, d11, d12, d13);
        this.fsal = z10;
        this.f100271c = dArr;
        this.f100269a = dArr2;
        this.f100270b = dArr3;
        this.prototype = rungeKuttaStepInterpolator;
        this.exp = (-1.0d) / getOrder();
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(10.0d);
    }

    public abstract double estimateError(double[][] dArr, double[] dArr2, double[] dArr3, double d10);

    public double getMaxGrowth() {
        return this.maxGrowth;
    }

    public double getMinReduction() {
        return this.minReduction;
    }

    public abstract int getOrder();

    public double getSafety() {
        return this.safety;
    }

    @Override
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d10) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        int i10;
        double[] dArr;
        RungeKuttaStepInterpolator rungeKuttaStepInterpolator;
        int i11;
        double[] dArr2;
        boolean z10;
        int i12;
        double d11;
        sanityChecks(expandableStatefulODE, d10);
        setEquations(expandableStatefulODE);
        int i13 = 0;
        boolean z11 = d10 > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr3 = (double[]) completeState.clone();
        int length = this.f100271c.length;
        int i14 = length + 1;
        double[][] dArr4 = (double[][]) Array.newInstance(Double.TYPE, i14, dArr3.length);
        double[] dArr5 = (double[]) completeState.clone();
        double[] dArr6 = new double[dArr3.length];
        RungeKuttaStepInterpolator rungeKuttaStepInterpolator2 = (RungeKuttaStepInterpolator) this.prototype.copy();
        RungeKuttaStepInterpolator rungeKuttaStepInterpolator3 = rungeKuttaStepInterpolator2;
        double[] dArr7 = dArr6;
        double[] dArr8 = dArr5;
        rungeKuttaStepInterpolator2.reinitialize(this, dArr5, dArr4, z11, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        rungeKuttaStepInterpolator3.storeTime(expandableStatefulODE.getTime());
        this.stepStart = expandableStatefulODE.getTime();
        initIntegration(expandableStatefulODE.getTime(), completeState, d10);
        this.isLastStep = false;
        double d12 = 0.0d;
        boolean z12 = true;
        while (true) {
            rungeKuttaStepInterpolator3.shift();
            double d13 = d12;
            boolean z13 = z12;
            double d14 = 10.0d;
            while (d14 >= 1.0d) {
                if (z13 || !this.fsal) {
                    computeDerivatives(this.stepStart, dArr3, dArr4[i13]);
                }
                if (z13) {
                    int i15 = this.mainSetDimension;
                    double[] dArr9 = new double[i15];
                    if (this.vecAbsoluteTolerance == null) {
                        int i16 = i13;
                        while (i16 < i15) {
                            dArr9[i16] = this.scalAbsoluteTolerance + (this.scalRelativeTolerance * FastMath.abs(dArr3[i16]));
                            i16++;
                            z11 = z11;
                        }
                        z10 = z11;
                    } else {
                        z10 = z11;
                        for (int i17 = 0; i17 < i15; i17++) {
                            dArr9[i17] = this.vecAbsoluteTolerance[i17] + (this.vecRelativeTolerance[i17] * FastMath.abs(dArr3[i17]));
                        }
                    }
                    i12 = i14;
                    i11 = length;
                    dArr2 = dArr3;
                    d11 = initializeStep(z10, getOrder(), dArr9, this.stepStart, dArr3, dArr4[0], dArr8, dArr4[1]);
                    z13 = false;
                } else {
                    i11 = length;
                    dArr2 = dArr3;
                    z10 = z11;
                    i12 = i14;
                    d11 = d13;
                }
                this.stepSize = d11;
                if (z10) {
                    double d15 = this.stepStart;
                    if (d15 + d11 >= d10) {
                        this.stepSize = d10 - d15;
                    }
                } else {
                    double d16 = this.stepStart;
                    if (d16 + d11 <= d10) {
                        this.stepSize = d10 - d16;
                    }
                }
                int i18 = 1;
                while (i18 < i12) {
                    for (int i19 = 0; i19 < completeState.length; i19++) {
                        int i20 = i18 - 1;
                        double d17 = this.f100269a[i20][0] * dArr4[0][i19];
                        for (int i21 = 1; i21 < i18; i21++) {
                            d17 += this.f100269a[i20][i21] * dArr4[i21][i19];
                        }
                        dArr8[i19] = dArr2[i19] + (this.stepSize * d17);
                    }
                    double[] dArr10 = dArr8;
                    computeDerivatives(this.stepStart + (this.f100271c[i18 - 1] * this.stepSize), dArr10, dArr4[i18]);
                    i18++;
                    z13 = z13;
                    d11 = d11;
                    dArr8 = dArr10;
                }
                d13 = d11;
                double[] dArr11 = dArr8;
                boolean z14 = z13;
                for (int i22 = 0; i22 < completeState.length; i22++) {
                    double d18 = this.f100270b[0] * dArr4[0][i22];
                    for (int i23 = 1; i23 < i12; i23++) {
                        d18 += this.f100270b[i23] * dArr4[i23][i22];
                    }
                    dArr11[i22] = dArr2[i22] + (this.stepSize * d18);
                }
                d14 = estimateError(dArr4, dArr2, dArr11, this.stepSize);
                if (d14 >= 1.0d) {
                    int i24 = i11;
                    int i25 = i12;
                    boolean z15 = z10;
                    d13 = filterStep(this.stepSize * FastMath.min(this.maxGrowth, FastMath.max(this.minReduction, this.safety * FastMath.pow(d14, this.exp))), z15, false);
                    z11 = z15;
                    z13 = z14;
                    i13 = 0;
                    i14 = i25;
                    dArr8 = dArr11;
                    dArr3 = dArr2;
                    length = i24;
                } else {
                    length = i11;
                    i14 = i12;
                    z13 = z14;
                    z11 = z10;
                    i13 = 0;
                    dArr8 = dArr11;
                    dArr3 = dArr2;
                }
            }
            int i26 = length;
            double[] dArr12 = dArr3;
            double[] dArr13 = dArr8;
            int i27 = i14;
            int i28 = i13;
            boolean z16 = z11;
            rungeKuttaStepInterpolator3.storeTime(this.stepStart + this.stepSize);
            System.arraycopy(dArr13, i28, dArr12, i28, completeState.length);
            double[] dArr14 = dArr7;
            System.arraycopy(dArr4[i26], i28, dArr14, i28, completeState.length);
            double d19 = d14;
            this.stepStart = acceptStep(rungeKuttaStepInterpolator3, dArr12, dArr14, d10);
            System.arraycopy(dArr12, i28, dArr13, i28, dArr12.length);
            if (this.isLastStep) {
                i10 = i27;
                dArr = dArr12;
                rungeKuttaStepInterpolator = rungeKuttaStepInterpolator3;
                d12 = d13;
            } else {
                rungeKuttaStepInterpolator3.storeTime(this.stepStart);
                if (this.fsal) {
                    System.arraycopy(dArr14, i28, dArr4[i28], i28, completeState.length);
                }
                i10 = i27;
                dArr = dArr12;
                rungeKuttaStepInterpolator = rungeKuttaStepInterpolator3;
                double min = this.stepSize * FastMath.min(this.maxGrowth, FastMath.max(this.minReduction, this.safety * FastMath.pow(d19, this.exp)));
                double d20 = this.stepStart + min;
                d12 = filterStep(min, z16, !z16 ? d20 > d10 : d20 < d10);
                double d21 = this.stepStart;
                double d22 = d21 + d12;
                if (!z16 ? d22 <= d10 : d22 >= d10) {
                    d12 = d10 - d21;
                }
            }
            if (this.isLastStep) {
                expandableStatefulODE.setTime(this.stepStart);
                expandableStatefulODE.setCompleteState(dArr);
                resetInternalState();
                return;
            }
            z12 = z13;
            i14 = i10;
            length = i26;
            rungeKuttaStepInterpolator3 = rungeKuttaStepInterpolator;
            dArr8 = dArr13;
            dArr7 = dArr14;
            dArr3 = dArr;
            z11 = z16;
            i13 = 0;
        }
    }

    public void setMaxGrowth(double d10) {
        this.maxGrowth = d10;
    }

    public void setMinReduction(double d10) {
        this.minReduction = d10;
    }

    public void setSafety(double d10) {
        this.safety = d10;
    }

    public EmbeddedRungeKuttaIntegrator(String str, boolean z10, double[] dArr, double[][] dArr2, double[] dArr3, RungeKuttaStepInterpolator rungeKuttaStepInterpolator, double d10, double d11, double[] dArr4, double[] dArr5) {
        super(str, d10, d11, dArr4, dArr5);
        this.fsal = z10;
        this.f100271c = dArr;
        this.f100269a = dArr2;
        this.f100270b = dArr3;
        this.prototype = rungeKuttaStepInterpolator;
        this.exp = (-1.0d) / getOrder();
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(10.0d);
    }
}
