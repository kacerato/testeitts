package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.FieldMatrix;
import org.apache.commons.math3.ode.FieldExpandableODE;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.MathArrays;

public class AdamsBashforthFieldIntegrator<T extends RealFieldElement<T>> extends AdamsFieldIntegrator<T> {
    private static final String METHOD_NAME = "Adams-Bashforth";

    public AdamsBashforthFieldIntegrator(Field<T> field, int i10, double d10, double d11, double d12, double d13) throws NumberIsTooSmallException {
        super(field, METHOD_NAME, i10, i10, d10, d11, d12, d13);
    }

    private T errorEstimation(T[] tArr, T[] tArr2, T[] tArr3, FieldMatrix<T> fieldMatrix) {
        T zero = getField().getZero();
        int i10 = 0;
        while (true) {
            int i11 = this.mainSetDimension;
            if (i10 >= i11) {
                return (T) ((RealFieldElement) zero.divide(i11)).sqrt();
            }
            RealFieldElement realFieldElement = (RealFieldElement) tArr2[i10].abs();
            RealFieldElement realFieldElement2 = (RealFieldElement) (this.vecAbsoluteTolerance == null ? ((RealFieldElement) realFieldElement.multiply(this.scalRelativeTolerance)).add(this.scalAbsoluteTolerance) : ((RealFieldElement) realFieldElement.multiply(this.vecRelativeTolerance[i10])).add(this.vecAbsoluteTolerance[i10]));
            T zero2 = getField().getZero();
            int i12 = fieldMatrix.getRowDimension() % 2 == 0 ? -1 : 1;
            for (int rowDimension = fieldMatrix.getRowDimension() - 1; rowDimension >= 0; rowDimension--) {
                zero2 = (T) zero2.add(fieldMatrix.getEntry(rowDimension, i10).multiply(i12));
                i12 = -i12;
            }
            RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr2[i10].subtract(tArr[i10])).add((RealFieldElement) zero2.subtract(tArr3[i10]))).divide(realFieldElement2);
            zero = (T) zero.add(realFieldElement3.multiply(realFieldElement3));
            i10++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x01c2, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r7.subtract(r24)).getReal() >= 0.0d) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x01e3, code lost:
    
        rescale(r1);
        r7 = org.apache.commons.math3.ode.nonstiff.AdamsFieldStepInterpolator.taylor(getStepStart(), (org.apache.commons.math3.RealFieldElement) getStepStart().getTime().add(getStepSize()), getStepSize(), r21.scaled, r21.nordsieck);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x01d5, code lost:
    
        r1 = (org.apache.commons.math3.RealFieldElement) r24.subtract(getStepStart().getTime());
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01d3, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r7.subtract(r24)).getReal() <= 0.0d) goto L41;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6, types: [int] */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r15v1, types: [T extends org.apache.commons.math3.RealFieldElement<T>[], org.apache.commons.math3.RealFieldElement[]] */
    /* JADX WARN: Type inference failed for: r21v0, types: [org.apache.commons.math3.ode.nonstiff.AdamsBashforthFieldIntegrator<T extends org.apache.commons.math3.RealFieldElement<T>>, org.apache.commons.math3.ode.MultistepFieldIntegrator, org.apache.commons.math3.ode.nonstiff.AdamsFieldIntegrator, org.apache.commons.math3.ode.nonstiff.AdamsBashforthFieldIntegrator, org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeFieldIntegrator, org.apache.commons.math3.ode.AbstractFieldIntegrator] */
    /* JADX WARN: Type inference failed for: r5v13, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r7v18, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r7v26, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r7v8, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FieldODEStateAndDerivative<T> integrate(FieldExpandableODE<T> fieldExpandableODE, FieldODEState<T> fieldODEState, T t10) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        FieldExpandableODE<T> fieldExpandableODE2;
        boolean z10;
        double d10;
        sanityChecks(fieldODEState, t10);
        T time = fieldODEState.getTime();
        T[] mapState = fieldExpandableODE.getMapper().mapState(fieldODEState);
        setStepStart(initIntegration(fieldExpandableODE, time, mapState, t10));
        double d11 = 0.0d;
        boolean z11 = false;
        boolean z12 = ((RealFieldElement) t10.subtract(fieldODEState.getTime())).getReal() > 0.0d;
        start(fieldExpandableODE, getStepStart(), t10);
        FieldODEStateAndDerivative stepStart = getStepStart();
        FieldODEStateAndDerivative taylor = AdamsFieldStepInterpolator.taylor(stepStart, (RealFieldElement) stepStart.getTime().add(getStepSize()), getStepSize(), this.scaled, this.nordsieck);
        setIsLastStep(false);
        while (true) {
            ?? r15 = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), mapState.length));
            T[] tArr = mapState;
            RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) getField().getZero()).add(10.0d);
            Object obj = null;
            Array2DRowFieldMatrix<T> array2DRowFieldMatrix = null;
            while (((RealFieldElement) realFieldElement.subtract(1.0d)).getReal() >= d11) {
                obj = taylor.getState();
                RealFieldElement[] computeDerivatives = computeDerivatives(taylor.getTime(), obj);
                for (?? r12 = z11; r12 < r15.length; r12++) {
                    r15[r12] = (RealFieldElement) getStepSize().multiply(computeDerivatives[r12]);
                }
                array2DRowFieldMatrix = updateHighOrderDerivativesPhase1(this.nordsieck);
                updateHighOrderDerivativesPhase2(this.scaled, r15, array2DRowFieldMatrix);
                T[] tArr2 = tArr;
                realFieldElement = errorEstimation(tArr2, obj, r15, array2DRowFieldMatrix);
                if (((RealFieldElement) realFieldElement.subtract(1.0d)).getReal() >= d11) {
                    rescale(filterStep((RealFieldElement) getStepSize().multiply(computeStepGrowShrinkFactor(realFieldElement)), z12, z11));
                    taylor = AdamsFieldStepInterpolator.taylor(getStepStart(), (RealFieldElement) getStepStart().getTime().add(getStepSize()), getStepSize(), this.scaled, this.nordsieck);
                }
                tArr = tArr2;
                d11 = 0.0d;
            }
            T[] tArr3 = tArr;
            Object obj2 = obj;
            Array2DRowFieldMatrix<T> array2DRowFieldMatrix2 = array2DRowFieldMatrix;
            RealFieldElement realFieldElement2 = realFieldElement;
            setStepStart(acceptStep(new AdamsFieldStepInterpolator(getStepSize(), taylor, r15, array2DRowFieldMatrix2, z12, getStepStart(), taylor, fieldExpandableODE.getMapper()), t10));
            this.scaled = r15;
            this.nordsieck = array2DRowFieldMatrix2;
            if (isLastStep()) {
                fieldExpandableODE2 = fieldExpandableODE;
                z10 = false;
                d10 = 0.0d;
            } else {
                z10 = false;
                System.arraycopy(obj2, 0, tArr3, 0, tArr3.length);
                if (resetOccurred()) {
                    fieldExpandableODE2 = fieldExpandableODE;
                    start(fieldExpandableODE2, getStepStart(), t10);
                } else {
                    fieldExpandableODE2 = fieldExpandableODE;
                }
                RealFieldElement realFieldElement3 = (RealFieldElement) getStepSize().multiply(computeStepGrowShrinkFactor(realFieldElement2));
                RealFieldElement realFieldElement4 = (RealFieldElement) getStepStart().getTime().add(realFieldElement3);
                RealFieldElement filterStep = filterStep(realFieldElement3, z12, !z12 ? ((RealFieldElement) realFieldElement4.subtract(t10)).getReal() > 0.0d : ((RealFieldElement) realFieldElement4.subtract(t10)).getReal() < 0.0d);
                RealFieldElement realFieldElement5 = (RealFieldElement) getStepStart().getTime().add(filterStep);
                if (z12) {
                    d10 = 0.0d;
                } else {
                    d10 = 0.0d;
                }
            }
            if (isLastStep()) {
                FieldODEStateAndDerivative<T> stepStart2 = getStepStart();
                setStepStart(null);
                setStepSize(null);
                return stepStart2;
            }
            mapState = tArr3;
            d11 = d10;
            z11 = z10;
        }
    }

    public AdamsBashforthFieldIntegrator(Field<T> field, int i10, double d10, double d11, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super(field, METHOD_NAME, i10, i10, d10, d11, dArr, dArr2);
    }
}
