package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ode.AbstractFieldIntegrator;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldExpandableODE;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.ode.FirstOrderFieldDifferentialEquations;
import org.apache.commons.math3.util.Decimal64;
import org.apache.commons.math3.util.MathArrays;

public abstract class RungeKuttaFieldIntegrator<T extends RealFieldElement<T>> extends AbstractFieldIntegrator<T> implements FieldButcherArrayProvider<T> {

    private final T[][] f100276a;

    private final T[] f100277b;

    private final T[] f100278c;
    private final T step;

    public RungeKuttaFieldIntegrator(Field<T> field, String str, T t10) {
        super(field, str);
        this.f100278c = getC();
        this.f100276a = getA();
        this.f100277b = getB();
        this.step = (T) t10.abs();
    }

    public abstract RungeKuttaFieldStepInterpolator<T> createInterpolator(boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper);

    public T fraction(int i10, int i11) {
        return (T) ((RealFieldElement) getField().getZero().add(i10)).divide(i11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x01fb, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r0.subtract(r22)).getReal() >= 0.0d) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x020e, code lost:
    
        setStepSize((org.apache.commons.math3.RealFieldElement) r22.subtract(getStepStart().getTime()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x020c, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r0.subtract(r22)).getReal() <= 0.0d) goto L43;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v36, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v52, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v13, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r2v24, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FieldODEStateAndDerivative<T> integrate(FieldExpandableODE<T> fieldExpandableODE, FieldODEState<T> fieldODEState, T t10) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        long j10;
        sanityChecks(fieldODEState, t10);
        T time = fieldODEState.getTime();
        T[] mapState = fieldExpandableODE.getMapper().mapState(fieldODEState);
        setStepStart(initIntegration(fieldExpandableODE, time, mapState, t10));
        int i10 = 1;
        boolean z10 = ((RealFieldElement) t10.subtract(fieldODEState.getTime())).getReal() > 0.0d;
        int length = this.f100278c.length + 1;
        RealFieldElement[][] realFieldElementArr = (RealFieldElement[][]) MathArrays.buildArray(getField(), length, -1);
        RealFieldElement[] realFieldElementArr2 = (RealFieldElement[]) MathArrays.buildArray(getField(), mapState.length);
        if (z10) {
            if (((RealFieldElement) ((RealFieldElement) getStepStart().getTime().add(this.step)).subtract(t10)).getReal() >= 0.0d) {
                setStepSize((RealFieldElement) t10.subtract(getStepStart().getTime()));
            } else {
                setStepSize(this.step);
            }
        } else if (((RealFieldElement) ((RealFieldElement) getStepStart().getTime().subtract(this.step)).subtract(t10)).getReal() <= 0.0d) {
            setStepSize((RealFieldElement) t10.subtract(getStepStart().getTime()));
        } else {
            setStepSize((RealFieldElement) this.step.negate());
        }
        setIsLastStep(false);
        while (true) {
            T[] mapState2 = fieldExpandableODE.getMapper().mapState(getStepStart());
            realFieldElementArr[0] = fieldExpandableODE.getMapper().mapDerivative(getStepStart());
            int i11 = i10;
            while (i11 < length) {
                int i12 = 0;
                while (i12 < mapState.length) {
                    int i13 = i11 - 1;
                    RealFieldElement realFieldElement = (RealFieldElement) realFieldElementArr[0][i12].multiply(this.f100276a[i13][0]);
                    for (int i14 = i10; i14 < i11; i14++) {
                        realFieldElement = (RealFieldElement) realFieldElement.add((RealFieldElement) realFieldElementArr[i14][i12].multiply(this.f100276a[i13][i14]));
                    }
                    realFieldElementArr2[i12] = (RealFieldElement) mapState2[i12].add(getStepSize().multiply(realFieldElement));
                    i12++;
                    i10 = 1;
                }
                realFieldElementArr[i11] = computeDerivatives((RealFieldElement) getStepStart().getTime().add(getStepSize().multiply(this.f100278c[i11 - 1])), realFieldElementArr2);
                i11++;
                i10 = 1;
            }
            for (int i15 = 0; i15 < mapState.length; i15++) {
                RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElementArr[0][i15].multiply(this.f100277b[0]);
                for (int i16 = 1; i16 < length; i16++) {
                    realFieldElement2 = (RealFieldElement) realFieldElement2.add((RealFieldElement) realFieldElementArr[i16][i15].multiply(this.f100277b[i16]));
                }
                realFieldElementArr2[i15] = (RealFieldElement) mapState2[i15].add(getStepSize().multiply(realFieldElement2));
            }
            RealFieldElement realFieldElement3 = (RealFieldElement) getStepStart().getTime().add(getStepSize());
            FieldODEStateAndDerivative fieldODEStateAndDerivative = new FieldODEStateAndDerivative(realFieldElement3, realFieldElementArr2, computeDerivatives(realFieldElement3, realFieldElementArr2));
            System.arraycopy(realFieldElementArr2, 0, mapState2, 0, mapState.length);
            RealFieldElement[] realFieldElementArr3 = realFieldElementArr2;
            setStepStart(acceptStep(createInterpolator(z10, realFieldElementArr, getStepStart(), fieldODEStateAndDerivative, fieldExpandableODE.getMapper()), t10));
            if (isLastStep()) {
                j10 = 0;
            } else {
                RealFieldElement realFieldElement4 = (RealFieldElement) getStepStart().getTime().add(getStepSize());
                if (z10) {
                    j10 = 0;
                } else {
                    j10 = 0;
                }
            }
            if (isLastStep()) {
                FieldODEStateAndDerivative<T> stepStart = getStepStart();
                setStepStart(null);
                setStepSize(null);
                return stepStart;
            }
            realFieldElementArr2 = realFieldElementArr3;
            i10 = 1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T[] singleStep(FirstOrderFieldDifferentialEquations<T> firstOrderFieldDifferentialEquations, T t10, T[] tArr, T t11) {
        T[] tArr2 = (T[]) ((RealFieldElement[]) tArr.clone());
        int i10 = 1;
        int length = this.f100278c.length + 1;
        RealFieldElement[][] realFieldElementArr = (RealFieldElement[][]) MathArrays.buildArray(getField(), length, -1);
        RealFieldElement[] realFieldElementArr2 = (RealFieldElement[]) tArr.clone();
        RealFieldElement realFieldElement = (RealFieldElement) t11.subtract(t10);
        int i11 = 0;
        realFieldElementArr[0] = firstOrderFieldDifferentialEquations.computeDerivatives(t10, tArr2);
        int i12 = 1;
        while (i12 < length) {
            int i13 = i11;
            while (i13 < tArr.length) {
                int i14 = i12 - 1;
                RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElementArr[i11][i13].multiply(this.f100276a[i14][i11]);
                for (int i15 = i10; i15 < i12; i15++) {
                    realFieldElement2 = (RealFieldElement) realFieldElement2.add((RealFieldElement) realFieldElementArr[i15][i13].multiply(this.f100276a[i14][i15]));
                }
                realFieldElementArr2[i13] = (RealFieldElement) tArr2[i13].add((Decimal64) realFieldElement.multiply(realFieldElement2));
                i13++;
                i10 = 1;
                i11 = 0;
            }
            realFieldElementArr[i12] = firstOrderFieldDifferentialEquations.computeDerivatives((RealFieldElement) t10.add(realFieldElement.multiply(this.f100278c[i12 - 1])), realFieldElementArr2);
            i12++;
            i10 = 1;
            i11 = 0;
        }
        for (int i16 = 0; i16 < tArr.length; i16++) {
            RealFieldElement realFieldElement3 = (RealFieldElement) realFieldElementArr[0][i16].multiply(this.f100277b[0]);
            for (int i17 = 1; i17 < length; i17++) {
                realFieldElement3 = (RealFieldElement) realFieldElement3.add((RealFieldElement) realFieldElementArr[i17][i16].multiply(this.f100277b[i17]));
            }
            tArr2[i16] = (RealFieldElement) tArr2[i16].add((Decimal64) realFieldElement.multiply(realFieldElement3));
        }
        return tArr2;
    }
}
