package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

public class UnivariateSolverUtils {
    private UnivariateSolverUtils() {
    }

    public static double[] bracket(UnivariateFunction univariateFunction, double d10, double d11, double d12) throws NullArgumentException, NotStrictlyPositiveException, NoBracketingException {
        return bracket(univariateFunction, d10, d11, d12, 1.0d, 1.0d, Integer.MAX_VALUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006a, code lost:
    
        if (r23 >= 0.0d) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
    
        r12 = false;
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0076, code lost:
    
        if (r23 <= 0.0d) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static double forceSide(int i10, UnivariateFunction univariateFunction, BracketedUnivariateSolver<UnivariateFunction> bracketedUnivariateSolver, double d10, double d11, double d12, AllowedSolution allowedSolution) throws NoBracketingException {
        if (allowedSolution == AllowedSolution.ANY_SIDE) {
            return d10;
        }
        double max = FastMath.max(bracketedUnivariateSolver.getAbsoluteAccuracy(), FastMath.abs(bracketedUnivariateSolver.getRelativeAccuracy() * d10));
        double max2 = FastMath.max(d11, d10 - max);
        double value = univariateFunction.value(max2);
        double min = FastMath.min(d12, d10 + max);
        int i11 = i10 - 2;
        double d13 = max2;
        double d14 = value;
        double d15 = min;
        double value2 = univariateFunction.value(min);
        while (i11 > 0) {
            if ((d14 >= 0.0d && value2 <= 0.0d) || (d14 <= 0.0d && value2 >= 0.0d)) {
                return bracketedUnivariateSolver.solve(i11, univariateFunction, d13, d15, d10, allowedSolution);
            }
            boolean z10 = false;
            boolean z11 = true;
            if (d14 >= value2) {
                if (d14 <= value2) {
                    z10 = true;
                }
                if (z10) {
                    double max3 = FastMath.max(d11, d13 - max);
                    i11--;
                    d13 = max3;
                    d14 = univariateFunction.value(max3);
                }
                if (z11) {
                    double min2 = FastMath.min(d12, d15 + max);
                    i11--;
                    d15 = min2;
                    value2 = univariateFunction.value(min2);
                }
            }
        }
        throw new NoBracketingException(LocalizedFormats.FAILED_BRACKETING, d13, d15, d14, value2, Integer.valueOf(i10 - i11), Integer.valueOf(i10), Double.valueOf(d10), Double.valueOf(d11), Double.valueOf(d12));
    }

    public static boolean isBracketing(UnivariateFunction univariateFunction, double d10, double d11) throws NullArgumentException {
        if (univariateFunction == null) {
            throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
        }
        double value = univariateFunction.value(d10);
        double value2 = univariateFunction.value(d11);
        return (value >= 0.0d && value2 <= 0.0d) || (value <= 0.0d && value2 >= 0.0d);
    }

    public static boolean isSequence(double d10, double d11, double d12) {
        return d10 < d11 && d11 < d12;
    }

    public static double midpoint(double d10, double d11) {
        return (d10 + d11) * 0.5d;
    }

    public static double solve(UnivariateFunction univariateFunction, double d10, double d11) throws NullArgumentException, NoBracketingException {
        if (univariateFunction != null) {
            return new BrentSolver().solve(Integer.MAX_VALUE, univariateFunction, d10, d11);
        }
        throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
    }

    public static void verifyBracketing(UnivariateFunction univariateFunction, double d10, double d11) throws NullArgumentException, NoBracketingException {
        if (univariateFunction == null) {
            throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
        }
        verifyInterval(d10, d11);
        if (!isBracketing(univariateFunction, d10, d11)) {
            throw new NoBracketingException(d10, d11, univariateFunction.value(d10), univariateFunction.value(d11));
        }
    }

    public static void verifyInterval(double d10, double d11) throws NumberIsTooLargeException {
        if (d10 >= d11) {
            throw new NumberIsTooLargeException(LocalizedFormats.ENDPOINTS_NOT_AN_INTERVAL, Double.valueOf(d10), Double.valueOf(d11), false);
        }
    }

    public static void verifySequence(double d10, double d11, double d12) throws NumberIsTooLargeException {
        verifyInterval(d10, d11);
        verifyInterval(d11, d12);
    }

    public static double[] bracket(UnivariateFunction univariateFunction, double d10, double d11, double d12, int i10) throws NullArgumentException, NotStrictlyPositiveException, NoBracketingException {
        return bracket(univariateFunction, d10, d11, d12, 1.0d, 1.0d, i10);
    }

    public static double[] bracket(UnivariateFunction univariateFunction, double d10, double d11, double d12, double d13, double d14, int i10) throws NoBracketingException {
        long j10;
        UnivariateFunction univariateFunction2 = univariateFunction;
        if (univariateFunction2 == null) {
            throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
        }
        if (d13 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d13));
        }
        if (i10 > 0) {
            double d15 = d10;
            verifySequence(d11, d15, d12);
            double d16 = Double.NaN;
            double d17 = d15;
            double d18 = Double.NaN;
            double d19 = 0.0d;
            int i11 = 0;
            while (i11 < i10 && (d15 > d11 || d17 < d12)) {
                d19 = (d19 * d14) + d13;
                double max = FastMath.max(d10 - d19, d11);
                int i12 = i11;
                double min = FastMath.min(d10 + d19, d12);
                double value = univariateFunction2.value(max);
                double value2 = univariateFunction2.value(min);
                if (i12 == 0) {
                    j10 = 0;
                    if (value * value2 <= 0.0d) {
                        return new double[]{max, min};
                    }
                } else {
                    j10 = 0;
                    if (d16 * value <= 0.0d) {
                        return new double[]{max, d15};
                    }
                    if (d18 * value2 <= 0.0d) {
                        return new double[]{d17, min};
                    }
                }
                univariateFunction2 = univariateFunction;
                d17 = min;
                d15 = max;
                d18 = value2;
                i11 = i12 + 1;
                d16 = value;
            }
            throw new NoBracketingException(d15, d17, d16, d18);
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.INVALID_MAX_ITERATIONS, Integer.valueOf(i10));
    }

    public static double solve(UnivariateFunction univariateFunction, double d10, double d11, double d12) throws NullArgumentException, NoBracketingException {
        if (univariateFunction != null) {
            return new BrentSolver(d12).solve(Integer.MAX_VALUE, univariateFunction, d10, d11);
        }
        throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
    }
}
