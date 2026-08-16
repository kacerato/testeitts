package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.analysis.RealFieldUnivariateFunction;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.Decimal64;
import org.apache.commons.math3.util.IntegerSequence;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

public class FieldBracketingNthOrderBrentSolver<T extends RealFieldElement<T>> implements BracketedRealFieldUnivariateSolver<T> {
    private static final int MAXIMAL_AGING = 2;
    private final T absoluteAccuracy;
    private IntegerSequence.Incrementor evaluations;
    private final Field<T> field;
    private final T functionValueAccuracy;
    private final int maximalOrder;
    private final T relativeAccuracy;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution;

        static {
            int[] iArr = new int[AllowedSolution.values().length];
            $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution = iArr;
            try {
                iArr[AllowedSolution.ANY_SIDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[AllowedSolution.LEFT_SIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[AllowedSolution.RIGHT_SIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[AllowedSolution.BELOW_SIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[AllowedSolution.ABOVE_SIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public FieldBracketingNthOrderBrentSolver(T t10, T t11, T t12, int i10) throws NumberIsTooSmallException {
        if (i10 < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(i10), 2, true);
        }
        this.field = t10.getField();
        this.maximalOrder = i10;
        this.absoluteAccuracy = t11;
        this.relativeAccuracy = t10;
        this.functionValueAccuracy = t12;
        this.evaluations = IntegerSequence.Incrementor.create();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private T guessX(T t10, T[] tArr, T[] tArr2, int i10, int i11) {
        int i12;
        int i13 = i10;
        while (true) {
            i12 = i11 - 1;
            if (i13 >= i12) {
                break;
            }
            int i14 = i13 + 1;
            int i15 = i14 - i10;
            while (i12 > i13) {
                tArr[i12] = (RealFieldElement) ((RealFieldElement) tArr[i12].subtract((Decimal64) tArr[i12 - 1])).divide((RealFieldElement) tArr2[i12].subtract(tArr2[i12 - i15]));
                i12--;
            }
            i13 = i14;
        }
        T zero = this.field.getZero();
        while (i12 >= i10) {
            zero = (T) tArr[i12].add((Decimal64) zero.multiply(t10.subtract(tArr2[i12])));
            i12--;
        }
        return zero;
    }

    @Override
    public T getAbsoluteAccuracy() {
        return this.absoluteAccuracy;
    }

    @Override
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    @Override
    public T getFunctionValueAccuracy() {
        return this.functionValueAccuracy;
    }

    @Override
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public int getMaximalOrder() {
        return this.maximalOrder;
    }

    @Override
    public T getRelativeAccuracy() {
        return this.relativeAccuracy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T solve(int i10, RealFieldUnivariateFunction<T> realFieldUnivariateFunction, T t10, T t11, AllowedSolution allowedSolution) throws NullArgumentException, NoBracketingException {
        return (T) solve(i10, realFieldUnivariateFunction, t10, t11, (RealFieldElement) ((RealFieldElement) t10.add(t11)).divide(2.0d), allowedSolution);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0325, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:?, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0326, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0327, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0338, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r17.subtract(r19)).getReal() >= 0.0d) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x033c, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:?, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x016b, code lost:
    
        r17 = r14;
        r14 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02f3, code lost:
    
        r0 = org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver.AnonymousClass1.$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[r39.ordinal()];
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02fc, code lost:
    
        if (r0 == 1) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02ff, code lost:
    
        if (r0 == 2) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0302, code lost:
    
        if (r0 == 3) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0305, code lost:
    
        if (r0 == 4) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0308, code lost:
    
        if (r0 != 5) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0310, code lost:
    
        if (r14.getReal() >= 0.0d) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0313, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:?, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x031a, code lost:
    
        throw new org.apache.commons.math3.exception.MathInternalError(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0321, code lost:
    
        if (r14.getReal() > 0.0d) goto L104;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02cb  */
    /* JADX WARN: Type inference failed for: r0v21, types: [org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r0v31, types: [org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r0v37, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v38, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [T extends org.apache.commons.math3.RealFieldElement<T>, java.lang.Object, org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Object, org.apache.commons.math3.RealFieldElement[]] */
    /* JADX WARN: Type inference failed for: r19v0, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v24, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v43, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r33v0, types: [org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver<T extends org.apache.commons.math3.RealFieldElement<T>>, org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver] */
    /* JADX WARN: Type inference failed for: r5v3, types: [T extends org.apache.commons.math3.RealFieldElement<T>, org.apache.commons.math3.FieldElement] */
    /* JADX WARN: Type inference failed for: r7v0, types: [org.apache.commons.math3.analysis.RealFieldUnivariateFunction] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public T solve(int i10, RealFieldUnivariateFunction<T> realFieldUnivariateFunction, T t10, T t11, T t12, AllowedSolution allowedSolution) throws NullArgumentException, NoBracketingException {
        int i11;
        int i12;
        int i13;
        int i14;
        RealFieldElement realFieldElement;
        T t13;
        T t14;
        int i15;
        T t15;
        T t16;
        RealFieldElement realFieldElement2;
        int i16;
        RealFieldElement realFieldElement3;
        RealFieldElement realFieldElement4;
        int i17;
        RealFieldElement[] realFieldElementArr;
        int i18;
        RealFieldElement realFieldElement5;
        T t17;
        int i19;
        double d10;
        T guessX;
        RealFieldElement realFieldElement6;
        int i20;
        int i21;
        int i22;
        int i23;
        FieldBracketingNthOrderBrentSolver fieldBracketingNthOrderBrentSolver = this;
        ?? r72 = realFieldUnivariateFunction;
        MathUtils.checkNotNull(realFieldUnivariateFunction);
        fieldBracketingNthOrderBrentSolver.evaluations = fieldBracketingNthOrderBrentSolver.evaluations.withMaximalCount(i10).withStart(0);
        T zero = fieldBracketingNthOrderBrentSolver.field.getZero();
        RealFieldElement realFieldElement7 = (RealFieldElement) zero.add(Double.NaN);
        RealFieldElement[] realFieldElementArr2 = (RealFieldElement[]) MathArrays.buildArray(fieldBracketingNthOrderBrentSolver.field, fieldBracketingNthOrderBrentSolver.maximalOrder + 1);
        ?? r13 = (RealFieldElement[]) MathArrays.buildArray(fieldBracketingNthOrderBrentSolver.field, fieldBracketingNthOrderBrentSolver.maximalOrder + 1);
        realFieldElementArr2[0] = t10;
        realFieldElementArr2[1] = t12;
        realFieldElementArr2[2] = t11;
        fieldBracketingNthOrderBrentSolver.evaluations.increment();
        RealFieldElement value = r72.value(realFieldElementArr2[1]);
        r13[1] = value;
        double d11 = 0.0d;
        if (Precision.equals(value.getReal(), 0.0d, 1)) {
            return (T) realFieldElementArr2[1];
        }
        fieldBracketingNthOrderBrentSolver.evaluations.increment();
        RealFieldElement value2 = r72.value(realFieldElementArr2[0]);
        r13[0] = value2;
        if (Precision.equals(value2.getReal(), 0.0d, 1)) {
            return (T) realFieldElementArr2[0];
        }
        if (((RealFieldElement) r13[0].multiply(r13[1])).getReal() < 0.0d) {
            i11 = 1;
            i12 = 2;
        } else {
            fieldBracketingNthOrderBrentSolver.evaluations.increment();
            RealFieldElement value3 = r72.value(realFieldElementArr2[2]);
            r13[2] = value3;
            if (Precision.equals(value3.getReal(), 0.0d, 1)) {
                return (T) realFieldElementArr2[2];
            }
            if (((RealFieldElement) r13[1].multiply(r13[2])).getReal() >= 0.0d) {
                throw new NoBracketingException(realFieldElementArr2[0].getReal(), realFieldElementArr2[2].getReal(), r13[0].getReal(), r13[2].getReal());
            }
            i11 = 2;
            i12 = 3;
        }
        RealFieldElement[] realFieldElementArr3 = (RealFieldElement[]) MathArrays.buildArray(fieldBracketingNthOrderBrentSolver.field, realFieldElementArr2.length);
        int i24 = i11 - 1;
        RealFieldElement realFieldElement8 = realFieldElementArr2[i24];
        ?? r22 = r13[i24];
        RealFieldElement realFieldElement9 = (RealFieldElement) realFieldElement8.abs();
        RealFieldElement realFieldElement10 = (RealFieldElement) r22.abs();
        RealFieldElement realFieldElement11 = realFieldElementArr2[i11];
        ?? r19 = r13[i11];
        RealFieldElement realFieldElement12 = (RealFieldElement) realFieldElement11.abs();
        ?? r11 = realFieldElement8;
        RealFieldElement realFieldElement13 = realFieldElement10;
        RealFieldElement realFieldElement14 = realFieldElement11;
        T t18 = r19;
        RealFieldElement realFieldElement15 = (RealFieldElement) r19.abs();
        int i25 = 0;
        int i26 = 0;
        int i27 = i11;
        T t19 = r22;
        RealFieldUnivariateFunction<T> realFieldUnivariateFunction2 = r72;
        while (true) {
            RealFieldElement realFieldElement16 = ((RealFieldElement) realFieldElement9.subtract(realFieldElement12)).getReal() < d11 ? realFieldElement12 : realFieldElement9;
            RealFieldElement realFieldElement17 = realFieldElement15;
            if (((RealFieldElement) realFieldElement13.subtract(realFieldElement17)).getReal() < 0.0d) {
                i13 = i12;
                i14 = i27;
                realFieldElement = realFieldElement17;
            } else {
                i13 = i12;
                i14 = i27;
                realFieldElement = realFieldElement13;
            }
            RealFieldElement realFieldElement18 = realFieldElement17;
            RealFieldElement realFieldElement19 = (RealFieldElement) fieldBracketingNthOrderBrentSolver.absoluteAccuracy.add(fieldBracketingNthOrderBrentSolver.relativeAccuracy.multiply(realFieldElement16));
            ?? r52 = realFieldElement14;
            double d12 = 0.0d;
            if (((RealFieldElement) ((RealFieldElement) r52.subtract(r11)).subtract(realFieldElement19)).getReal() <= 0.0d || ((RealFieldElement) realFieldElement.subtract(fieldBracketingNthOrderBrentSolver.functionValueAccuracy)).getReal() < 0.0d) {
                break;
            }
            RealFieldElement realFieldElement20 = realFieldElement12;
            int i28 = i25;
            if (i28 >= 2) {
                T t20 = t18;
                t15 = (RealFieldElement) ((RealFieldElement) t20.divide(16.0d)).negate();
                t14 = t20;
                t13 = zero;
                i15 = i26;
            } else {
                t13 = zero;
                t14 = t18;
                i15 = i26;
                t15 = i15 >= 2 ? (RealFieldElement) ((RealFieldElement) t19.divide(16.0d)).negate() : t13;
            }
            int i29 = i13;
            int i30 = 0;
            RealFieldElement realFieldElement21 = r52;
            while (true) {
                System.arraycopy(realFieldElementArr2, i30, realFieldElementArr3, i30, i29 - i30);
                t16 = t19;
                realFieldElement2 = realFieldElement7;
                i16 = i13;
                realFieldElement3 = realFieldElement13;
                realFieldElement4 = realFieldElement9;
                i17 = i14;
                realFieldElementArr = realFieldElementArr3;
                i18 = i15;
                realFieldElement5 = realFieldElement18;
                t17 = t14;
                int i31 = i30;
                i19 = i28;
                d10 = d12;
                RealFieldElement realFieldElement22 = realFieldElement21;
                guessX = guessX(t15, realFieldElementArr3, r13, i30, i29);
                if (((RealFieldElement) guessX.subtract((RealFieldElement) r11)).getReal() > d10) {
                    realFieldElement6 = realFieldElement22;
                    if (((RealFieldElement) guessX.subtract(realFieldElement6)).getReal() < d10) {
                        i30 = i31;
                        if (!Double.isNaN(guessX.getReal()) || i29 - i30 <= 1) {
                            break;
                        }
                        realFieldElement21 = realFieldElement6;
                        d12 = d10;
                        t19 = t16;
                        realFieldElement13 = realFieldElement3;
                        realFieldElementArr3 = realFieldElementArr;
                        i28 = i19;
                        i15 = i18;
                        t14 = t17;
                        realFieldElement18 = realFieldElement5;
                        i13 = i16;
                        i14 = i17;
                        realFieldElement7 = realFieldElement2;
                        realFieldElement9 = realFieldElement4;
                    }
                } else {
                    realFieldElement6 = realFieldElement22;
                }
                if (i17 - i31 >= i29 - i17) {
                    i30 = i31 + 1;
                } else {
                    i29--;
                    i30 = i31;
                }
                guessX = realFieldElement2;
                if (!Double.isNaN(guessX.getReal())) {
                    break;
                }
                break;
            }
            if (Double.isNaN(guessX.getReal())) {
                guessX = (T) r11.add(((RealFieldElement) realFieldElement6.subtract((RealFieldElement) r11)).divide(2.0d));
                i30 = i17 - 1;
                i20 = i17;
            } else {
                i20 = i29;
            }
            fieldBracketingNthOrderBrentSolver.evaluations.increment();
            T value4 = realFieldUnivariateFunction2.value(guessX);
            if (Precision.equals(value4.getReal(), d10, 1)) {
                return (T) guessX;
            }
            if (i16 > 2 && (i21 = i20 - i30) != i16) {
                System.arraycopy(realFieldElementArr2, i30, realFieldElementArr2, 0, i21);
                System.arraycopy(r13, i30, r13, 0, i21);
                i22 = i17 - i30;
            } else {
                if (i16 == realFieldElementArr2.length) {
                    i21 = i16 - 1;
                    if (i17 >= (realFieldElementArr2.length + 1) / 2) {
                        System.arraycopy(realFieldElementArr2, 1, realFieldElementArr2, 0, i21);
                        System.arraycopy(r13, 1, r13, 0, i21);
                        i22 = i17 - 1;
                    }
                } else {
                    i21 = i16;
                }
                int i32 = i17 + 1;
                int i33 = i21 - i17;
                System.arraycopy(realFieldElementArr2, i17, realFieldElementArr2, i32, i33);
                realFieldElementArr2[i17] = guessX;
                System.arraycopy(r13, i17, r13, i32, i33);
                r13[i17] = value4;
                int i34 = i21 + 1;
                if (((RealFieldElement) value4.multiply(t16)).getReal() > d10) {
                    i23 = i19 + 1;
                    realFieldElement15 = (RealFieldElement) value4.abs();
                    t18 = value4;
                    i26 = 0;
                    realFieldElement6 = guessX;
                    t19 = t16;
                    realFieldElement13 = realFieldElement3;
                } else {
                    i26 = i18 + 1;
                    r11 = guessX;
                    t19 = value4;
                    i17 = i32;
                    realFieldElement13 = (RealFieldElement) value4.abs();
                    t18 = t17;
                    realFieldElement15 = realFieldElement5;
                    i23 = 0;
                }
                fieldBracketingNthOrderBrentSolver = this;
                realFieldUnivariateFunction2 = realFieldUnivariateFunction;
                realFieldElementArr3 = realFieldElementArr;
                realFieldElement7 = realFieldElement2;
                i25 = i23;
                d11 = d10;
                zero = t13;
                realFieldElement12 = realFieldElement20;
                realFieldElement14 = realFieldElement6;
                i12 = i34;
                i27 = i17;
                realFieldElement9 = realFieldElement4;
                r11 = r11;
            }
            i17 = i22;
            int i322 = i17 + 1;
            int i332 = i21 - i17;
            System.arraycopy(realFieldElementArr2, i17, realFieldElementArr2, i322, i332);
            realFieldElementArr2[i17] = guessX;
            System.arraycopy(r13, i17, r13, i322, i332);
            r13[i17] = value4;
            int i342 = i21 + 1;
            if (((RealFieldElement) value4.multiply(t16)).getReal() > d10) {
            }
            fieldBracketingNthOrderBrentSolver = this;
            realFieldUnivariateFunction2 = realFieldUnivariateFunction;
            realFieldElementArr3 = realFieldElementArr;
            realFieldElement7 = realFieldElement2;
            i25 = i23;
            d11 = d10;
            zero = t13;
            realFieldElement12 = realFieldElement20;
            realFieldElement14 = realFieldElement6;
            i12 = i342;
            i27 = i17;
            realFieldElement9 = realFieldElement4;
            r11 = r11;
        }
    }
}
