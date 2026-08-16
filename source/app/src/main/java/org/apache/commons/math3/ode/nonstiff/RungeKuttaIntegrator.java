package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ode.AbstractIntegrator;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.FirstOrderDifferentialEquations;
import org.apache.commons.math3.util.FastMath;

public abstract class RungeKuttaIntegrator extends AbstractIntegrator {

    private final double[][] f100279a;

    private final double[] f100280b;

    private final double[] f100281c;
    private final RungeKuttaStepInterpolator prototype;
    private final double step;

    public RungeKuttaIntegrator(String str, double[] dArr, double[][] dArr2, double[] dArr3, RungeKuttaStepInterpolator rungeKuttaStepInterpolator, double d10) {
        super(str);
        this.f100281c = dArr;
        this.f100279a = dArr2;
        this.f100280b = dArr3;
        this.prototype = rungeKuttaStepInterpolator;
        this.step = FastMath.abs(d10);
    }

    @Override
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d10) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        sanityChecks(expandableStatefulODE, d10);
        setEquations(expandableStatefulODE);
        int i10 = 0;
        boolean z10 = d10 > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr = (double[]) completeState.clone();
        int length = this.f100281c.length;
        int i11 = length + 1;
        double[][] dArr2 = new double[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            dArr2[i12] = new double[completeState.length];
        }
        double[] dArr3 = (double[]) completeState.clone();
        double[] dArr4 = new double[completeState.length];
        RungeKuttaStepInterpolator rungeKuttaStepInterpolator = (RungeKuttaStepInterpolator) this.prototype.copy();
        RungeKuttaStepInterpolator rungeKuttaStepInterpolator2 = rungeKuttaStepInterpolator;
        double[] dArr5 = dArr4;
        double[] dArr6 = dArr3;
        rungeKuttaStepInterpolator.reinitialize(this, dArr3, dArr2, z10, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        rungeKuttaStepInterpolator2.storeTime(expandableStatefulODE.getTime());
        double time = expandableStatefulODE.getTime();
        this.stepStart = time;
        if (z10) {
            double d11 = this.step;
            if (time + d11 >= d10) {
                this.stepSize = d10 - time;
            } else {
                this.stepSize = d11;
            }
        } else {
            double d12 = this.step;
            if (time - d12 <= d10) {
                this.stepSize = d10 - time;
            } else {
                this.stepSize = -d12;
            }
        }
        initIntegration(expandableStatefulODE.getTime(), completeState, d10);
        this.isLastStep = false;
        while (true) {
            rungeKuttaStepInterpolator2.shift();
            computeDerivatives(this.stepStart, dArr, dArr2[i10]);
            int i13 = 1;
            while (i13 < i11) {
                int i14 = i10;
                while (i14 < completeState.length) {
                    int i15 = i13 - 1;
                    double d13 = this.f100279a[i15][i10] * dArr2[i10][i14];
                    for (int i16 = 1; i16 < i13; i16++) {
                        d13 += this.f100279a[i15][i16] * dArr2[i16][i14];
                    }
                    dArr6[i14] = dArr[i14] + (this.stepSize * d13);
                    i14++;
                    z10 = z10;
                    i10 = 0;
                }
                computeDerivatives(this.stepStart + (this.f100281c[i13 - 1] * this.stepSize), dArr6, dArr2[i13]);
                i13++;
                rungeKuttaStepInterpolator2 = rungeKuttaStepInterpolator2;
                z10 = z10;
                i10 = 0;
            }
            boolean z11 = z10;
            double[] dArr7 = dArr6;
            RungeKuttaStepInterpolator rungeKuttaStepInterpolator3 = rungeKuttaStepInterpolator2;
            for (int i17 = 0; i17 < completeState.length; i17++) {
                double d14 = this.f100280b[0] * dArr2[0][i17];
                for (int i18 = 1; i18 < i11; i18++) {
                    d14 += this.f100280b[i18] * dArr2[i18][i17];
                }
                dArr7[i17] = dArr[i17] + (this.stepSize * d14);
            }
            rungeKuttaStepInterpolator3.storeTime(this.stepStart + this.stepSize);
            System.arraycopy(dArr7, 0, dArr, 0, completeState.length);
            double[] dArr8 = dArr5;
            System.arraycopy(dArr2[length], 0, dArr8, 0, completeState.length);
            double acceptStep = acceptStep(rungeKuttaStepInterpolator3, dArr, dArr8, d10);
            this.stepStart = acceptStep;
            if (!this.isLastStep) {
                rungeKuttaStepInterpolator3.storeTime(acceptStep);
                double d15 = this.stepStart;
                double d16 = this.stepSize + d15;
                if (!z11 ? d16 <= d10 : d16 >= d10) {
                    this.stepSize = d10 - d15;
                }
            }
            if (this.isLastStep) {
                expandableStatefulODE.setTime(this.stepStart);
                expandableStatefulODE.setCompleteState(dArr);
                this.stepStart = Double.NaN;
                this.stepSize = Double.NaN;
                return;
            }
            dArr5 = dArr8;
            dArr6 = dArr7;
            rungeKuttaStepInterpolator2 = rungeKuttaStepInterpolator3;
            z10 = z11;
            i10 = 0;
        }
    }

    public double[] singleStep(FirstOrderDifferentialEquations firstOrderDifferentialEquations, double d10, double[] dArr, double d11) {
        double[] dArr2 = (double[]) dArr.clone();
        int i10 = 1;
        int length = this.f100281c.length + 1;
        double[][] dArr3 = new double[length];
        for (int i11 = 0; i11 < length; i11++) {
            dArr3[i11] = new double[dArr.length];
        }
        double[] dArr4 = (double[]) dArr.clone();
        double d12 = d11 - d10;
        firstOrderDifferentialEquations.computeDerivatives(d10, dArr2, dArr3[0]);
        int i12 = 1;
        while (i12 < length) {
            int i13 = 0;
            while (i13 < dArr.length) {
                int i14 = i12 - 1;
                double d13 = this.f100279a[i14][0] * dArr3[0][i13];
                for (int i15 = i10; i15 < i12; i15++) {
                    d13 += this.f100279a[i14][i15] * dArr3[i15][i13];
                }
                dArr4[i13] = dArr2[i13] + (d13 * d12);
                i13++;
                i10 = 1;
            }
            firstOrderDifferentialEquations.computeDerivatives((this.f100281c[i12 - 1] * d12) + d10, dArr4, dArr3[i12]);
            i12++;
            i10 = 1;
        }
        for (int i16 = 0; i16 < dArr.length; i16++) {
            double d14 = this.f100280b[0] * dArr3[0][i16];
            for (int i17 = 1; i17 < length; i17++) {
                d14 += this.f100280b[i17] * dArr3[i17][i16];
            }
            dArr2[i16] = dArr2[i16] + (d14 * d12);
        }
        return dArr2;
    }
}
