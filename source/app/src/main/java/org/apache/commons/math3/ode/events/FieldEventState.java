package org.apache.commons.math3.ode.events;

import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.analysis.RealFieldUnivariateFunction;
import org.apache.commons.math3.analysis.solvers.AllowedSolution;
import org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.ode.sampling.FieldStepInterpolator;
import org.apache.commons.math3.util.FastMath;

public class FieldEventState<T extends RealFieldElement<T>> {
    private final T convergence;
    private boolean forward;
    private final FieldEventHandler<T> handler;
    private final double maxCheckInterval;
    private final int maxIterationCount;
    private final BracketedRealFieldUnivariateSolver<T> solver;

    private T f100232t0 = null;

    private T f100231g0 = null;
    private boolean g0Positive = true;
    private boolean pendingEvent = false;
    private T pendingEventTime = null;
    private T previousEventTime = null;
    private boolean increasing = true;
    private Action nextAction = Action.CONTINUE;

    public FieldEventState(FieldEventHandler<T> fieldEventHandler, double d10, T t10, int i10, BracketedRealFieldUnivariateSolver<T> bracketedRealFieldUnivariateSolver) {
        this.handler = fieldEventHandler;
        this.maxCheckInterval = d10;
        this.convergence = (T) t10.abs();
        this.maxIterationCount = i10;
        this.solver = bracketedRealFieldUnivariateSolver;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v23, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r11v26, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r9v5, types: [org.apache.commons.math3.RealFieldElement] */
    public boolean evaluateStep(final FieldStepInterpolator<T> fieldStepInterpolator) throws MaxCountExceededException, NoBracketingException {
        T t10;
        T t11;
        int i10;
        T t12;
        BracketedRealFieldUnivariateSolver<T> bracketedRealFieldUnivariateSolver;
        int i11;
        AllowedSolution allowedSolution;
        RealFieldUnivariateFunction realFieldUnivariateFunction;
        T t13;
        T t14;
        T t15;
        ?? value;
        T t16;
        this.forward = fieldStepInterpolator.isForward();
        T time = fieldStepInterpolator.getCurrentState().getTime();
        RealFieldElement realFieldElement = (RealFieldElement) time.subtract(this.f100232t0);
        if (((RealFieldElement) ((RealFieldElement) realFieldElement.abs()).subtract(this.convergence)).getReal() < 0.0d) {
            return false;
        }
        int max = FastMath.max(1, (int) FastMath.ceil(FastMath.abs(realFieldElement.getReal()) / this.maxCheckInterval));
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.divide(max);
        RealFieldUnivariateFunction realFieldUnivariateFunction2 = new RealFieldUnivariateFunction<T>() {
            @Override
            public T value(T t17) {
                return (T) FieldEventState.this.handler.g(fieldStepInterpolator.getInterpolatedState(t17));
            }
        };
        T t17 = this.f100232t0;
        T t18 = this.f100231g0;
        int i12 = 0;
        T t19 = t17;
        while (i12 < max) {
            T t20 = i12 == max + (-1) ? time : (RealFieldElement) this.f100232t0.add(realFieldElement2.multiply(i12 + 1));
            T g10 = this.handler.g(fieldStepInterpolator.getInterpolatedState(t20));
            if (this.g0Positive ^ (g10.getReal() >= 0.0d)) {
                this.increasing = ((RealFieldElement) g10.subtract(t18)).getReal() >= 0.0d;
                if (this.forward) {
                    bracketedRealFieldUnivariateSolver = this.solver;
                    i11 = this.maxIterationCount;
                    t10 = g10;
                    realFieldUnivariateFunction = realFieldUnivariateFunction2;
                    t11 = t20;
                    t20 = t19;
                    i10 = i12;
                    t13 = t11;
                    t12 = t19;
                    allowedSolution = AllowedSolution.RIGHT_SIDE;
                } else {
                    t10 = g10;
                    t11 = t20;
                    i10 = i12;
                    t12 = t19;
                    bracketedRealFieldUnivariateSolver = this.solver;
                    i11 = this.maxIterationCount;
                    allowedSolution = AllowedSolution.LEFT_SIDE;
                    realFieldUnivariateFunction = realFieldUnivariateFunction2;
                    t13 = t12;
                }
                T solve = bracketedRealFieldUnivariateSolver.solve(i11, realFieldUnivariateFunction, t20, t13, allowedSolution);
                if (this.previousEventTime != null) {
                    T t21 = t12;
                    if (((RealFieldElement) ((RealFieldElement) ((RealFieldElement) solve.subtract(t21)).abs()).subtract(this.convergence)).getReal() <= 0.0d && ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) solve.subtract(this.previousEventTime)).abs()).subtract(this.convergence)).getReal() <= 0.0d) {
                        T t22 = t21;
                        while (true) {
                            t22 = (RealFieldElement) (this.forward ? t22.add(this.convergence) : t22.subtract(this.convergence));
                            value = realFieldUnivariateFunction2.value(t22);
                            if (!(this.g0Positive ^ (value.getReal() >= 0.0d))) {
                                t16 = t11;
                                break;
                            }
                            t16 = t11;
                            if (!(this.forward ^ (((RealFieldElement) t22.subtract(t16)).getReal() >= 0.0d))) {
                                break;
                            }
                            t11 = t16;
                        }
                        if (!(this.forward ^ (((RealFieldElement) t22.subtract(t16)).getReal() >= 0.0d))) {
                            this.pendingEventTime = solve;
                            this.pendingEvent = true;
                            return true;
                        }
                        i12 = i10 - 1;
                        t14 = t22;
                        t15 = value;
                        t18 = t15;
                        t19 = t14;
                    }
                }
                t14 = t11;
                T t23 = this.previousEventTime;
                if (t23 == null || ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t23.subtract(solve)).abs()).subtract(this.convergence)).getReal() > 0.0d) {
                    this.pendingEventTime = solve;
                    this.pendingEvent = true;
                    return true;
                }
                t15 = t10;
                i12 = i10;
                t18 = t15;
                t19 = t14;
            } else {
                t19 = t20;
                t18 = g10;
            }
            i12++;
        }
        this.pendingEvent = false;
        this.pendingEventTime = null;
        return false;
    }

    public T getConvergence() {
        return this.convergence;
    }

    public FieldEventHandler<T> getEventHandler() {
        return this.handler;
    }

    public T getEventTime() {
        if (this.pendingEvent) {
            return this.pendingEventTime;
        }
        return (T) ((RealFieldElement) this.f100232t0.getField().getZero()).add(this.forward ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY);
    }

    public double getMaxCheckInterval() {
        return this.maxCheckInterval;
    }

    public int getMaxIterationCount() {
        return this.maxIterationCount;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void reinitializeBegin(FieldStepInterpolator<T> fieldStepInterpolator) throws MaxCountExceededException {
        FieldODEStateAndDerivative<T> previousState = fieldStepInterpolator.getPreviousState();
        this.f100232t0 = previousState.getTime();
        T g10 = this.handler.g(previousState);
        this.f100231g0 = g10;
        if (g10.getReal() == 0.0d) {
            this.f100231g0 = this.handler.g(fieldStepInterpolator.getInterpolatedState((RealFieldElement) this.f100232t0.add(FastMath.max(this.solver.getAbsoluteAccuracy().getReal(), FastMath.abs(((RealFieldElement) this.solver.getRelativeAccuracy().multiply(this.f100232t0)).getReal())) * 0.5d)));
        }
        this.g0Positive = this.f100231g0.getReal() >= 0.0d;
    }

    public FieldODEState<T> reset(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative) {
        if (!this.pendingEvent || ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.pendingEventTime.subtract(fieldODEStateAndDerivative.getTime())).abs()).subtract(this.convergence)).getReal() > 0.0d) {
            return null;
        }
        Action action = this.nextAction;
        if (action == Action.RESET_STATE) {
            fieldODEStateAndDerivative = this.handler.resetState(fieldODEStateAndDerivative);
        } else if (action != Action.RESET_DERIVATIVES) {
            fieldODEStateAndDerivative = null;
        }
        this.pendingEvent = false;
        this.pendingEventTime = null;
        return fieldODEStateAndDerivative;
    }

    public void stepAccepted(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative) {
        this.f100232t0 = fieldODEStateAndDerivative.getTime();
        this.f100231g0 = this.handler.g(fieldODEStateAndDerivative);
        if (!this.pendingEvent || ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.pendingEventTime.subtract(fieldODEStateAndDerivative.getTime())).abs()).subtract(this.convergence)).getReal() > 0.0d) {
            this.g0Positive = this.f100231g0.getReal() >= 0.0d;
            this.nextAction = Action.CONTINUE;
        } else {
            this.previousEventTime = fieldODEStateAndDerivative.getTime();
            this.g0Positive = this.increasing;
            this.nextAction = this.handler.eventOccurred(fieldODEStateAndDerivative, !(r0 ^ this.forward));
        }
    }

    public boolean stop() {
        return this.nextAction == Action.STOP;
    }
}
