package org.apache.commons.math3.ode.sampling;

import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

public class FieldStepNormalizer<T extends RealFieldElement<T>> implements FieldStepHandler<T> {
    private final StepNormalizerBounds bounds;
    private FieldODEStateAndDerivative<T> first;
    private boolean forward;

    private double f100283h;
    private final FieldFixedStepHandler<T> handler;
    private FieldODEStateAndDerivative<T> last;
    private final StepNormalizerMode mode;

    public FieldStepNormalizer(double d10, FieldFixedStepHandler<T> fieldFixedStepHandler) {
        this(d10, fieldFixedStepHandler, StepNormalizerMode.INCREMENT, StepNormalizerBounds.FIRST);
    }

    private void doNormalizedStep(boolean z10) {
        if (this.bounds.firstIncluded() || this.first.getTime().getReal() != this.last.getTime().getReal()) {
            this.handler.handleStep(this.last, z10);
        }
    }

    private boolean isNextInStep(T t10, FieldStepInterpolator<T> fieldStepInterpolator) {
        boolean z10 = this.forward;
        double real = t10.getReal();
        double real2 = fieldStepInterpolator.getCurrentState().getTime().getReal();
        if (z10) {
            if (real > real2) {
                return false;
            }
        } else if (real < real2) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v7, types: [org.apache.commons.math3.RealFieldElement] */
    @Override
    public void handleStep(FieldStepInterpolator<T> fieldStepInterpolator, boolean z10) throws MaxCountExceededException {
        T t10;
        double floor;
        boolean z11;
        if (this.last == null) {
            FieldODEStateAndDerivative<T> previousState = fieldStepInterpolator.getPreviousState();
            this.first = previousState;
            this.last = previousState;
            boolean isForward = fieldStepInterpolator.isForward();
            this.forward = isForward;
            if (!isForward) {
                this.f100283h = -this.f100283h;
            }
        }
        if (this.mode == StepNormalizerMode.INCREMENT) {
            t10 = this.last.getTime();
            floor = this.f100283h;
        } else {
            t10 = (T) this.last.getTime().getField().getZero();
            floor = (FastMath.floor(this.last.getTime().getReal() / this.f100283h) + 1.0d) * this.f100283h;
        }
        RealFieldElement realFieldElement = (RealFieldElement) t10.add(floor);
        if (this.mode == StepNormalizerMode.MULTIPLES && Precision.equals(realFieldElement.getReal(), this.last.getTime().getReal(), 1)) {
            realFieldElement = (RealFieldElement) realFieldElement.add(this.f100283h);
        }
        boolean isNextInStep = isNextInStep(realFieldElement, fieldStepInterpolator);
        while (true) {
            z11 = false;
            if (!isNextInStep) {
                break;
            }
            doNormalizedStep(false);
            this.last = fieldStepInterpolator.getInterpolatedState(realFieldElement);
            realFieldElement = (RealFieldElement) realFieldElement.add(this.f100283h);
            isNextInStep = isNextInStep(realFieldElement, fieldStepInterpolator);
        }
        if (z10) {
            if (this.bounds.lastIncluded() && this.last.getTime().getReal() != fieldStepInterpolator.getCurrentState().getTime().getReal()) {
                z11 = true;
            }
            doNormalizedStep(!z11);
            if (z11) {
                this.last = fieldStepInterpolator.getCurrentState();
                doNormalizedStep(true);
            }
        }
    }

    @Override
    public void init(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, T t10) {
        this.first = null;
        this.last = null;
        this.forward = true;
        this.handler.init(fieldODEStateAndDerivative, t10);
    }

    public FieldStepNormalizer(double d10, FieldFixedStepHandler<T> fieldFixedStepHandler, StepNormalizerMode stepNormalizerMode) {
        this(d10, fieldFixedStepHandler, stepNormalizerMode, StepNormalizerBounds.FIRST);
    }

    public FieldStepNormalizer(double d10, FieldFixedStepHandler<T> fieldFixedStepHandler, StepNormalizerBounds stepNormalizerBounds) {
        this(d10, fieldFixedStepHandler, StepNormalizerMode.INCREMENT, stepNormalizerBounds);
    }

    public FieldStepNormalizer(double d10, FieldFixedStepHandler<T> fieldFixedStepHandler, StepNormalizerMode stepNormalizerMode, StepNormalizerBounds stepNormalizerBounds) {
        this.f100283h = FastMath.abs(d10);
        this.handler = fieldFixedStepHandler;
        this.mode = stepNormalizerMode;
        this.bounds = stepNormalizerBounds;
        this.first = null;
        this.last = null;
        this.forward = true;
    }
}
