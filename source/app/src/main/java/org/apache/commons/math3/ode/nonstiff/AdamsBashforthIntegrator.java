package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.sampling.NordsieckStepInterpolator;
import org.apache.commons.math3.util.FastMath;

public class AdamsBashforthIntegrator extends AdamsIntegrator {
    private static final String METHOD_NAME = "Adams-Bashforth";

    public AdamsBashforthIntegrator(int i10, double d10, double d11, double d12, double d13) throws NumberIsTooSmallException {
        super(METHOD_NAME, i10, i10, d10, d11, d12, d13);
    }

    private double errorEstimation(double[] dArr, double[] dArr2, double[] dArr3, RealMatrix realMatrix) {
        int i10 = 0;
        double d10 = 0.0d;
        while (true) {
            int i11 = this.mainSetDimension;
            if (i10 >= i11) {
                return FastMath.sqrt(d10 / i11);
            }
            double abs = FastMath.abs(dArr2[i10]);
            double[] dArr4 = this.vecAbsoluteTolerance;
            double d11 = dArr4 == null ? this.scalAbsoluteTolerance + (this.scalRelativeTolerance * abs) : dArr4[i10] + (this.vecRelativeTolerance[i10] * abs);
            int i12 = realMatrix.getRowDimension() % 2 == 0 ? -1 : 1;
            double d12 = 0.0d;
            for (int rowDimension = realMatrix.getRowDimension() - 1; rowDimension >= 0; rowDimension--) {
                d12 += i12 * realMatrix.getEntry(rowDimension, i10);
                i12 = -i12;
            }
            double d13 = ((dArr2[i10] - dArr[i10]) + (d12 - dArr3[i10])) / d11;
            d10 += d13 * d13;
            i10++;
        }
    }

    @Override
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d10) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        sanityChecks(expandableStatefulODE, d10);
        setEquations(expandableStatefulODE);
        boolean z10 = d10 > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr = new double[completeState.length];
        NordsieckStepInterpolator nordsieckStepInterpolator = new NordsieckStepInterpolator();
        nordsieckStepInterpolator.reinitialize(completeState, z10, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        initIntegration(expandableStatefulODE.getTime(), completeState, d10);
        start(expandableStatefulODE.getTime(), completeState, d10);
        nordsieckStepInterpolator.reinitialize(this.stepStart, this.stepSize, this.scaled, this.nordsieck);
        nordsieckStepInterpolator.storeTime(this.stepStart);
        double d11 = this.stepSize;
        nordsieckStepInterpolator.rescale(d11);
        this.isLastStep = false;
        while (true) {
            nordsieckStepInterpolator.shift();
            double[] dArr2 = new double[completeState.length];
            int length = completeState.length;
            double[] dArr3 = new double[length];
            Array2DRowRealMatrix array2DRowRealMatrix = null;
            double d12 = 10.0d;
            while (d12 >= 1.0d) {
                double d13 = this.stepStart + d11;
                nordsieckStepInterpolator.storeTime(d13);
                ExpandableStatefulODE expandable = getExpandable();
                expandable.getPrimaryMapper().insertEquationData(nordsieckStepInterpolator.getInterpolatedState(), dArr2);
                EquationsMapper[] secondaryMappers = expandable.getSecondaryMappers();
                int length2 = secondaryMappers.length;
                int i10 = 0;
                int i11 = 0;
                while (i11 < length2) {
                    secondaryMappers[i11].insertEquationData(nordsieckStepInterpolator.getInterpolatedSecondaryState(i10), dArr2);
                    i10++;
                    i11++;
                    length2 = length2;
                    secondaryMappers = secondaryMappers;
                }
                computeDerivatives(d13, dArr2, dArr);
                for (int i12 = 0; i12 < length; i12++) {
                    dArr3[i12] = dArr[i12] * d11;
                }
                array2DRowRealMatrix = updateHighOrderDerivativesPhase1(this.nordsieck);
                updateHighOrderDerivativesPhase2(this.scaled, dArr3, array2DRowRealMatrix);
                d12 = errorEstimation(completeState, dArr2, dArr3, array2DRowRealMatrix);
                if (d12 >= 1.0d) {
                    d11 = filterStep(d11 * computeStepGrowShrinkFactor(d12), z10, false);
                    nordsieckStepInterpolator.rescale(d11);
                }
            }
            this.stepSize = d11;
            boolean z11 = z10;
            double d14 = this.stepStart + d11;
            double d15 = d12;
            nordsieckStepInterpolator.reinitialize(d14, d11, dArr3, array2DRowRealMatrix);
            nordsieckStepInterpolator.storeTime(d14);
            System.arraycopy(dArr2, 0, completeState, 0, completeState.length);
            double d16 = d11;
            Array2DRowRealMatrix array2DRowRealMatrix2 = array2DRowRealMatrix;
            this.stepStart = acceptStep(nordsieckStepInterpolator, completeState, dArr, d10);
            this.scaled = dArr3;
            this.nordsieck = array2DRowRealMatrix2;
            nordsieckStepInterpolator.reinitialize(d14, this.stepSize, dArr3, array2DRowRealMatrix2);
            if (this.isLastStep) {
                d11 = d16;
            } else {
                nordsieckStepInterpolator.storeTime(this.stepStart);
                if (this.resetOccurred) {
                    start(this.stepStart, completeState, d10);
                    nordsieckStepInterpolator.reinitialize(this.stepStart, this.stepSize, this.scaled, this.nordsieck);
                }
                double computeStepGrowShrinkFactor = this.stepSize * computeStepGrowShrinkFactor(d15);
                double d17 = this.stepStart + computeStepGrowShrinkFactor;
                d11 = filterStep(computeStepGrowShrinkFactor, z11, !z11 ? d17 > d10 : d17 < d10);
                double d18 = this.stepStart;
                double d19 = d18 + d11;
                if (!z11 ? d19 <= d10 : d19 >= d10) {
                    d11 = d10 - d18;
                }
                nordsieckStepInterpolator.rescale(d11);
            }
            if (this.isLastStep) {
                expandableStatefulODE.setTime(this.stepStart);
                expandableStatefulODE.setCompleteState(completeState);
                resetInternalState();
                return;
            }
            z10 = z11;
        }
    }

    public AdamsBashforthIntegrator(int i10, double d10, double d11, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super(METHOD_NAME, i10, i10, d10, d11, dArr, dArr2);
    }
}
