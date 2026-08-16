package org.apache.commons.math3.ode.events;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.solvers.AllowedSolution;
import org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver;
import org.apache.commons.math3.analysis.solvers.PegasusSolver;
import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.analysis.solvers.UnivariateSolverUtils;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.events.EventHandler;
import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

public class EventState {
    private final double convergence;
    private boolean forward;
    private final EventHandler handler;
    private final double maxCheckInterval;
    private final int maxIterationCount;
    private final UnivariateSolver solver;
    private ExpandableStatefulODE expandable = null;

    private double f100230t0 = Double.NaN;

    private double f100229g0 = Double.NaN;
    private boolean g0Positive = true;
    private boolean pendingEvent = false;
    private double pendingEventTime = Double.NaN;
    private double previousEventTime = Double.NaN;
    private boolean increasing = true;
    private EventHandler.Action nextAction = EventHandler.Action.CONTINUE;

    public static class LocalMaxCountExceededException extends RuntimeException {
        private static final long serialVersionUID = 20120901;
        private final MaxCountExceededException wrapped;

        public LocalMaxCountExceededException(MaxCountExceededException maxCountExceededException) {
            this.wrapped = maxCountExceededException;
        }

        public MaxCountExceededException getException() {
            return this.wrapped;
        }
    }

    public EventState(EventHandler eventHandler, double d10, double d11, int i10, UnivariateSolver univariateSolver) {
        this.handler = eventHandler;
        this.maxCheckInterval = d10;
        this.convergence = FastMath.abs(d11);
        this.maxIterationCount = i10;
        this.solver = univariateSolver;
    }

    public double[] getCompleteState(StepInterpolator stepInterpolator) {
        double[] dArr = new double[this.expandable.getTotalDimension()];
        this.expandable.getPrimaryMapper().insertEquationData(stepInterpolator.getInterpolatedState(), dArr);
        EquationsMapper[] secondaryMappers = this.expandable.getSecondaryMappers();
        int length = secondaryMappers.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            secondaryMappers[i10].insertEquationData(stepInterpolator.getInterpolatedSecondaryState(i11), dArr);
            i10++;
            i11++;
        }
        return dArr;
    }

    public boolean evaluateStep(final StepInterpolator stepInterpolator) throws MaxCountExceededException, NoBracketingException {
        double d10;
        UnivariateFunction univariateFunction;
        UnivariateFunction univariateFunction2;
        int i10;
        double forceSide;
        double d11;
        try {
            this.forward = stepInterpolator.isForward();
            double currentTime = stepInterpolator.getCurrentTime();
            double d12 = currentTime - this.f100230t0;
            boolean z10 = false;
            if (FastMath.abs(d12) < this.convergence) {
                return false;
            }
            int max = FastMath.max(1, (int) FastMath.ceil(FastMath.abs(d12) / this.maxCheckInterval));
            double d13 = d12 / max;
            UnivariateFunction univariateFunction3 = new UnivariateFunction() {
                @Override
                public double value(double d14) throws LocalMaxCountExceededException {
                    try {
                        stepInterpolator.setInterpolatedTime(d14);
                        return EventState.this.handler.g(d14, EventState.this.getCompleteState(stepInterpolator));
                    } catch (MaxCountExceededException e10) {
                        throw new LocalMaxCountExceededException(e10);
                    }
                }
            };
            double d14 = this.f100230t0;
            double d15 = this.f100229g0;
            int i11 = 0;
            double d16 = d14;
            while (i11 < max) {
                double d17 = i11 == max + (-1) ? currentTime : this.f100230t0 + ((i11 + 1) * d13);
                stepInterpolator.setInterpolatedTime(d17);
                double g10 = this.handler.g(d17, getCompleteState(stepInterpolator));
                if (this.g0Positive ^ (g10 >= 0.0d)) {
                    this.increasing = g10 >= d15;
                    UnivariateSolver univariateSolver = this.solver;
                    if (univariateSolver instanceof BracketedUnivariateSolver) {
                        BracketedUnivariateSolver bracketedUnivariateSolver = (BracketedUnivariateSolver) univariateSolver;
                        if (this.forward) {
                            univariateFunction2 = univariateFunction3;
                            i10 = i11;
                            forceSide = bracketedUnivariateSolver.solve(this.maxIterationCount, (int) univariateFunction3, d16, d17, AllowedSolution.RIGHT_SIDE);
                        } else {
                            univariateFunction2 = univariateFunction3;
                            i10 = i11;
                            forceSide = bracketedUnivariateSolver.solve(this.maxIterationCount, (int) univariateFunction2, d17, d16, AllowedSolution.LEFT_SIDE);
                        }
                        d10 = currentTime;
                    } else {
                        univariateFunction2 = univariateFunction3;
                        i10 = i11;
                        double solve = this.forward ? univariateSolver.solve(this.maxIterationCount, univariateFunction2, d16, d17) : univariateSolver.solve(this.maxIterationCount, univariateFunction2, d17, d16);
                        int evaluations = this.maxIterationCount - this.solver.getEvaluations();
                        d10 = currentTime;
                        PegasusSolver pegasusSolver = new PegasusSolver(this.solver.getRelativeAccuracy(), this.solver.getAbsoluteAccuracy());
                        forceSide = this.forward ? UnivariateSolverUtils.forceSide(evaluations, univariateFunction2, pegasusSolver, solve, d16, d17, AllowedSolution.RIGHT_SIDE) : UnivariateSolverUtils.forceSide(evaluations, univariateFunction2, pegasusSolver, solve, d17, d16, AllowedSolution.LEFT_SIDE);
                    }
                    if (Double.isNaN(this.previousEventTime) || FastMath.abs(forceSide - d16) > this.convergence || FastMath.abs(forceSide - this.previousEventTime) > this.convergence) {
                        univariateFunction = univariateFunction2;
                        if (!Double.isNaN(this.previousEventTime) && FastMath.abs(this.previousEventTime - forceSide) <= this.convergence) {
                            i11 = i10;
                        }
                        this.pendingEventTime = forceSide;
                        this.pendingEvent = true;
                        return true;
                    }
                    while (true) {
                        d11 = this.forward ? d16 + this.convergence : d16 - this.convergence;
                        univariateFunction = univariateFunction2;
                        g10 = univariateFunction.value(d11);
                        if (!(this.g0Positive ^ (g10 >= 0.0d))) {
                            break;
                        }
                        if (!(this.forward ^ (d11 >= d17))) {
                            break;
                        }
                        d16 = d11;
                        univariateFunction2 = univariateFunction;
                    }
                    if (!((d11 >= d17) ^ this.forward)) {
                        this.pendingEventTime = forceSide;
                        this.pendingEvent = true;
                        return true;
                    }
                    i11 = i10 - 1;
                    d17 = d11;
                } else {
                    d10 = currentTime;
                    univariateFunction = univariateFunction3;
                }
                d16 = d17;
                i11++;
                univariateFunction3 = univariateFunction;
                d15 = g10;
                currentTime = d10;
                z10 = false;
            }
            boolean z11 = z10;
            this.pendingEvent = z11;
            this.pendingEventTime = Double.NaN;
            return z11;
        } catch (LocalMaxCountExceededException e10) {
            throw e10.getException();
        }
    }

    public double getConvergence() {
        return this.convergence;
    }

    public EventHandler getEventHandler() {
        return this.handler;
    }

    public double getEventTime() {
        return this.pendingEvent ? this.pendingEventTime : this.forward ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
    }

    public double getMaxCheckInterval() {
        return this.maxCheckInterval;
    }

    public int getMaxIterationCount() {
        return this.maxIterationCount;
    }

    public void reinitializeBegin(StepInterpolator stepInterpolator) throws MaxCountExceededException {
        double previousTime = stepInterpolator.getPreviousTime();
        this.f100230t0 = previousTime;
        stepInterpolator.setInterpolatedTime(previousTime);
        double g10 = this.handler.g(this.f100230t0, getCompleteState(stepInterpolator));
        this.f100229g0 = g10;
        if (g10 == 0.0d) {
            double max = this.f100230t0 + (FastMath.max(this.solver.getAbsoluteAccuracy(), FastMath.abs(this.solver.getRelativeAccuracy() * this.f100230t0)) * 0.5d);
            stepInterpolator.setInterpolatedTime(max);
            this.f100229g0 = this.handler.g(max, getCompleteState(stepInterpolator));
        }
        this.g0Positive = this.f100229g0 >= 0.0d;
    }

    public boolean reset(double d10, double[] dArr) {
        if (!this.pendingEvent || FastMath.abs(this.pendingEventTime - d10) > this.convergence) {
            return false;
        }
        EventHandler.Action action = this.nextAction;
        EventHandler.Action action2 = EventHandler.Action.RESET_STATE;
        if (action == action2) {
            this.handler.resetState(d10, dArr);
        }
        this.pendingEvent = false;
        this.pendingEventTime = Double.NaN;
        EventHandler.Action action3 = this.nextAction;
        return action3 == action2 || action3 == EventHandler.Action.RESET_DERIVATIVES;
    }

    public void setExpandable(ExpandableStatefulODE expandableStatefulODE) {
        this.expandable = expandableStatefulODE;
    }

    public void stepAccepted(double d10, double[] dArr) {
        this.f100230t0 = d10;
        this.f100229g0 = this.handler.g(d10, dArr);
        if (!this.pendingEvent || FastMath.abs(this.pendingEventTime - d10) > this.convergence) {
            this.g0Positive = this.f100229g0 >= 0.0d;
            this.nextAction = EventHandler.Action.CONTINUE;
        } else {
            this.previousEventTime = d10;
            this.g0Positive = this.increasing;
            this.nextAction = this.handler.eventOccurred(d10, dArr, !(r0 ^ this.forward));
        }
    }

    public boolean stop() {
        return this.nextAction == EventHandler.Action.STOP;
    }
}
