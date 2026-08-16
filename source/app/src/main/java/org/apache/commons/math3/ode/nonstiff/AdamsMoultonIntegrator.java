package org.apache.commons.math3.ode.nonstiff;

import java.util.Arrays;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.RealMatrixPreservingVisitor;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.sampling.NordsieckStepInterpolator;
import org.apache.commons.math3.util.FastMath;

public class AdamsMoultonIntegrator extends AdamsIntegrator {
    private static final String METHOD_NAME = "Adams-Moulton";

    public class Corrector implements RealMatrixPreservingVisitor {
        private final double[] after;
        private final double[] before;
        private final double[] previous;
        private final double[] scaled;

        public Corrector(double[] dArr, double[] dArr2, double[] dArr3) {
            this.previous = dArr;
            this.scaled = dArr2;
            this.after = dArr3;
            this.before = (double[]) dArr3.clone();
        }

        @Override
        public double end() {
            double d10 = 0.0d;
            int i10 = 0;
            while (true) {
                double[] dArr = this.after;
                if (i10 >= dArr.length) {
                    return FastMath.sqrt(d10 / AdamsMoultonIntegrator.this.mainSetDimension);
                }
                double d11 = dArr[i10];
                double[] dArr2 = this.previous;
                dArr[i10] = d11 + dArr2[i10] + this.scaled[i10];
                if (i10 < AdamsMoultonIntegrator.this.mainSetDimension) {
                    double max = FastMath.max(FastMath.abs(dArr2[i10]), FastMath.abs(this.after[i10]));
                    AdamsMoultonIntegrator adamsMoultonIntegrator = AdamsMoultonIntegrator.this;
                    double[] dArr3 = adamsMoultonIntegrator.vecAbsoluteTolerance;
                    double d12 = (this.after[i10] - this.before[i10]) / (dArr3 == null ? adamsMoultonIntegrator.scalAbsoluteTolerance + (adamsMoultonIntegrator.scalRelativeTolerance * max) : dArr3[i10] + (adamsMoultonIntegrator.vecRelativeTolerance[i10] * max));
                    d10 += d12 * d12;
                }
                i10++;
            }
        }

        @Override
        public void start(int i10, int i11, int i12, int i13, int i14, int i15) {
            Arrays.fill(this.after, 0.0d);
        }

        @Override
        public void visit(int i10, int i11, double d10) {
            if ((i10 & 1) == 0) {
                double[] dArr = this.after;
                dArr[i11] = dArr[i11] - d10;
            } else {
                double[] dArr2 = this.after;
                dArr2[i11] = dArr2[i11] + d10;
            }
        }
    }

    public AdamsMoultonIntegrator(int i10, double d10, double d11, double d12, double d13) throws NumberIsTooSmallException {
        super(METHOD_NAME, i10, i10 + 1, d10, d11, d12, d13);
    }

    @Override
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d10) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        boolean z10;
        boolean z11;
        sanityChecks(expandableStatefulODE, d10);
        setEquations(expandableStatefulODE);
        boolean z12 = d10 > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr = (double[]) completeState.clone();
        double[] dArr2 = new double[dArr.length];
        double[] dArr3 = new double[dArr.length];
        double[] dArr4 = new double[dArr.length];
        NordsieckStepInterpolator nordsieckStepInterpolator = new NordsieckStepInterpolator();
        nordsieckStepInterpolator.reinitialize(dArr, z12, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        initIntegration(expandableStatefulODE.getTime(), completeState, d10);
        start(expandableStatefulODE.getTime(), dArr, d10);
        nordsieckStepInterpolator.reinitialize(this.stepStart, this.stepSize, this.scaled, this.nordsieck);
        NordsieckStepInterpolator nordsieckStepInterpolator2 = nordsieckStepInterpolator;
        nordsieckStepInterpolator2.storeTime(this.stepStart);
        double d11 = this.stepSize;
        nordsieckStepInterpolator2.rescale(d11);
        this.isLastStep = false;
        Array2DRowRealMatrix array2DRowRealMatrix = null;
        while (true) {
            Array2DRowRealMatrix array2DRowRealMatrix2 = array2DRowRealMatrix;
            double d12 = d11;
            double d13 = 10.0d;
            while (d13 >= 1.0d) {
                this.stepSize = d12;
                double d14 = this.stepStart + d12;
                nordsieckStepInterpolator2.setInterpolatedTime(d14);
                ExpandableStatefulODE expandable = getExpandable();
                expandable.getPrimaryMapper().insertEquationData(nordsieckStepInterpolator2.getInterpolatedState(), dArr3);
                EquationsMapper[] secondaryMappers = expandable.getSecondaryMappers();
                int length = secondaryMappers.length;
                double d15 = d12;
                int i10 = 0;
                int i11 = 0;
                while (i11 < length) {
                    secondaryMappers[i11].insertEquationData(nordsieckStepInterpolator2.getInterpolatedSecondaryState(i10), dArr3);
                    i10++;
                    i11++;
                    secondaryMappers = secondaryMappers;
                }
                computeDerivatives(d14, dArr3, dArr2);
                for (int i12 = 0; i12 < completeState.length; i12++) {
                    dArr4[i12] = this.stepSize * dArr2[i12];
                }
                array2DRowRealMatrix2 = updateHighOrderDerivativesPhase1(this.nordsieck);
                updateHighOrderDerivativesPhase2(this.scaled, dArr4, array2DRowRealMatrix2);
                d13 = array2DRowRealMatrix2.walkInOptimizedOrder(new Corrector(dArr, dArr4, dArr3));
                if (d13 >= 1.0d) {
                    double filterStep = filterStep(this.stepSize * computeStepGrowShrinkFactor(d13), z12, false);
                    nordsieckStepInterpolator2.rescale(filterStep);
                    d12 = filterStep;
                } else {
                    d12 = d15;
                }
            }
            double d16 = d12;
            double d17 = this.stepStart + this.stepSize;
            computeDerivatives(d17, dArr3, dArr2);
            double[] dArr5 = new double[completeState.length];
            double d18 = d13;
            for (int i13 = 0; i13 < completeState.length; i13++) {
                dArr5[i13] = this.stepSize * dArr2[i13];
            }
            updateHighOrderDerivativesPhase2(dArr4, dArr5, array2DRowRealMatrix2);
            System.arraycopy(dArr3, 0, dArr, 0, dArr.length);
            nordsieckStepInterpolator2.reinitialize(d17, this.stepSize, dArr5, array2DRowRealMatrix2);
            nordsieckStepInterpolator2.storeTime(this.stepStart);
            nordsieckStepInterpolator2.shift();
            nordsieckStepInterpolator2.storeTime(d17);
            boolean z13 = z12;
            double[] dArr6 = dArr2;
            double[] dArr7 = completeState;
            double[] dArr8 = dArr2;
            NordsieckStepInterpolator nordsieckStepInterpolator3 = nordsieckStepInterpolator2;
            Array2DRowRealMatrix array2DRowRealMatrix3 = array2DRowRealMatrix2;
            double acceptStep = acceptStep(nordsieckStepInterpolator2, dArr, dArr6, d10);
            this.stepStart = acceptStep;
            this.scaled = dArr5;
            this.nordsieck = array2DRowRealMatrix3;
            if (this.isLastStep) {
                z10 = z13;
                d11 = d16;
            } else {
                nordsieckStepInterpolator3.storeTime(acceptStep);
                if (this.resetOccurred) {
                    start(this.stepStart, dArr, d10);
                    nordsieckStepInterpolator3.reinitialize(this.stepStart, this.stepSize, this.scaled, this.nordsieck);
                }
                double computeStepGrowShrinkFactor = this.stepSize * computeStepGrowShrinkFactor(d18);
                double d19 = this.stepStart + computeStepGrowShrinkFactor;
                if (!z13 ? d19 > d10 : d19 < d10) {
                    z10 = z13;
                    z11 = false;
                } else {
                    z10 = z13;
                    z11 = true;
                }
                d11 = filterStep(computeStepGrowShrinkFactor, z10, z11);
                double d20 = this.stepStart;
                double d21 = d20 + d11;
                if (!z10 ? d21 <= d10 : d21 >= d10) {
                    d11 = d10 - d20;
                }
                nordsieckStepInterpolator3.rescale(d11);
            }
            if (this.isLastStep) {
                expandableStatefulODE.setTime(this.stepStart);
                expandableStatefulODE.setCompleteState(dArr);
                resetInternalState();
                return;
            } else {
                z12 = z10;
                nordsieckStepInterpolator2 = nordsieckStepInterpolator3;
                array2DRowRealMatrix = array2DRowRealMatrix3;
                completeState = dArr7;
                dArr2 = dArr8;
            }
        }
    }

    public AdamsMoultonIntegrator(int i10, double d10, double d11, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super(METHOD_NAME, i10, i10 + 1, d10, d11, dArr, dArr2);
    }
}
