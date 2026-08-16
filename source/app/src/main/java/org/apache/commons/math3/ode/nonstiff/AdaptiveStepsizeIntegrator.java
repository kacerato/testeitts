package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.AbstractIntegrator;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.util.FastMath;

public abstract class AdaptiveStepsizeIntegrator extends AbstractIntegrator {
    private double initialStep;
    protected int mainSetDimension;
    private double maxStep;
    private double minStep;
    protected double scalAbsoluteTolerance;
    protected double scalRelativeTolerance;
    protected double[] vecAbsoluteTolerance;
    protected double[] vecRelativeTolerance;

    public AdaptiveStepsizeIntegrator(String str, double d10, double d11, double d12, double d13) {
        super(str);
        setStepSizeControl(d10, d11, d12, d13);
        resetInternalState();
    }

    public double filterStep(double d10, boolean z10, boolean z11) throws NumberIsTooSmallException {
        double abs = FastMath.abs(d10);
        double d11 = this.minStep;
        if (abs < d11) {
            if (!z11) {
                throw new NumberIsTooSmallException(LocalizedFormats.MINIMAL_STEPSIZE_REACHED_DURING_INTEGRATION, Double.valueOf(FastMath.abs(d10)), Double.valueOf(this.minStep), true);
            }
            d10 = z10 ? d11 : -d11;
        }
        double d12 = this.maxStep;
        return d10 > d12 ? d12 : d10 < (-d12) ? -d12 : d10;
    }

    @Override
    public double getCurrentStepStart() {
        return this.stepStart;
    }

    public double getMaxStep() {
        return this.maxStep;
    }

    public double getMinStep() {
        return this.minStep;
    }

    public double initializeStep(boolean z10, int i10, double[] dArr, double d10, double[] dArr2, double[] dArr3, double[] dArr4, double[] dArr5) throws MaxCountExceededException, DimensionMismatchException {
        double d11 = this.initialStep;
        if (d11 > 0.0d) {
            return z10 ? d11 : -d11;
        }
        double d12 = 0.0d;
        double d13 = 0.0d;
        for (int i11 = 0; i11 < dArr.length; i11++) {
            double d14 = dArr2[i11];
            double d15 = dArr[i11];
            double d16 = d14 / d15;
            d12 += d16 * d16;
            double d17 = dArr3[i11] / d15;
            d13 += d17 * d17;
        }
        double sqrt = (d12 < 1.0E-10d || d13 < 1.0E-10d) ? 1.0E-6d : FastMath.sqrt(d12 / d13) * 0.01d;
        if (!z10) {
            sqrt = -sqrt;
        }
        for (int i12 = 0; i12 < dArr2.length; i12++) {
            dArr4[i12] = dArr2[i12] + (dArr3[i12] * sqrt);
        }
        computeDerivatives(d10 + sqrt, dArr4, dArr5);
        double d18 = 0.0d;
        for (int i13 = 0; i13 < dArr.length; i13++) {
            double d19 = (dArr5[i13] - dArr3[i13]) / dArr[i13];
            d18 += d19 * d19;
        }
        double max = FastMath.max(FastMath.sqrt(d13), FastMath.sqrt(d18) / sqrt);
        double max2 = FastMath.max(FastMath.min(FastMath.abs(sqrt) * 100.0d, max < 1.0E-15d ? FastMath.max(1.0E-6d, FastMath.abs(sqrt) * 0.001d) : FastMath.pow(0.01d / max, 1.0d / i10)), FastMath.abs(d10) * 1.0E-12d);
        if (max2 < getMinStep()) {
            max2 = getMinStep();
        }
        if (max2 > getMaxStep()) {
            max2 = getMaxStep();
        }
        return !z10 ? -max2 : max2;
    }

    @Override
    public abstract void integrate(ExpandableStatefulODE expandableStatefulODE, double d10) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException;

    public void resetInternalState() {
        this.stepStart = Double.NaN;
        this.stepSize = FastMath.sqrt(this.minStep * this.maxStep);
    }

    @Override
    public void sanityChecks(ExpandableStatefulODE expandableStatefulODE, double d10) throws DimensionMismatchException, NumberIsTooSmallException {
        super.sanityChecks(expandableStatefulODE, d10);
        int dimension = expandableStatefulODE.getPrimaryMapper().getDimension();
        this.mainSetDimension = dimension;
        double[] dArr = this.vecAbsoluteTolerance;
        if (dArr != null && dArr.length != dimension) {
            throw new DimensionMismatchException(this.mainSetDimension, this.vecAbsoluteTolerance.length);
        }
        double[] dArr2 = this.vecRelativeTolerance;
        if (dArr2 != null && dArr2.length != dimension) {
            throw new DimensionMismatchException(this.mainSetDimension, this.vecRelativeTolerance.length);
        }
    }

    public void setInitialStepSize(double d10) {
        if (d10 < this.minStep || d10 > this.maxStep) {
            this.initialStep = -1.0d;
        } else {
            this.initialStep = d10;
        }
    }

    public void setStepSizeControl(double d10, double d11, double d12, double d13) {
        this.minStep = FastMath.abs(d10);
        this.maxStep = FastMath.abs(d11);
        this.initialStep = -1.0d;
        this.scalAbsoluteTolerance = d12;
        this.scalRelativeTolerance = d13;
        this.vecAbsoluteTolerance = null;
        this.vecRelativeTolerance = null;
    }

    public AdaptiveStepsizeIntegrator(String str, double d10, double d11, double[] dArr, double[] dArr2) {
        super(str);
        setStepSizeControl(d10, d11, dArr, dArr2);
        resetInternalState();
    }

    public void setStepSizeControl(double d10, double d11, double[] dArr, double[] dArr2) {
        this.minStep = FastMath.abs(d10);
        this.maxStep = FastMath.abs(d11);
        this.initialStep = -1.0d;
        this.scalAbsoluteTolerance = 0.0d;
        this.scalRelativeTolerance = 0.0d;
        this.vecAbsoluteTolerance = (double[]) dArr.clone();
        this.vecRelativeTolerance = (double[]) dArr2.clone();
    }
}
