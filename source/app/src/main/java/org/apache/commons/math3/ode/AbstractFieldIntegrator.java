package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.TreeSet;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver;
import org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.events.FieldEventHandler;
import org.apache.commons.math3.ode.events.FieldEventState;
import org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator;
import org.apache.commons.math3.ode.sampling.FieldStepHandler;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.IntegerSequence;

public abstract class AbstractFieldIntegrator<T extends RealFieldElement<T>> implements FirstOrderFieldIntegrator<T> {
    private static final double DEFAULT_FUNCTION_VALUE_ACCURACY = 1.0E-15d;
    private static final double DEFAULT_RELATIVE_ACCURACY = 1.0E-14d;
    private transient FieldExpandableODE<T> equations;
    private final Field<T> field;
    private boolean isLastStep;
    private final String name;
    private boolean resetOccurred;
    private Collection<FieldStepHandler<T>> stepHandlers = new ArrayList();
    private FieldODEStateAndDerivative<T> stepStart = null;
    private T stepSize = null;
    private Collection<FieldEventState<T>> eventsStates = new ArrayList();
    private boolean statesInitialized = false;
    private IntegerSequence.Incrementor evaluations = IntegerSequence.Incrementor.create().withMaximalCount(Integer.MAX_VALUE);

    public AbstractFieldIntegrator(Field<T> field, String str) {
        this.field = field;
        this.name = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [org.apache.commons.math3.ode.FieldEquationsMapper] */
    /* JADX WARN: Type inference failed for: r0v7, types: [org.apache.commons.math3.ode.sampling.FieldStepHandler] */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.apache.commons.math3.ode.AbstractFieldIntegrator<T extends org.apache.commons.math3.RealFieldElement<T>>, org.apache.commons.math3.ode.AbstractFieldIntegrator] */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator<T extends org.apache.commons.math3.RealFieldElement<T>>, org.apache.commons.math3.ode.sampling.FieldStepInterpolator, org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator] */
    /* JADX WARN: Type inference failed for: r11v1, types: [org.apache.commons.math3.ode.sampling.FieldStepInterpolator, org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator] */
    /* JADX WARN: Type inference failed for: r11v3, types: [org.apache.commons.math3.ode.sampling.FieldStepInterpolator, org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator] */
    /* JADX WARN: Type inference failed for: r6v2, types: [org.apache.commons.math3.ode.events.FieldEventState, java.lang.Object] */
    public FieldODEStateAndDerivative<T> acceptStep(AbstractFieldStepInterpolator<T> abstractFieldStepInterpolator, T t10) throws MaxCountExceededException, DimensionMismatchException, NoBracketingException {
        FieldODEStateAndDerivative<T> globalPreviousState = abstractFieldStepInterpolator.getGlobalPreviousState();
        FieldODEStateAndDerivative<T> globalCurrentState = abstractFieldStepInterpolator.getGlobalCurrentState();
        boolean z10 = true;
        if (!this.statesInitialized) {
            Iterator<FieldEventState<T>> it = this.eventsStates.iterator();
            while (it.hasNext()) {
                it.next().reinitializeBegin(abstractFieldStepInterpolator);
            }
            this.statesInitialized = true;
        }
        final int i10 = abstractFieldStepInterpolator.isForward() ? 1 : -1;
        TreeSet treeSet = new TreeSet(new Comparator<FieldEventState<T>>() {
            @Override
            public int compare(FieldEventState<T> fieldEventState, FieldEventState<T> fieldEventState2) {
                return i10 * Double.compare(fieldEventState.getEventTime().getReal(), fieldEventState2.getEventTime().getReal());
            }
        });
        for (FieldEventState<T> fieldEventState : this.eventsStates) {
            if (fieldEventState.evaluateStep(abstractFieldStepInterpolator)) {
                treeSet.add(fieldEventState);
            }
        }
        while (!treeSet.isEmpty()) {
            Iterator it2 = treeSet.iterator();
            ?? r62 = (FieldEventState) it2.next();
            it2.remove();
            FieldODEStateAndDerivative<T> interpolatedState = abstractFieldStepInterpolator.getInterpolatedState(r62.getEventTime());
            AbstractFieldStepInterpolator restrictStep = abstractFieldStepInterpolator.restrictStep(globalPreviousState, interpolatedState);
            for (FieldEventState<T> fieldEventState2 : this.eventsStates) {
                fieldEventState2.stepAccepted(interpolatedState);
                this.isLastStep = this.isLastStep || fieldEventState2.stop();
            }
            Iterator<FieldStepHandler<T>> it3 = this.stepHandlers.iterator();
            while (it3.hasNext()) {
                it3.next().handleStep(restrictStep, this.isLastStep);
            }
            if (this.isLastStep) {
                return interpolatedState;
            }
            this.resetOccurred = false;
            Iterator<FieldEventState<T>> it4 = this.eventsStates.iterator();
            while (it4.hasNext()) {
                FieldODEState<T> reset = it4.next().reset(interpolatedState);
                if (reset != null) {
                    T[] mapState = this.equations.getMapper().mapState(reset);
                    RealFieldElement[] computeDerivatives = computeDerivatives(reset.getTime(), mapState);
                    this.resetOccurred = true;
                    return this.equations.getMapper().mapStateAndDerivative(reset.getTime(), mapState, computeDerivatives);
                }
            }
            abstractFieldStepInterpolator = restrictStep.restrictStep(interpolatedState, globalCurrentState);
            if (r62.evaluateStep(abstractFieldStepInterpolator)) {
                treeSet.add(r62);
            }
            globalPreviousState = interpolatedState;
        }
        for (FieldEventState<T> fieldEventState3 : this.eventsStates) {
            fieldEventState3.stepAccepted(globalCurrentState);
            this.isLastStep = this.isLastStep || fieldEventState3.stop();
        }
        if (!this.isLastStep && ((RealFieldElement) ((RealFieldElement) globalCurrentState.getTime().subtract(t10)).abs()).getReal() > FastMath.ulp(t10.getReal())) {
            z10 = false;
        }
        this.isLastStep = z10;
        Iterator<FieldStepHandler<T>> it5 = this.stepHandlers.iterator();
        while (it5.hasNext()) {
            it5.next().handleStep(abstractFieldStepInterpolator, this.isLastStep);
        }
        return globalCurrentState;
    }

    @Override
    public void addEventHandler(FieldEventHandler<T> fieldEventHandler, double d10, double d11, int i10) {
        addEventHandler(fieldEventHandler, d10, d11, i10, new FieldBracketingNthOrderBrentSolver((RealFieldElement) this.field.getZero().add(DEFAULT_RELATIVE_ACCURACY), (RealFieldElement) this.field.getZero().add(d11), (RealFieldElement) this.field.getZero().add(1.0E-15d), 5));
    }

    @Override
    public void addStepHandler(FieldStepHandler<T> fieldStepHandler) {
        this.stepHandlers.add(fieldStepHandler);
    }

    @Override
    public void clearEventHandlers() {
        this.eventsStates.clear();
    }

    @Override
    public void clearStepHandlers() {
        this.stepHandlers.clear();
    }

    public T[] computeDerivatives(T t10, T[] tArr) throws DimensionMismatchException, MaxCountExceededException, NullPointerException {
        this.evaluations.increment();
        return this.equations.computeDerivatives(t10, tArr);
    }

    @Override
    public T getCurrentSignedStepsize() {
        return this.stepSize;
    }

    @Override
    public FieldODEStateAndDerivative<T> getCurrentStepStart() {
        return this.stepStart;
    }

    public FieldExpandableODE<T> getEquations() {
        return this.equations;
    }

    @Override
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    public IntegerSequence.Incrementor getEvaluationsCounter() {
        return this.evaluations;
    }

    @Override
    public Collection<FieldEventHandler<T>> getEventHandlers() {
        ArrayList arrayList = new ArrayList(this.eventsStates.size());
        Iterator<FieldEventState<T>> it = this.eventsStates.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getEventHandler());
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    public Field<T> getField() {
        return this.field;
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
    public Collection<FieldStepHandler<T>> getStepHandlers() {
        return Collections.unmodifiableCollection(this.stepHandlers);
    }

    public T getStepSize() {
        return this.stepSize;
    }

    public FieldODEStateAndDerivative<T> getStepStart() {
        return this.stepStart;
    }

    public FieldODEStateAndDerivative<T> initIntegration(FieldExpandableODE<T> fieldExpandableODE, T t10, T[] tArr, T t11) {
        this.equations = fieldExpandableODE;
        this.evaluations = this.evaluations.withStart(0);
        fieldExpandableODE.init(t10, tArr, t11);
        FieldODEStateAndDerivative<T> fieldODEStateAndDerivative = new FieldODEStateAndDerivative<>(t10, tArr, computeDerivatives(t10, tArr));
        Iterator<FieldEventState<T>> it = this.eventsStates.iterator();
        while (it.hasNext()) {
            it.next().getEventHandler().init(fieldODEStateAndDerivative, t11);
        }
        Iterator<FieldStepHandler<T>> it2 = this.stepHandlers.iterator();
        while (it2.hasNext()) {
            it2.next().init(fieldODEStateAndDerivative, t11);
        }
        setStateInitialized(false);
        return fieldODEStateAndDerivative;
    }

    public boolean isLastStep() {
        return this.isLastStep;
    }

    public boolean resetOccurred() {
        return this.resetOccurred;
    }

    public void sanityChecks(FieldODEState<T> fieldODEState, T t10) throws NumberIsTooSmallException, DimensionMismatchException {
        double ulp = FastMath.ulp(FastMath.max(FastMath.abs(fieldODEState.getTime().getReal()), FastMath.abs(t10.getReal()))) * 1000.0d;
        double real = ((RealFieldElement) ((RealFieldElement) fieldODEState.getTime().subtract(t10)).abs()).getReal();
        if (real <= ulp) {
            throw new NumberIsTooSmallException(LocalizedFormats.TOO_SMALL_INTEGRATION_INTERVAL, Double.valueOf(real), Double.valueOf(ulp), false);
        }
    }

    public void setIsLastStep(boolean z10) {
        this.isLastStep = z10;
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

    public void setStepSize(T t10) {
        this.stepSize = t10;
    }

    public void setStepStart(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative) {
        this.stepStart = fieldODEStateAndDerivative;
    }

    @Override
    public void addEventHandler(FieldEventHandler<T> fieldEventHandler, double d10, double d11, int i10, BracketedRealFieldUnivariateSolver<T> bracketedRealFieldUnivariateSolver) {
        this.eventsStates.add(new FieldEventState<>(fieldEventHandler, d10, (RealFieldElement) this.field.getZero().add(d11), i10, bracketedRealFieldUnivariateSolver));
    }
}
