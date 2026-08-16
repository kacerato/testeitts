package org.apache.commons.math3.ode.nonstiff;

import java.util.Arrays;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.FieldMatrixPreservingVisitor;
import org.apache.commons.math3.ode.FieldExpandableODE;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public class AdamsMoultonFieldIntegrator<T extends RealFieldElement<T>> extends AdamsFieldIntegrator<T> {
    private static final String METHOD_NAME = "Adams-Moulton";

    public class Corrector implements FieldMatrixPreservingVisitor<T> {
        private final T[] after;
        private final T[] before;
        private final T[] previous;
        private final T[] scaled;

        public Corrector(T[] tArr, T[] tArr2, T[] tArr3) {
            this.previous = tArr;
            this.scaled = tArr2;
            this.after = tArr3;
            this.before = (T[]) ((RealFieldElement[]) tArr3.clone());
        }

        @Override
        public void start(int i10, int i11, int i12, int i13, int i14, int i15) {
            Arrays.fill(this.after, AdamsMoultonFieldIntegrator.this.getField().getZero());
        }

        @Override
        public T end() {
            RealFieldElement realFieldElement = (RealFieldElement) AdamsMoultonFieldIntegrator.this.getField().getZero();
            int i10 = 0;
            while (true) {
                FieldElement[] fieldElementArr = this.after;
                if (i10 < fieldElementArr.length) {
                    fieldElementArr[i10] = (RealFieldElement) fieldElementArr[i10].add(this.previous[i10].add(this.scaled[i10]));
                    if (i10 < AdamsMoultonFieldIntegrator.this.mainSetDimension) {
                        RealFieldElement max = MathUtils.max((RealFieldElement) this.previous[i10].abs(), (RealFieldElement) this.after[i10].abs());
                        AdamsMoultonFieldIntegrator adamsMoultonFieldIntegrator = AdamsMoultonFieldIntegrator.this;
                        RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) this.after[i10].subtract(this.before[i10])).divide((RealFieldElement) (adamsMoultonFieldIntegrator.vecAbsoluteTolerance == null ? ((RealFieldElement) max.multiply(adamsMoultonFieldIntegrator.scalRelativeTolerance)).add(AdamsMoultonFieldIntegrator.this.scalAbsoluteTolerance) : ((RealFieldElement) max.multiply(adamsMoultonFieldIntegrator.vecRelativeTolerance[i10])).add(AdamsMoultonFieldIntegrator.this.vecAbsoluteTolerance[i10])));
                        realFieldElement = (RealFieldElement) realFieldElement.add((RealFieldElement) realFieldElement2.multiply(realFieldElement2));
                    }
                    i10++;
                } else {
                    return (T) ((RealFieldElement) realFieldElement.divide(AdamsMoultonFieldIntegrator.this.mainSetDimension)).sqrt();
                }
            }
        }

        @Override
        public void visit(int i10, int i11, T t10) {
            if ((i10 & 1) == 0) {
                FieldElement[] fieldElementArr = this.after;
                fieldElementArr[i11] = (RealFieldElement) fieldElementArr[i11].subtract(t10);
            } else {
                FieldElement[] fieldElementArr2 = this.after;
                fieldElementArr2[i11] = (RealFieldElement) fieldElementArr2[i11].add(t10);
            }
        }
    }

    public AdamsMoultonFieldIntegrator(Field<T> field, int i10, double d10, double d11, double d12, double d13) throws NumberIsTooSmallException {
        super(field, METHOD_NAME, i10, i10 + 1, d10, d11, d12, d13);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x01fb, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r7.subtract(r25)).getReal() >= 0.0d) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x021c, code lost:
    
        rescale(r1);
        r7 = org.apache.commons.math3.ode.nonstiff.AdamsFieldStepInterpolator.taylor(getStepStart(), (org.apache.commons.math3.RealFieldElement) getStepStart().getTime().add(getStepSize()), getStepSize(), r22.scaled, r22.nordsieck);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x020e, code lost:
    
        r1 = (org.apache.commons.math3.RealFieldElement) r25.subtract(getStepStart().getTime());
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x020c, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r7.subtract(r25)).getReal() <= 0.0d) goto L45;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7, types: [int] */
    /* JADX WARN: Type inference failed for: r13v4, types: [org.apache.commons.math3.RealFieldElement[]] */
    /* JADX WARN: Type inference failed for: r22v0, types: [org.apache.commons.math3.ode.nonstiff.AdamsMoultonFieldIntegrator<T extends org.apache.commons.math3.RealFieldElement<T>>, org.apache.commons.math3.ode.MultistepFieldIntegrator, org.apache.commons.math3.ode.nonstiff.AdamsFieldIntegrator, org.apache.commons.math3.ode.nonstiff.AdamsMoultonFieldIntegrator, org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeFieldIntegrator, org.apache.commons.math3.ode.AbstractFieldIntegrator] */
    /* JADX WARN: Type inference failed for: r5v12, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r5v5, types: [T extends org.apache.commons.math3.RealFieldElement<T>[], org.apache.commons.math3.RealFieldElement[]] */
    /* JADX WARN: Type inference failed for: r7v11, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r7v21, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r7v29, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r7v5, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [int] */
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
            RealFieldElement[] realFieldElementArr = (RealFieldElement[]) MathArrays.buildArray(getField(), mapState.length);
            T[] tArr = mapState;
            T t11 = (RealFieldElement) ((RealFieldElement) getField().getZero()).add(10.0d);
            Array2DRowFieldMatrix<T> array2DRowFieldMatrix = null;
            RealFieldElement[] realFieldElementArr2 = null;
            while (((RealFieldElement) t11.subtract(1.0d)).getReal() >= d11) {
                ?? state = taylor.getState();
                RealFieldElement[] computeDerivatives = computeDerivatives(taylor.getTime(), state);
                for (?? r12 = z11; r12 < realFieldElementArr.length; r12++) {
                    realFieldElementArr[r12] = (RealFieldElement) getStepSize().multiply(computeDerivatives[r12]);
                }
                array2DRowFieldMatrix = updateHighOrderDerivativesPhase1(this.nordsieck);
                updateHighOrderDerivativesPhase2(this.scaled, realFieldElementArr, array2DRowFieldMatrix);
                T[] tArr2 = tArr;
                t11 = array2DRowFieldMatrix.walkInOptimizedOrder(new Corrector(tArr2, realFieldElementArr, state));
                if (((RealFieldElement) t11.subtract(1.0d)).getReal() >= d11) {
                    rescale(filterStep((RealFieldElement) getStepSize().multiply(computeStepGrowShrinkFactor(t11)), z12, z11));
                    taylor = AdamsFieldStepInterpolator.taylor(getStepStart(), (RealFieldElement) getStepStart().getTime().add(getStepSize()), getStepSize(), this.scaled, this.nordsieck);
                }
                tArr = tArr2;
                d11 = 0.0d;
                realFieldElementArr2 = state;
            }
            T[] tArr3 = tArr;
            RealFieldElement[] computeDerivatives2 = computeDerivatives(taylor.getTime(), realFieldElementArr2);
            ?? r52 = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), tArr3.length));
            for (?? r82 = z11; r82 < r52.length; r82++) {
                r52[r82] = (RealFieldElement) getStepSize().multiply(computeDerivatives2[r82]);
            }
            updateHighOrderDerivativesPhase2(realFieldElementArr, r52, array2DRowFieldMatrix);
            FieldODEStateAndDerivative fieldODEStateAndDerivative = new FieldODEStateAndDerivative(taylor.getTime(), realFieldElementArr2, computeDerivatives2);
            Array2DRowFieldMatrix<T> array2DRowFieldMatrix2 = array2DRowFieldMatrix;
            RealFieldElement[] realFieldElementArr3 = realFieldElementArr2;
            RealFieldElement realFieldElement = t11;
            setStepStart(acceptStep(new AdamsFieldStepInterpolator(getStepSize(), fieldODEStateAndDerivative, r52, array2DRowFieldMatrix2, z12, getStepStart(), fieldODEStateAndDerivative, fieldExpandableODE.getMapper()), t10));
            this.scaled = r52;
            this.nordsieck = array2DRowFieldMatrix2;
            if (isLastStep()) {
                fieldExpandableODE2 = fieldExpandableODE;
                z10 = false;
                d10 = 0.0d;
                taylor = fieldODEStateAndDerivative;
            } else {
                z10 = false;
                System.arraycopy(realFieldElementArr3, 0, tArr3, 0, tArr3.length);
                if (resetOccurred()) {
                    fieldExpandableODE2 = fieldExpandableODE;
                    start(fieldExpandableODE2, getStepStart(), t10);
                } else {
                    fieldExpandableODE2 = fieldExpandableODE;
                }
                RealFieldElement realFieldElement2 = (RealFieldElement) getStepSize().multiply(computeStepGrowShrinkFactor(realFieldElement));
                RealFieldElement realFieldElement3 = (RealFieldElement) getStepStart().getTime().add(realFieldElement2);
                RealFieldElement filterStep = filterStep(realFieldElement2, z12, !z12 ? ((RealFieldElement) realFieldElement3.subtract(t10)).getReal() > 0.0d : ((RealFieldElement) realFieldElement3.subtract(t10)).getReal() < 0.0d);
                RealFieldElement realFieldElement4 = (RealFieldElement) getStepStart().getTime().add(filterStep);
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
            d11 = d10;
            z11 = z10;
            mapState = tArr3;
        }
    }

    public AdamsMoultonFieldIntegrator(Field<T> field, int i10, double d10, double d11, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super(field, METHOD_NAME, i10, i10 + 1, d10, d11, dArr, dArr2);
    }
}
