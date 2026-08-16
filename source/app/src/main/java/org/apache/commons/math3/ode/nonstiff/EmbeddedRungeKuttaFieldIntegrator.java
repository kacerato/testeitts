package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldExpandableODE;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public abstract class EmbeddedRungeKuttaFieldIntegrator<T extends RealFieldElement<T>> extends AdaptiveStepsizeFieldIntegrator<T> implements FieldButcherArrayProvider<T> {

    private final T[][] f100266a;

    private final T[] f100267b;

    private final T[] f100268c;
    private final T exp;
    private final int fsal;
    private T maxGrowth;
    private T minReduction;
    private T safety;

    /* JADX WARN: Multi-variable type inference failed */
    public EmbeddedRungeKuttaFieldIntegrator(Field<T> field, String str, int i10, double d10, double d11, double d12, double d13) {
        super(field, str, d10, d11, d12, d13);
        this.fsal = i10;
        this.f100268c = (T[]) getC();
        this.f100266a = (T[][]) getA();
        this.f100267b = (T[]) getB();
        this.exp = (T) field.getOne().divide(-getOrder());
        setSafety((RealFieldElement) field.getZero().add(0.9d));
        setMinReduction((RealFieldElement) field.getZero().add(0.2d));
        setMaxGrowth((RealFieldElement) field.getZero().add(10.0d));
    }

    public abstract RungeKuttaFieldStepInterpolator<T> createInterpolator(boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper);

    public abstract T estimateError(T[][] tArr, T[] tArr2, T[] tArr3, T t10);

    public T fraction(int i10, int i11) {
        return (T) ((RealFieldElement) getField().getOne().multiply(i10)).divide(i11);
    }

    public T getMaxGrowth() {
        return this.maxGrowth;
    }

    public T getMinReduction() {
        return this.minReduction;
    }

    public abstract int getOrder();

    public T getSafety() {
        return this.safety;
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x0363, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r1.subtract(r28)).getReal() >= 0.0d) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0376, code lost:
    
        r0 = (org.apache.commons.math3.RealFieldElement) r28.subtract(getStepStart().getTime());
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0374, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r1.subtract(r28)).getReal() <= 0.0d) goto L75;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v44, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v72, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v18, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v26, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v60, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FieldODEStateAndDerivative<T> integrate(FieldExpandableODE<T> fieldExpandableODE, FieldODEState<T> fieldODEState, T t10) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        double d10;
        RealFieldElement[] realFieldElementArr;
        RealFieldElement[][] realFieldElementArr2;
        sanityChecks(fieldODEState, t10);
        T time = fieldODEState.getTime();
        T[] mapState = fieldExpandableODE.getMapper().mapState(fieldODEState);
        setStepStart(initIntegration(fieldExpandableODE, time, mapState, t10));
        double d11 = 0.0d;
        int i10 = 0;
        boolean z10 = ((RealFieldElement) t10.subtract(fieldODEState.getTime())).getReal() > 0.0d;
        int length = this.f100268c.length + 1;
        RealFieldElement[][] realFieldElementArr3 = (RealFieldElement[][]) MathArrays.buildArray(getField(), length, -1);
        RealFieldElement[] realFieldElementArr4 = (RealFieldElement[]) MathArrays.buildArray(getField(), mapState.length);
        RealFieldElement realFieldElement = (RealFieldElement) getField().getZero();
        setIsLastStep(false);
        T[] tArr = mapState;
        boolean z11 = true;
        while (true) {
            boolean z12 = z10;
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) getField().getZero()).add(10.0d);
            RealFieldElement realFieldElement3 = realFieldElement;
            T[] tArr2 = tArr;
            boolean z13 = z11;
            while (((RealFieldElement) realFieldElement2.subtract(1.0d)).getReal() >= d11) {
                tArr2 = fieldExpandableODE.getMapper().mapState(getStepStart());
                realFieldElementArr3[i10] = fieldExpandableODE.getMapper().mapDerivative(getStepStart());
                if (z13) {
                    RealFieldElement[] realFieldElementArr5 = (RealFieldElement[]) MathArrays.buildArray(getField(), this.mainSetDimension);
                    if (this.vecAbsoluteTolerance == null) {
                        for (int i11 = i10; i11 < realFieldElementArr5.length; i11++) {
                            realFieldElementArr5[i11] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr2[i11].abs()).multiply(this.scalRelativeTolerance)).add(this.scalAbsoluteTolerance);
                        }
                    } else {
                        for (int i12 = 0; i12 < realFieldElementArr5.length; i12++) {
                            realFieldElementArr5[i12] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr2[i12].abs()).multiply(this.vecRelativeTolerance[i12])).add(this.vecAbsoluteTolerance[i12]);
                        }
                    }
                    realFieldElementArr = realFieldElementArr4;
                    realFieldElementArr2 = realFieldElementArr3;
                    realFieldElement3 = initializeStep(z12, getOrder(), realFieldElementArr5, getStepStart(), fieldExpandableODE.getMapper());
                    z13 = false;
                } else {
                    realFieldElementArr = realFieldElementArr4;
                    realFieldElementArr2 = realFieldElementArr3;
                }
                setStepSize(realFieldElement3);
                if (z12) {
                    if (((RealFieldElement) ((RealFieldElement) getStepStart().getTime().add(getStepSize())).subtract(t10)).getReal() >= d11) {
                        setStepSize((RealFieldElement) t10.subtract(getStepStart().getTime()));
                    }
                } else if (((RealFieldElement) ((RealFieldElement) getStepStart().getTime().add(getStepSize())).subtract(t10)).getReal() <= d11) {
                    setStepSize((RealFieldElement) t10.subtract(getStepStart().getTime()));
                }
                for (int i13 = 1; i13 < length; i13++) {
                    for (int i14 = 0; i14 < mapState.length; i14++) {
                        int i15 = i13 - 1;
                        RealFieldElement realFieldElement4 = (RealFieldElement) realFieldElementArr2[0][i14].multiply(this.f100266a[i15][0]);
                        for (int i16 = 1; i16 < i13; i16++) {
                            realFieldElement4 = (RealFieldElement) realFieldElement4.add((RealFieldElement) realFieldElementArr2[i16][i14].multiply(this.f100266a[i15][i16]));
                        }
                        realFieldElementArr[i14] = (RealFieldElement) tArr2[i14].add(getStepSize().multiply(realFieldElement4));
                    }
                    realFieldElementArr2[i13] = computeDerivatives((RealFieldElement) getStepStart().getTime().add(getStepSize().multiply(this.f100268c[i13 - 1])), realFieldElementArr);
                }
                RealFieldElement[] realFieldElementArr6 = realFieldElementArr;
                for (int i17 = 0; i17 < mapState.length; i17++) {
                    RealFieldElement realFieldElement5 = (RealFieldElement) realFieldElementArr2[0][i17].multiply(this.f100267b[0]);
                    for (int i18 = 1; i18 < length; i18++) {
                        realFieldElement5 = (RealFieldElement) realFieldElement5.add((RealFieldElement) realFieldElementArr2[i18][i17].multiply(this.f100267b[i18]));
                    }
                    realFieldElementArr6[i17] = (RealFieldElement) tArr2[i17].add(getStepSize().multiply(realFieldElement5));
                }
                realFieldElement2 = estimateError(realFieldElementArr2, tArr2, realFieldElementArr6, getStepSize());
                if (((RealFieldElement) realFieldElement2.subtract(1.0d)).getReal() >= 0.0d) {
                    realFieldElement3 = filterStep((RealFieldElement) getStepSize().multiply(MathUtils.min(this.maxGrowth, MathUtils.max(this.minReduction, (RealFieldElement) this.safety.multiply(realFieldElement2.pow(this.exp))))), z12, false);
                    realFieldElementArr4 = realFieldElementArr6;
                    realFieldElementArr3 = realFieldElementArr2;
                    d11 = 0.0d;
                    i10 = 0;
                } else {
                    realFieldElementArr4 = realFieldElementArr6;
                    realFieldElementArr3 = realFieldElementArr2;
                    d11 = 0.0d;
                    i10 = 0;
                }
            }
            RealFieldElement[] realFieldElementArr7 = realFieldElementArr4;
            RealFieldElement[][] realFieldElementArr8 = realFieldElementArr3;
            RealFieldElement realFieldElement6 = (RealFieldElement) getStepStart().getTime().add(getStepSize());
            int i19 = this.fsal;
            FieldODEStateAndDerivative fieldODEStateAndDerivative = new FieldODEStateAndDerivative(realFieldElement6, realFieldElementArr7, i19 >= 0 ? realFieldElementArr8[i19] : computeDerivatives(realFieldElement6, realFieldElementArr7));
            System.arraycopy(realFieldElementArr7, 0, tArr2, 0, mapState.length);
            T[] tArr3 = mapState;
            RealFieldElement realFieldElement7 = realFieldElement2;
            setStepStart(acceptStep(createInterpolator(z12, realFieldElementArr8, getStepStart(), fieldODEStateAndDerivative, fieldExpandableODE.getMapper()), t10));
            if (isLastStep()) {
                d10 = 0.0d;
                realFieldElement = realFieldElement3;
            } else {
                RealFieldElement realFieldElement8 = (RealFieldElement) getStepSize().multiply(MathUtils.min(this.maxGrowth, MathUtils.max(this.minReduction, (RealFieldElement) this.safety.multiply(realFieldElement7.pow(this.exp)))));
                RealFieldElement realFieldElement9 = (RealFieldElement) getStepStart().getTime().add(realFieldElement8);
                realFieldElement = filterStep(realFieldElement8, z12, !z12 ? ((RealFieldElement) realFieldElement9.subtract(t10)).getReal() > 0.0d : ((RealFieldElement) realFieldElement9.subtract(t10)).getReal() < 0.0d);
                RealFieldElement realFieldElement10 = (RealFieldElement) getStepStart().getTime().add(realFieldElement);
                if (z12) {
                    d10 = 0.0d;
                } else {
                    d10 = 0.0d;
                }
            }
            if (isLastStep()) {
                FieldODEStateAndDerivative<T> stepStart = getStepStart();
                resetInternalState();
                return stepStart;
            }
            realFieldElementArr3 = realFieldElementArr8;
            tArr = tArr2;
            i10 = 0;
            z11 = z13;
            mapState = tArr3;
            z10 = z12;
            realFieldElementArr4 = realFieldElementArr7;
            d11 = d10;
        }
    }

    public void setMaxGrowth(T t10) {
        this.maxGrowth = t10;
    }

    public void setMinReduction(T t10) {
        this.minReduction = t10;
    }

    public void setSafety(T t10) {
        this.safety = t10;
    }

    public T fraction(double d10, double d11) {
        return (T) ((RealFieldElement) getField().getOne().multiply(d10)).divide(d11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public EmbeddedRungeKuttaFieldIntegrator(Field<T> field, String str, int i10, double d10, double d11, double[] dArr, double[] dArr2) {
        super(field, str, d10, d11, dArr, dArr2);
        this.fsal = i10;
        this.f100268c = (T[]) getC();
        this.f100266a = (T[][]) getA();
        this.f100267b = (T[]) getB();
        this.exp = (T) field.getOne().divide(-getOrder());
        setSafety((RealFieldElement) field.getZero().add(0.9d));
        setMinReduction((RealFieldElement) field.getZero().add(0.2d));
        setMaxGrowth((RealFieldElement) field.getZero().add(10.0d));
    }
}
