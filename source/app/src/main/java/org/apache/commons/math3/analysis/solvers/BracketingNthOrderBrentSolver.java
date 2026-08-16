package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

public class BracketingNthOrderBrentSolver extends AbstractUnivariateSolver implements BracketedUnivariateSolver<UnivariateFunction> {
    private static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;
    private static final int DEFAULT_MAXIMAL_ORDER = 5;
    private static final int MAXIMAL_AGING = 2;
    private static final double REDUCTION_FACTOR = 0.0625d;
    private AllowedSolution allowed;
    private final int maximalOrder;

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

    public BracketingNthOrderBrentSolver() {
        this(1.0E-6d, 5);
    }

    private double guessX(double d10, double[] dArr, double[] dArr2, int i10, int i11) {
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
                dArr[i12] = (dArr[i12] - dArr[i12 - 1]) / (dArr2[i12] - dArr2[i12 - i15]);
                i12--;
            }
            i13 = i14;
        }
        double d11 = 0.0d;
        while (i12 >= i10) {
            d11 = (d11 * (d10 - dArr2[i12])) + dArr[i12];
            i12--;
        }
        return d11;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0184 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0149  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public double doSolve() throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        int i10;
        int i11;
        int i12;
        int i13;
        double d10;
        double d11;
        double d12;
        double d13;
        double d14;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        double d15;
        int i19;
        double[] dArr;
        double d16;
        int i20;
        double guessX;
        int i21;
        double computeObjectiveValue;
        int i22;
        int i23;
        double abs;
        double d17;
        int i24;
        int i25;
        int i26 = this.maximalOrder;
        int i27 = i26 + 1;
        double[] dArr2 = new double[i27];
        double[] dArr3 = new double[i26 + 1];
        dArr2[0] = getMin();
        dArr2[1] = getStartValue();
        double max = getMax();
        dArr2[2] = max;
        verifySequence(dArr2[0], dArr2[1], max);
        double computeObjectiveValue2 = computeObjectiveValue(dArr2[1]);
        dArr3[1] = computeObjectiveValue2;
        if (Precision.equals(computeObjectiveValue2, 0.0d, 1)) {
            return dArr2[1];
        }
        double computeObjectiveValue3 = computeObjectiveValue(dArr2[0]);
        dArr3[0] = computeObjectiveValue3;
        if (Precision.equals(computeObjectiveValue3, 0.0d, 1)) {
            return dArr2[0];
        }
        if (dArr3[0] * dArr3[1] < 0.0d) {
            i10 = 1;
            i11 = 2;
        } else {
            double computeObjectiveValue4 = computeObjectiveValue(dArr2[2]);
            dArr3[2] = computeObjectiveValue4;
            if (Precision.equals(computeObjectiveValue4, 0.0d, 1)) {
                return dArr2[2];
            }
            if (dArr3[1] * dArr3[2] >= 0.0d) {
                throw new NoBracketingException(dArr2[0], dArr2[2], dArr3[0], dArr3[2]);
            }
            i10 = 2;
            i11 = 3;
        }
        double[] dArr4 = new double[i27];
        int i28 = i10 - 1;
        double d18 = dArr2[i28];
        double d19 = dArr3[i28];
        double abs2 = FastMath.abs(d19);
        double d20 = dArr2[i10];
        double d21 = dArr3[i10];
        double abs3 = FastMath.abs(d21);
        double d22 = d21;
        double d23 = d20;
        int i29 = i10;
        int i30 = 0;
        int i31 = 0;
        double d24 = abs2;
        double d25 = d18;
        double d26 = d19;
        while (true) {
            int i32 = i26;
            int i33 = i27;
            double d27 = d23 - d25;
            if (d27 <= getAbsoluteAccuracy() + (getRelativeAccuracy() * FastMath.max(FastMath.abs(d25), FastMath.abs(d23))) || FastMath.max(d24, abs3) < getFunctionValueAccuracy()) {
                break;
            }
            if (i31 >= 2) {
                d11 = (1 << (i31 - 2)) - 1;
                i12 = i11;
                i13 = i31;
                d12 = i31 - 1;
                d13 = d11 * d26;
                d14 = REDUCTION_FACTOR * d12 * d22;
            } else {
                i12 = i11;
                i13 = i31;
                if (i30 >= 2) {
                    d11 = i30 - 1;
                    d12 = (1 << (i30 - 2)) - 1;
                    d13 = d12 * d22;
                    d14 = REDUCTION_FACTOR * d11 * d26;
                } else {
                    d10 = 0.0d;
                    i14 = i12;
                    i15 = 0;
                    while (true) {
                        System.arraycopy(dArr2, i15, dArr4, i15, i14 - i15);
                        i16 = i30;
                        i17 = i12;
                        i18 = i13;
                        d15 = d24;
                        i19 = i29;
                        dArr = dArr4;
                        d16 = abs3;
                        i20 = i15;
                        guessX = guessX(d10, dArr4, dArr3, i15, i14);
                        if (guessX > d25 || guessX >= d23) {
                            if (i19 - i20 < i14 - i19) {
                                i15 = i20 + 1;
                            } else {
                                i14--;
                                i15 = i20;
                            }
                            guessX = Double.NaN;
                        } else {
                            i15 = i20;
                        }
                        if (!Double.isNaN(guessX) || i14 - i15 <= 1) {
                            break;
                        }
                        i29 = i19;
                        dArr4 = dArr;
                        i30 = i16;
                        i13 = i18;
                        d24 = d15;
                        abs3 = d16;
                        i12 = i17;
                    }
                    if (Double.isNaN(guessX)) {
                        i21 = i14;
                    } else {
                        guessX = d25 + (d27 * 0.5d);
                        i15 = i19 - 1;
                        i21 = i19;
                    }
                    computeObjectiveValue = computeObjectiveValue(guessX);
                    if (!Precision.equals(computeObjectiveValue, 0.0d, 1)) {
                        return guessX;
                    }
                    if (i17 <= 2 || (i25 = i21 - i15) == i17) {
                        i22 = i33;
                        if (i17 == i22) {
                            i23 = i17 - 1;
                            if (i19 >= (i32 + 2) / 2) {
                                System.arraycopy(dArr2, 1, dArr2, 0, i23);
                                System.arraycopy(dArr3, 1, dArr3, 0, i23);
                                i29 = i19 - 1;
                            }
                        } else {
                            i23 = i17;
                        }
                        i29 = i19;
                    } else {
                        System.arraycopy(dArr2, i15, dArr2, 0, i25);
                        System.arraycopy(dArr3, i15, dArr3, 0, i25);
                        i29 = i19 - i15;
                        i23 = i25;
                        i22 = i33;
                    }
                    int i34 = i29 + 1;
                    int i35 = i23 - i29;
                    System.arraycopy(dArr2, i29, dArr2, i34, i35);
                    dArr2[i29] = guessX;
                    System.arraycopy(dArr3, i29, dArr3, i34, i35);
                    dArr3[i29] = computeObjectiveValue;
                    int i36 = i23 + 1;
                    if (computeObjectiveValue * d26 <= 0.0d) {
                        d17 = FastMath.abs(computeObjectiveValue);
                        i24 = i18 + 1;
                        d23 = guessX;
                        d22 = computeObjectiveValue;
                        computeObjectiveValue = d26;
                        abs = d15;
                        i30 = 0;
                    } else {
                        abs = FastMath.abs(computeObjectiveValue);
                        d25 = guessX;
                        i30 = i16 + 1;
                        i29 = i34;
                        d17 = d16;
                        i24 = 0;
                    }
                    i11 = i36;
                    double d28 = d17;
                    i27 = i22;
                    i31 = i24;
                    i26 = i32;
                    double d29 = computeObjectiveValue;
                    dArr4 = dArr;
                    d24 = abs;
                    d26 = d29;
                    abs3 = d28;
                }
            }
            d10 = (d13 - d14) / (d11 + d12);
            i14 = i12;
            i15 = 0;
            while (true) {
                System.arraycopy(dArr2, i15, dArr4, i15, i14 - i15);
                i16 = i30;
                i17 = i12;
                i18 = i13;
                d15 = d24;
                i19 = i29;
                dArr = dArr4;
                d16 = abs3;
                i20 = i15;
                guessX = guessX(d10, dArr4, dArr3, i15, i14);
                if (guessX > d25) {
                }
                if (i19 - i20 < i14 - i19) {
                }
                guessX = Double.NaN;
                if (!Double.isNaN(guessX)) {
                    break;
                }
                break;
                i29 = i19;
                dArr4 = dArr;
                i30 = i16;
                i13 = i18;
                d24 = d15;
                abs3 = d16;
                i12 = i17;
            }
            if (Double.isNaN(guessX)) {
            }
            computeObjectiveValue = computeObjectiveValue(guessX);
            if (!Precision.equals(computeObjectiveValue, 0.0d, 1)) {
            }
        }
        double d30 = d24;
        double d31 = abs3;
        int i37 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[this.allowed.ordinal()];
        if (i37 == 1) {
            return d30 < d31 ? d25 : d23;
        }
        if (i37 == 2) {
            return d25;
        }
        if (i37 == 3) {
            return d23;
        }
        if (i37 == 4) {
            return d26 <= 0.0d ? d25 : d23;
        }
        if (i37 == 5) {
            return d26 < 0.0d ? d23 : d25;
        }
        throw new MathInternalError();
    }

    public int getMaximalOrder() {
        return this.maximalOrder;
    }

    @Override
    public double solve(int i10, UnivariateFunction univariateFunction, double d10, double d11, AllowedSolution allowedSolution) throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        this.allowed = allowedSolution;
        return super.solve(i10, univariateFunction, d10, d11);
    }

    public BracketingNthOrderBrentSolver(double d10, int i10) throws NumberIsTooSmallException {
        super(d10);
        if (i10 >= 2) {
            this.maximalOrder = i10;
            this.allowed = AllowedSolution.ANY_SIDE;
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(i10), 2, true);
    }

    @Override
    public double solve(int i10, UnivariateFunction univariateFunction, double d10, double d11, double d12, AllowedSolution allowedSolution) throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        this.allowed = allowedSolution;
        return super.solve(i10, (int) univariateFunction, d10, d11, d12);
    }

    public BracketingNthOrderBrentSolver(double d10, double d11, int i10) throws NumberIsTooSmallException {
        super(d10, d11);
        if (i10 >= 2) {
            this.maximalOrder = i10;
            this.allowed = AllowedSolution.ANY_SIDE;
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(i10), 2, true);
    }

    public BracketingNthOrderBrentSolver(double d10, double d11, double d12, int i10) throws NumberIsTooSmallException {
        super(d10, d11, d12);
        if (i10 >= 2) {
            this.maximalOrder = i10;
            this.allowed = AllowedSolution.ANY_SIDE;
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(i10), 2, true);
    }
}
