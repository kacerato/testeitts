package org.apache.commons.math3.ode.sampling;

import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

public abstract class AbstractFieldStepInterpolator<T extends RealFieldElement<T>> implements FieldStepInterpolator<T> {
    private final boolean forward;
    private final FieldODEStateAndDerivative<T> globalCurrentState;
    private final FieldODEStateAndDerivative<T> globalPreviousState;
    private FieldEquationsMapper<T> mapper;
    private final FieldODEStateAndDerivative<T> softCurrentState;
    private final FieldODEStateAndDerivative<T> softPreviousState;

    public AbstractFieldStepInterpolator(boolean z10, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        this.forward = z10;
        this.globalPreviousState = fieldODEStateAndDerivative;
        this.globalCurrentState = fieldODEStateAndDerivative2;
        this.softPreviousState = fieldODEStateAndDerivative3;
        this.softCurrentState = fieldODEStateAndDerivative4;
        this.mapper = fieldEquationsMapper;
    }

    public abstract FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t10, T t11, T t12, T t13) throws MaxCountExceededException;

    public abstract AbstractFieldStepInterpolator<T> create(boolean z10, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper);

    @Override
    public FieldODEStateAndDerivative<T> getCurrentState() {
        return this.softCurrentState;
    }

    public FieldODEStateAndDerivative<T> getGlobalCurrentState() {
        return this.globalCurrentState;
    }

    public FieldODEStateAndDerivative<T> getGlobalPreviousState() {
        return this.globalPreviousState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldODEStateAndDerivative<T> getInterpolatedState(T t10) {
        RealFieldElement realFieldElement = (RealFieldElement) t10.subtract(this.globalPreviousState.getTime());
        RealFieldElement realFieldElement2 = (RealFieldElement) this.globalCurrentState.getTime().subtract(t10);
        return computeInterpolatedStateAndDerivatives(this.mapper, t10, (RealFieldElement) realFieldElement.divide((RealFieldElement) this.globalCurrentState.getTime().subtract(this.globalPreviousState.getTime())), realFieldElement, realFieldElement2);
    }

    @Override
    public FieldODEStateAndDerivative<T> getPreviousState() {
        return this.softPreviousState;
    }

    @Override
    public boolean isForward() {
        return this.forward;
    }

    public AbstractFieldStepInterpolator<T> restrictStep(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2) {
        return create(this.forward, this.globalPreviousState, this.globalCurrentState, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, this.mapper);
    }
}
