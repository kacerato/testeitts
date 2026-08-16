package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.TreeSet;
import org.apache.commons.math3.analysis.solvers.BracketingNthOrderBrentSolver;
import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.events.EventHandler;
import org.apache.commons.math3.ode.events.EventState;
import org.apache.commons.math3.ode.sampling.AbstractStepInterpolator;
import org.apache.commons.math3.ode.sampling.StepHandler;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.IntegerSequence;
import org.apache.commons.math3.util.Precision;

public abstract class AbstractIntegrator implements FirstOrderIntegrator {
    private IntegerSequence.Incrementor evaluations;
    private Collection<EventState> eventsStates;
    private transient ExpandableStatefulODE expandable;
    protected boolean isLastStep;
    private final String name;
    protected boolean resetOccurred;
    private boolean statesInitialized;
    protected Collection<StepHandler> stepHandlers;
    protected double stepSize;
    protected double stepStart;

    public AbstractIntegrator(String str) {
        this.name = str;
        this.stepHandlers = new ArrayList();
        this.stepStart = Double.NaN;
        this.stepSize = Double.NaN;
        this.eventsStates = new ArrayList();
        this.statesInitialized = false;
        this.evaluations = IntegerSequence.Incrementor.create().withMaximalCount(Integer.MAX_VALUE);
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x018e A[LOOP:8: B:88:0x0188->B:90:0x018e, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public double acceptStep(AbstractStepInterpolator abstractStepInterpolator, double[] dArr, double[] dArr2, double d10) throws MaxCountExceededException, DimensionMismatchException, NoBracketingException {
        boolean z10;
        boolean z11;
        Iterator<StepHandler> it;
        double globalPreviousTime = abstractStepInterpolator.getGlobalPreviousTime();
        double globalCurrentTime = abstractStepInterpolator.getGlobalCurrentTime();
        if (!this.statesInitialized) {
            Iterator<EventState> it2 = this.eventsStates.iterator();
            while (it2.hasNext()) {
                it2.next().reinitializeBegin(abstractStepInterpolator);
            }
            this.statesInitialized = true;
        }
        final int i10 = abstractStepInterpolator.isForward() ? 1 : -1;
        TreeSet treeSet = new TreeSet(new Comparator<EventState>() {
            @Override
            public int compare(EventState eventState, EventState eventState2) {
                return i10 * Double.compare(eventState.getEventTime(), eventState2.getEventTime());
            }
        });
        for (EventState eventState : this.eventsStates) {
            if (eventState.evaluateStep(abstractStepInterpolator)) {
                treeSet.add(eventState);
            }
        }
        while (!treeSet.isEmpty()) {
            Iterator<E> it3 = treeSet.iterator();
            EventState eventState2 = (EventState) it3.next();
            it3.remove();
            double eventTime = eventState2.getEventTime();
            abstractStepInterpolator.setSoftPreviousTime(globalPreviousTime);
            abstractStepInterpolator.setSoftCurrentTime(eventTime);
            abstractStepInterpolator.setInterpolatedTime(eventTime);
            double[] dArr3 = new double[dArr.length];
            this.expandable.getPrimaryMapper().insertEquationData(abstractStepInterpolator.getInterpolatedState(), dArr3);
            EquationsMapper[] secondaryMappers = this.expandable.getSecondaryMappers();
            int length = secondaryMappers.length;
            int i11 = 0;
            int i12 = 0;
            while (i11 < length) {
                secondaryMappers[i11].insertEquationData(abstractStepInterpolator.getInterpolatedSecondaryState(i12), dArr3);
                i11++;
                i12++;
            }
            for (EventState eventState3 : this.eventsStates) {
                eventState3.stepAccepted(eventTime, dArr3);
                this.isLastStep = this.isLastStep || eventState3.stop();
            }
            Iterator<StepHandler> it4 = this.stepHandlers.iterator();
            while (it4.hasNext()) {
                it4.next().handleStep(abstractStepInterpolator, this.isLastStep);
            }
            if (this.isLastStep) {
                System.arraycopy(dArr3, 0, dArr, 0, dArr.length);
                return eventTime;
            }
            this.resetOccurred = false;
            if (eventState2.reset(eventTime, dArr3)) {
                abstractStepInterpolator.setInterpolatedTime(eventTime);
                System.arraycopy(dArr3, 0, dArr, 0, dArr.length);
                computeDerivatives(eventTime, dArr, dArr2);
                this.resetOccurred = true;
                return eventTime;
            }
            abstractStepInterpolator.setSoftPreviousTime(eventTime);
            abstractStepInterpolator.setSoftCurrentTime(globalCurrentTime);
            if (eventState2.evaluateStep(abstractStepInterpolator)) {
                treeSet.add(eventState2);
            }
            globalPreviousTime = eventTime;
        }
        abstractStepInterpolator.setInterpolatedTime(globalCurrentTime);
        double[] dArr4 = new double[dArr.length];
        this.expandable.getPrimaryMapper().insertEquationData(abstractStepInterpolator.getInterpolatedState(), dArr4);
        EquationsMapper[] secondaryMappers2 = this.expandable.getSecondaryMappers();
        int length2 = secondaryMappers2.length;
        int i13 = 0;
        int i14 = 0;
        while (i13 < length2) {
            secondaryMappers2[i13].insertEquationData(abstractStepInterpolator.getInterpolatedSecondaryState(i14), dArr4);
            i13++;
            i14++;
        }
        for (EventState eventState4 : this.eventsStates) {
            eventState4.stepAccepted(globalCurrentTime, dArr4);
            this.isLastStep = this.isLastStep || eventState4.stop();
        }
        if (this.isLastStep) {
            z10 = true;
        } else {
            z10 = true;
            if (!Precision.equals(globalCurrentTime, d10, 1)) {
                z11 = false;
                this.isLastStep = z11;
                it = this.stepHandlers.iterator();
                while (it.hasNext()) {
                    it.next().handleStep(abstractStepInterpolator, this.isLastStep);
                }
                return globalCurrentTime;
            }
        }
        z11 = z10;
        this.isLastStep = z11;
        it = this.stepHandlers.iterator();
        while (it.hasNext()) {
        }
        return globalCurrentTime;
    }

    @Override
    public void addEventHandler(EventHandler eventHandler, double d10, double d11, int i10) {
        addEventHandler(eventHandler, d10, d11, i10, new BracketingNthOrderBrentSolver(d11, 5));
    }

    @Override
    public void addStepHandler(StepHandler stepHandler) {
        this.stepHandlers.add(stepHandler);
    }

    @Override
    public void clearEventHandlers() {
        this.eventsStates.clear();
    }

    @Override
    public void clearStepHandlers() {
        this.stepHandlers.clear();
    }

    public void computeDerivatives(double d10, double[] dArr, double[] dArr2) throws MaxCountExceededException, DimensionMismatchException, NullPointerException {
        this.evaluations.increment();
        this.expandable.computeDerivatives(d10, dArr, dArr2);
    }

    public IntegerSequence.Incrementor getCounter() {
        return this.evaluations;
    }

    @Override
    public double getCurrentSignedStepsize() {
        return this.stepSize;
    }

    @Override
    public double getCurrentStepStart() {
        return this.stepStart;
    }

    @Override
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    @Deprecated
    public Incrementor getEvaluationsCounter() {
        return Incrementor.wrap(this.evaluations);
    }

    @Override
    public Collection<EventHandler> getEventHandlers() {
        ArrayList arrayList = new ArrayList(this.eventsStates.size());
        Iterator<EventState> it = this.eventsStates.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getEventHandler());
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    public ExpandableStatefulODE getExpandable() {
        return this.expandable;
    }

    @Override
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public Collection<StepHandler> getStepHandlers() {
        return Collections.unmodifiableCollection(this.stepHandlers);
    }

    public void initIntegration(double d10, double[] dArr, double d11) {
        this.evaluations = this.evaluations.withStart(0);
        for (EventState eventState : this.eventsStates) {
            eventState.setExpandable(this.expandable);
            eventState.getEventHandler().init(d10, dArr, d11);
        }
        Iterator<StepHandler> it = this.stepHandlers.iterator();
        while (it.hasNext()) {
            it.next().init(d10, dArr, d11);
        }
        setStateInitialized(false);
    }

    @Override
    public double integrate(FirstOrderDifferentialEquations firstOrderDifferentialEquations, double d10, double[] dArr, double d11, double[] dArr2) throws DimensionMismatchException, NumberIsTooSmallException, MaxCountExceededException, NoBracketingException {
        if (dArr.length == firstOrderDifferentialEquations.getDimension()) {
            if (dArr2.length == firstOrderDifferentialEquations.getDimension()) {
                ExpandableStatefulODE expandableStatefulODE = new ExpandableStatefulODE(firstOrderDifferentialEquations);
                expandableStatefulODE.setTime(d10);
                expandableStatefulODE.setPrimaryState(dArr);
                integrate(expandableStatefulODE, d11);
                System.arraycopy(expandableStatefulODE.getPrimaryState(), 0, dArr2, 0, dArr2.length);
                return expandableStatefulODE.getTime();
            }
            throw new DimensionMismatchException(dArr2.length, firstOrderDifferentialEquations.getDimension());
        }
        throw new DimensionMismatchException(dArr.length, firstOrderDifferentialEquations.getDimension());
    }

    public abstract void integrate(ExpandableStatefulODE expandableStatefulODE, double d10) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException;

    public void sanityChecks(ExpandableStatefulODE expandableStatefulODE, double d10) throws NumberIsTooSmallException, DimensionMismatchException {
        double ulp = FastMath.ulp(FastMath.max(FastMath.abs(expandableStatefulODE.getTime()), FastMath.abs(d10))) * 1000.0d;
        double abs = FastMath.abs(expandableStatefulODE.getTime() - d10);
        if (abs <= ulp) {
            throw new NumberIsTooSmallException(LocalizedFormats.TOO_SMALL_INTEGRATION_INTERVAL, Double.valueOf(abs), Double.valueOf(ulp), false);
        }
    }

    public void setEquations(ExpandableStatefulODE expandableStatefulODE) {
        this.expandable = expandableStatefulODE;
    }

    @Override
    public void setMaxEvaluations(int i10) {
        IntegerSequence.Incrementor incrementor = this.evaluations;
        if (i10 < 0) {
            i10 = Integer.MAX_VALUE;
        }
        this.evaluations = incrementor.withMaximalCount(i10);
    }

    public void setStateInitialized(boolean z10) {
        this.statesInitialized = z10;
    }

    @Override
    public void addEventHandler(EventHandler eventHandler, double d10, double d11, int i10, UnivariateSolver univariateSolver) {
        this.eventsStates.add(new EventState(eventHandler, d10, d11, i10, univariateSolver));
    }

    public AbstractIntegrator() {
        this(null);
    }
}
