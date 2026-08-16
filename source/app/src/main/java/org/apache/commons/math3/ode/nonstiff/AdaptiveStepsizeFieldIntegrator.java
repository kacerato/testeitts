package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.AbstractFieldIntegrator;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public abstract class AdaptiveStepsizeFieldIntegrator<T extends RealFieldElement<T>> extends AbstractFieldIntegrator<T> {
    private T initialStep;
    protected int mainSetDimension;
    private T maxStep;
    private T minStep;
    protected double scalAbsoluteTolerance;
    protected double scalRelativeTolerance;
    protected double[] vecAbsoluteTolerance;
    protected double[] vecRelativeTolerance;

    public AdaptiveStepsizeFieldIntegrator(Field<T> field, String str, double d10, double d11, double d12, double d13) {
        super(field, str);
        setStepSizeControl(d10, d11, d12, d13);
        resetInternalState();
    }

    public T filterStep(T t10, boolean z10, boolean z11) throws NumberIsTooSmallException {
        if (((RealFieldElement) ((RealFieldElement) t10.abs()).subtract(this.minStep)).getReal() < 0.0d) {
            if (!z11) {
                throw new NumberIsTooSmallException(LocalizedFormats.MINIMAL_STEPSIZE_REACHED_DURING_INTEGRATION, Double.valueOf(((RealFieldElement) t10.abs()).getReal()), Double.valueOf(this.minStep.getReal()), true);
            }
            t10 = this.minStep;
            if (!z10) {
                t10 = (T) t10.negate();
            }
        }
        return ((RealFieldElement) t10.subtract(this.maxStep)).getReal() > 0.0d ? this.maxStep : ((RealFieldElement) t10.add(this.maxStep)).getReal() < 0.0d ? (T) this.maxStep.negate() : t10;
    }

    public T getMaxStep() {
        return this.maxStep;
    }

    public T getMinStep() {
        return this.minStep;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T initializeStep(boolean z10, int i10, T[] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldEquationsMapper<T> fieldEquationsMapper) throws MaxCountExceededException, DimensionMismatchException {
        if (this.initialStep.getReal() > 0.0d) {
            return z10 ? this.initialStep : (T) this.initialStep.negate();
        }
        T[] mapState = fieldEquationsMapper.mapState(fieldODEStateAndDerivative);
        T[] mapDerivative = fieldEquationsMapper.mapDerivative(fieldODEStateAndDerivative);
        RealFieldElement realFieldElement = (RealFieldElement) getField().getZero();
        RealFieldElement realFieldElement2 = (RealFieldElement) getField().getZero();
        for (int i11 = 0; i11 < tArr.length; i11++) {
            RealFieldElement realFieldElement3 = (RealFieldElement) mapState[i11].divide(tArr[i11]);
            realFieldElement = (RealFieldElement) realFieldElement.add((RealFieldElement) realFieldElement3.multiply(realFieldElement3));
            RealFieldElement realFieldElement4 = (RealFieldElement) mapDerivative[i11].divide(tArr[i11]);
            realFieldElement2 = (RealFieldElement) realFieldElement2.add((RealFieldElement) realFieldElement4.multiply(realFieldElement4));
        }
        RealFieldElement realFieldElement5 = (RealFieldElement) ((realFieldElement.getReal() < 1.0E-10d || realFieldElement2.getReal() < 1.0E-10d) ? ((RealFieldElement) getField().getZero()).add(1.0E-6d) : ((RealFieldElement) ((RealFieldElement) realFieldElement.divide(realFieldElement2)).sqrt()).multiply(0.01d));
        if (!z10) {
            realFieldElement5 = (RealFieldElement) realFieldElement5.negate();
        }
        RealFieldElement[] realFieldElementArr = (RealFieldElement[]) MathArrays.buildArray(getField(), mapState.length);
        for (int i12 = 0; i12 < mapState.length; i12++) {
            realFieldElementArr[i12] = (RealFieldElement) mapState[i12].add(mapDerivative[i12].multiply(realFieldElement5));
        }
        RealFieldElement[] computeDerivatives = computeDerivatives((RealFieldElement) fieldODEStateAndDerivative.getTime().add(realFieldElement5), realFieldElementArr);
        RealFieldElement realFieldElement6 = (RealFieldElement) getField().getZero();
        for (int i13 = 0; i13 < tArr.length; i13++) {
            RealFieldElement realFieldElement7 = (RealFieldElement) ((RealFieldElement) computeDerivatives[i13].subtract(mapDerivative[i13])).divide(tArr[i13]);
            realFieldElement6 = (RealFieldElement) realFieldElement6.add((RealFieldElement) realFieldElement7.multiply(realFieldElement7));
        }
        RealFieldElement max = MathUtils.max((RealFieldElement) realFieldElement2.sqrt(), (RealFieldElement) ((RealFieldElement) realFieldElement6.sqrt()).divide(realFieldElement5));
        T t10 = (T) MathUtils.max(this.minStep, MathUtils.min(this.maxStep, MathUtils.max(MathUtils.min((RealFieldElement) ((RealFieldElement) realFieldElement5.abs()).multiply(100), max.getReal() < 1.0E-15d ? MathUtils.max((RealFieldElement) ((RealFieldElement) getField().getZero()).add(1.0E-6d), (RealFieldElement) ((RealFieldElement) realFieldElement5.abs()).multiply(0.001d)) : (RealFieldElement) ((RealFieldElement) ((RealFieldElement) max.multiply(100)).reciprocal()).pow(1.0d / i10)), (RealFieldElement) ((RealFieldElement) fieldODEStateAndDerivative.getTime().abs()).multiply(1.0E-12d))));
        return !z10 ? (T) t10.negate() : t10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void resetInternalState() {
        setStepStart(null);
        setStepSize((RealFieldElement) ((RealFieldElement) this.minStep.multiply(this.maxStep)).sqrt());
    }

    @Override
    public void sanityChecks(FieldODEState<T> fieldODEState, T t10) throws DimensionMismatchException, NumberIsTooSmallException {
        super.sanityChecks(fieldODEState, t10);
        int stateDimension = fieldODEState.getStateDimension();
        this.mainSetDimension = stateDimension;
        double[] dArr = this.vecAbsoluteTolerance;
        if (dArr != null && dArr.length != stateDimension) {
            throw new DimensionMismatchException(this.mainSetDimension, this.vecAbsoluteTolerance.length);
        }
        double[] dArr2 = this.vecRelativeTolerance;
        if (dArr2 != null && dArr2.length != stateDimension) {
            throw new DimensionMismatchException(this.mainSetDimension, this.vecRelativeTolerance.length);
        }
    }

    public void setInitialStepSize(T t10) {
        if (((RealFieldElement) t10.subtract(this.minStep)).getReal() < 0.0d || ((RealFieldElement) t10.subtract(this.maxStep)).getReal() > 0.0d) {
            this.initialStep = (T) getField().getOne().negate();
        } else {
            this.initialStep = t10;
        }
    }

    public void setStepSizeControl(double d10, double d11, double d12, double d13) {
        this.minStep = (T) getField().getZero().add(FastMath.abs(d10));
        this.maxStep = (T) getField().getZero().add(FastMath.abs(d11));
        this.initialStep = (T) getField().getOne().negate();
        this.scalAbsoluteTolerance = d12;
        this.scalRelativeTolerance = d13;
        this.vecAbsoluteTolerance = null;
        this.vecRelativeTolerance = null;
    }

    public AdaptiveStepsizeFieldIntegrator(Field<T> field, String str, double d10, double d11, double[] dArr, double[] dArr2) {
        super(field, str);
        setStepSizeControl(d10, d11, dArr, dArr2);
        resetInternalState();
    }

    public void setStepSizeControl(double d10, double d11, double[] dArr, double[] dArr2) {
        this.minStep = (T) getField().getZero().add(FastMath.abs(d10));
        this.maxStep = (T) getField().getZero().add(FastMath.abs(d11));
        this.initialStep = (T) getField().getOne().negate();
        this.scalAbsoluteTolerance = 0.0d;
        this.scalRelativeTolerance = 0.0d;
        this.vecAbsoluteTolerance = (double[]) dArr.clone();
        this.vecRelativeTolerance = (double[]) dArr2.clone();
    }
}
