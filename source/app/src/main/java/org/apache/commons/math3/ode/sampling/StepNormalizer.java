package org.apache.commons.math3.ode.sampling;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

public class StepNormalizer implements StepHandler {
    private final StepNormalizerBounds bounds;
    private double firstTime;
    private boolean forward;

    private double f100284h;
    private final FixedStepHandler handler;
    private double[] lastDerivatives;
    private double[] lastState;
    private double lastTime;
    private final StepNormalizerMode mode;

    public StepNormalizer(double d10, FixedStepHandler fixedStepHandler) {
        this(d10, fixedStepHandler, StepNormalizerMode.INCREMENT, StepNormalizerBounds.FIRST);
    }

    private void doNormalizedStep(boolean z10) {
        if (this.bounds.firstIncluded() || this.firstTime != this.lastTime) {
            this.handler.handleStep(this.lastTime, this.lastState, this.lastDerivatives, z10);
        }
    }

    private boolean isNextInStep(double d10, StepInterpolator stepInterpolator) {
        boolean z10 = this.forward;
        double currentTime = stepInterpolator.getCurrentTime();
        if (z10) {
            if (d10 > currentTime) {
                return false;
            }
        } else if (d10 < currentTime) {
            return false;
        }
        return true;
    }

    private void storeStep(StepInterpolator stepInterpolator, double d10) throws MaxCountExceededException {
        this.lastTime = d10;
        stepInterpolator.setInterpolatedTime(d10);
        double[] interpolatedState = stepInterpolator.getInterpolatedState();
        double[] dArr = this.lastState;
        System.arraycopy(interpolatedState, 0, dArr, 0, dArr.length);
        double[] interpolatedDerivatives = stepInterpolator.getInterpolatedDerivatives();
        double[] dArr2 = this.lastDerivatives;
        System.arraycopy(interpolatedDerivatives, 0, dArr2, 0, dArr2.length);
    }

    @Override
    public void handleStep(StepInterpolator stepInterpolator, boolean z10) throws MaxCountExceededException {
        boolean z11 = false;
        if (this.lastState == null) {
            this.firstTime = stepInterpolator.getPreviousTime();
            double previousTime = stepInterpolator.getPreviousTime();
            this.lastTime = previousTime;
            stepInterpolator.setInterpolatedTime(previousTime);
            this.lastState = (double[]) stepInterpolator.getInterpolatedState().clone();
            this.lastDerivatives = (double[]) stepInterpolator.getInterpolatedDerivatives().clone();
            boolean z12 = stepInterpolator.getCurrentTime() >= this.lastTime;
            this.forward = z12;
            if (!z12) {
                this.f100284h = -this.f100284h;
            }
        }
        double floor = this.mode == StepNormalizerMode.INCREMENT ? this.lastTime + this.f100284h : (FastMath.floor(this.lastTime / this.f100284h) + 1.0d) * this.f100284h;
        if (this.mode == StepNormalizerMode.MULTIPLES && Precision.equals(floor, this.lastTime, 1)) {
            floor += this.f100284h;
        }
        boolean isNextInStep = isNextInStep(floor, stepInterpolator);
        while (isNextInStep) {
            doNormalizedStep(false);
            storeStep(stepInterpolator, floor);
            floor += this.f100284h;
            isNextInStep = isNextInStep(floor, stepInterpolator);
        }
        if (z10) {
            if (this.bounds.lastIncluded() && this.lastTime != stepInterpolator.getCurrentTime()) {
                z11 = true;
            }
            doNormalizedStep(!z11);
            if (z11) {
                storeStep(stepInterpolator, stepInterpolator.getCurrentTime());
                doNormalizedStep(true);
            }
        }
    }

    @Override
    public void init(double d10, double[] dArr, double d11) {
        this.firstTime = Double.NaN;
        this.lastTime = Double.NaN;
        this.lastState = null;
        this.lastDerivatives = null;
        this.forward = true;
        this.handler.init(d10, dArr, d11);
    }

    public StepNormalizer(double d10, FixedStepHandler fixedStepHandler, StepNormalizerMode stepNormalizerMode) {
        this(d10, fixedStepHandler, stepNormalizerMode, StepNormalizerBounds.FIRST);
    }

    public StepNormalizer(double d10, FixedStepHandler fixedStepHandler, StepNormalizerBounds stepNormalizerBounds) {
        this(d10, fixedStepHandler, StepNormalizerMode.INCREMENT, stepNormalizerBounds);
    }

    public StepNormalizer(double d10, FixedStepHandler fixedStepHandler, StepNormalizerMode stepNormalizerMode, StepNormalizerBounds stepNormalizerBounds) {
        this.f100284h = FastMath.abs(d10);
        this.handler = fixedStepHandler;
        this.mode = stepNormalizerMode;
        this.bounds = stepNormalizerBounds;
        this.firstTime = Double.NaN;
        this.lastTime = Double.NaN;
        this.lastState = null;
        this.lastDerivatives = null;
        this.forward = true;
    }
}
