package org.apache.commons.math3.ode;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeFieldIntegrator;
import org.apache.commons.math3.ode.nonstiff.DormandPrince853FieldIntegrator;
import org.apache.commons.math3.ode.sampling.FieldStepHandler;
import org.apache.commons.math3.ode.sampling.FieldStepInterpolator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public abstract class MultistepFieldIntegrator<T extends RealFieldElement<T>> extends AdaptiveStepsizeFieldIntegrator<T> {
    private double exp;
    private double maxGrowth;
    private double minReduction;
    private final int nSteps;
    protected Array2DRowFieldMatrix<T> nordsieck;
    private double safety;
    protected T[] scaled;
    private FirstOrderFieldIntegrator<T> starter;

    public class FieldNordsieckInitializer implements FieldStepHandler<T> {
        private int count = 0;
        private final FieldEquationsMapper<T> mapper;
        private FieldODEStateAndDerivative<T> savedStart;

        private final T[] f100225t;

        private final T[][] f100226y;
        private final T[][] yDot;

        public FieldNordsieckInitializer(FieldEquationsMapper<T> fieldEquationsMapper, int i10) {
            this.mapper = fieldEquationsMapper;
            this.f100225t = (T[]) ((RealFieldElement[]) MathArrays.buildArray(MultistepFieldIntegrator.this.getField(), i10));
            this.f100226y = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(MultistepFieldIntegrator.this.getField(), i10, -1));
            this.yDot = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(MultistepFieldIntegrator.this.getField(), i10, -1));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void handleStep(FieldStepInterpolator<T> fieldStepInterpolator, boolean z10) throws MaxCountExceededException {
            MultistepFieldIntegrator multistepFieldIntegrator;
            if (this.count == 0) {
                FieldODEStateAndDerivative<T> previousState = fieldStepInterpolator.getPreviousState();
                this.savedStart = previousState;
                this.f100225t[this.count] = previousState.getTime();
                this.f100226y[this.count] = this.mapper.mapState(previousState);
                this.yDot[this.count] = this.mapper.mapDerivative(previousState);
            }
            this.count++;
            FieldODEStateAndDerivative<T> currentState = fieldStepInterpolator.getCurrentState();
            this.f100225t[this.count] = currentState.getTime();
            this.f100226y[this.count] = this.mapper.mapState(currentState);
            this.yDot[this.count] = this.mapper.mapDerivative(currentState);
            int i10 = this.count;
            T[] tArr = this.f100225t;
            if (i10 == tArr.length - 1) {
                MultistepFieldIntegrator.this.setStepSize((RealFieldElement) ((RealFieldElement) tArr[tArr.length - 1].subtract(tArr[0])).divide(this.f100225t.length - 1));
                MultistepFieldIntegrator multistepFieldIntegrator2 = MultistepFieldIntegrator.this;
                multistepFieldIntegrator2.scaled = (T[]) ((RealFieldElement[]) MathArrays.buildArray(multistepFieldIntegrator2.getField(), this.yDot[0].length));
                int i11 = 0;
                while (true) {
                    multistepFieldIntegrator = MultistepFieldIntegrator.this;
                    RealFieldElement[] realFieldElementArr = (T[]) multistepFieldIntegrator.scaled;
                    if (i11 >= realFieldElementArr.length) {
                        break;
                    }
                    realFieldElementArr[i11] = (RealFieldElement) this.yDot[0][i11].multiply(multistepFieldIntegrator.getStepSize());
                    i11++;
                }
                multistepFieldIntegrator.nordsieck = multistepFieldIntegrator.initializeHighOrderDerivatives(multistepFieldIntegrator.getStepSize(), this.f100225t, this.f100226y, this.yDot);
                MultistepFieldIntegrator.this.setStepStart(this.savedStart);
                throw new InitializationCompletedMarkerException();
            }
        }

        @Override
        public void init(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, T t10) {
        }
    }

    public static class InitializationCompletedMarkerException extends RuntimeException {
        private static final long serialVersionUID = -1914085471038046418L;

        public InitializationCompletedMarkerException() {
            super((Throwable) null);
        }
    }

    public MultistepFieldIntegrator(Field<T> field, String str, int i10, int i11, double d10, double d11, double d12, double d13) throws NumberIsTooSmallException {
        super(field, str, d10, d11, d12, d13);
        if (i10 >= 2) {
            this.starter = new DormandPrince853FieldIntegrator(field, d10, d11, d12, d13);
            this.nSteps = i10;
            this.exp = (-1.0d) / i11;
            setSafety(0.9d);
            setMinReduction(0.2d);
            setMaxGrowth(FastMath.pow(2.0d, -this.exp));
            return;
        }
        throw new NumberIsTooSmallException(LocalizedFormats.INTEGRATION_METHOD_NEEDS_AT_LEAST_TWO_PREVIOUS_POINTS, Integer.valueOf(i10), 2, true);
    }

    public T computeStepGrowShrinkFactor(T t10) {
        return (T) MathUtils.min((RealFieldElement) ((RealFieldElement) t10.getField().getZero()).add(this.maxGrowth), MathUtils.max((RealFieldElement) ((RealFieldElement) t10.getField().getZero()).add(this.minReduction), (RealFieldElement) ((RealFieldElement) t10.pow(this.exp)).multiply(this.safety)));
    }

    public double getMaxGrowth() {
        return this.maxGrowth;
    }

    public double getMinReduction() {
        return this.minReduction;
    }

    public int getNSteps() {
        return this.nSteps;
    }

    public double getSafety() {
        return this.safety;
    }

    public FirstOrderFieldIntegrator<T> getStarterIntegrator() {
        return this.starter;
    }

    public abstract Array2DRowFieldMatrix<T> initializeHighOrderDerivatives(T t10, T[] tArr, T[][] tArr2, T[][] tArr3);

    public void rescale(T t10) {
        RealFieldElement realFieldElement = (RealFieldElement) t10.divide(getStepSize());
        int i10 = 0;
        while (true) {
            FieldElement[] fieldElementArr = this.scaled;
            if (i10 >= fieldElementArr.length) {
                break;
            }
            fieldElementArr[i10] = (RealFieldElement) fieldElementArr[i10].multiply(realFieldElement);
            i10++;
        }
        RealFieldElement realFieldElement2 = realFieldElement;
        for (FieldElement[] fieldElementArr2 : this.nordsieck.getDataRef()) {
            realFieldElement2 = (RealFieldElement) realFieldElement2.multiply(realFieldElement);
            for (int i11 = 0; i11 < fieldElementArr2.length; i11++) {
                fieldElementArr2[i11] = (RealFieldElement) fieldElementArr2[i11].multiply(realFieldElement2);
            }
        }
        setStepSize(t10);
    }

    public void setMaxGrowth(double d10) {
        this.maxGrowth = d10;
    }

    public void setMinReduction(double d10) {
        this.minReduction = d10;
    }

    public void setSafety(double d10) {
        this.safety = d10;
    }

    public void setStarterIntegrator(FirstOrderFieldIntegrator<T> firstOrderFieldIntegrator) {
        this.starter = firstOrderFieldIntegrator;
    }

    public void start(FieldExpandableODE<T> fieldExpandableODE, FieldODEState<T> fieldODEState, T t10) throws DimensionMismatchException, NumberIsTooSmallException, MaxCountExceededException, NoBracketingException {
        this.starter.clearEventHandlers();
        this.starter.clearStepHandlers();
        this.starter.addStepHandler(new FieldNordsieckInitializer(fieldExpandableODE.getMapper(), (this.nSteps + 3) / 2));
        try {
            this.starter.integrate(fieldExpandableODE, fieldODEState, t10);
            throw new MathIllegalStateException(LocalizedFormats.MULTISTEP_STARTER_STOPPED_EARLY, new Object[0]);
        } catch (InitializationCompletedMarkerException unused) {
            getEvaluationsCounter().increment(this.starter.getEvaluations());
            this.starter.clearStepHandlers();
        }
    }

    public MultistepFieldIntegrator(Field<T> field, String str, int i10, int i11, double d10, double d11, double[] dArr, double[] dArr2) {
        super(field, str, d10, d11, dArr, dArr2);
        this.starter = new DormandPrince853FieldIntegrator(field, d10, d11, dArr, dArr2);
        this.nSteps = i10;
        this.exp = (-1.0d) / i11;
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(FastMath.pow(2.0d, -this.exp));
    }
}
