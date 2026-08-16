package org.apache.commons.math3.optimization.univariate;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Incrementor;

@Deprecated
public class BracketFinder {
    private static final double EPS_MIN = 1.0E-21d;
    private static final double GOLD = 1.618034d;
    private final Incrementor evaluations;
    private double fHi;
    private double fLo;
    private double fMid;
    private final double growLimit;

    private double f100303hi;
    private double lo;
    private double mid;

    public BracketFinder() {
        this(100.0d, 50);
    }

    private double eval(UnivariateFunction univariateFunction, double d10) {
        try {
            this.evaluations.incrementCount();
            return univariateFunction.value(d10);
        } catch (MaxCountExceededException e10) {
            throw new TooManyEvaluationsException(e10.getMax());
        }
    }

    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    public double getFHi() {
        return this.fHi;
    }

    public double getFLo() {
        return this.fLo;
    }

    public double getFMid() {
        return this.fMid;
    }

    public double getHi() {
        return this.f100303hi;
    }

    public double getLo() {
        return this.lo;
    }

    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public double getMid() {
        return this.mid;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a4, code lost:
    
        r1 = r15;
        r5 = r9;
        r9 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0137, code lost:
    
        r5 = r5;
        r13 = r3;
        r3 = r7;
        r1 = r15;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void search(UnivariateFunction univariateFunction, GoalType goalType, double d10, double d11) {
        double d12;
        double d13;
        double d14;
        double d15;
        double d16;
        long j10;
        double eval;
        double d17;
        double eval2;
        this.evaluations.resetCount();
        boolean z10 = goalType == GoalType.MINIMIZE;
        double d18 = d10;
        double eval3 = eval(univariateFunction, d18);
        double d19 = d11;
        double eval4 = eval(univariateFunction, d19);
        if (!z10 ? eval3 > eval4 : eval3 < eval4) {
            d18 = d19;
            d19 = d18;
        } else {
            eval3 = eval4;
            eval4 = eval3;
        }
        double d20 = ((d18 - d19) * GOLD) + d18;
        double eval5 = eval(univariateFunction, d20);
        while (true) {
            if (z10) {
                if (eval5 >= eval4) {
                    break;
                }
                double d21 = d18 - d19;
                double d22 = (eval4 - eval5) * d21;
                double d23 = d18 - d20;
                double d24 = (eval4 - eval3) * d23;
                double d25 = d24 - d22;
                d13 = d18 - (((d23 * d24) - (d21 * d22)) / (FastMath.abs(d25) >= EPS_MIN ? 2.0E-21d : d25 * 2.0d));
                d15 = eval3;
                double d26 = d20 - d18;
                double d27 = (this.growLimit * d26) + d18;
                d16 = d13 - d20;
                if ((d18 - d13) * d16 <= 0.0d) {
                    eval2 = eval(univariateFunction, d13);
                    if (z10) {
                        if (eval2 < eval5) {
                            break;
                        }
                        if (z10) {
                            if (eval2 < eval4) {
                                break;
                            }
                            d27 = d20 + (d26 * GOLD);
                            eval = eval(univariateFunction, d27);
                        } else {
                            if (eval2 > eval4) {
                                break;
                            }
                            d27 = d20 + (d26 * GOLD);
                            eval = eval(univariateFunction, d27);
                        }
                    } else {
                        if (eval2 > eval5) {
                            break;
                        }
                        if (z10) {
                        }
                    }
                    d17 = eval4;
                    eval4 = eval5;
                    eval5 = eval;
                    d19 = d18;
                    d18 = d20;
                    d20 = d27;
                    eval3 = d17;
                } else {
                    double d28 = d13 - d27;
                    if ((d27 - d20) * d28 >= 0.0d) {
                        eval = eval(univariateFunction, d27);
                    } else if (d28 * (d20 - d13) > 0.0d) {
                        double eval6 = eval(univariateFunction, d13);
                        if (!z10 ? eval6 > eval5 : eval6 < eval5) {
                            j10 = 4609965796492119705L;
                            d19 = d18;
                            d18 = d20;
                            d20 = d13;
                            d17 = eval4;
                            eval4 = eval5;
                            eval5 = eval6;
                            eval3 = d17;
                        } else {
                            j10 = 4609965796492119705L;
                            double d29 = d13 + (d16 * GOLD);
                            eval4 = eval6;
                            eval3 = eval5;
                            eval5 = eval(univariateFunction, d29);
                            d19 = d20;
                            d20 = d29;
                            d18 = d13;
                        }
                    } else {
                        j10 = 4609965796492119705L;
                        d27 = d20 + (d26 * GOLD);
                        eval = eval(univariateFunction, d27);
                        d17 = eval4;
                        eval4 = eval5;
                        eval5 = eval;
                        d19 = d18;
                        d18 = d20;
                        d20 = d27;
                        eval3 = d17;
                    }
                }
                j10 = 4609965796492119705L;
                d17 = eval4;
                eval4 = eval5;
                eval5 = eval;
                d19 = d18;
                d18 = d20;
                d20 = d27;
                eval3 = d17;
            } else {
                if (eval5 <= eval4) {
                    break;
                }
                double d212 = d18 - d19;
                double d222 = (eval4 - eval5) * d212;
                double d232 = d18 - d20;
                double d242 = (eval4 - eval3) * d232;
                double d252 = d242 - d222;
                d13 = d18 - (((d232 * d242) - (d212 * d222)) / (FastMath.abs(d252) >= EPS_MIN ? 2.0E-21d : d252 * 2.0d));
                d15 = eval3;
                double d262 = d20 - d18;
                double d272 = (this.growLimit * d262) + d18;
                d16 = d13 - d20;
                if ((d18 - d13) * d16 <= 0.0d) {
                }
                j10 = 4609965796492119705L;
                d17 = eval4;
                eval4 = eval5;
                eval5 = eval;
                d19 = d18;
                d18 = d20;
                d20 = d272;
                eval3 = d17;
            }
            this.lo = d18;
            this.fLo = d12;
            this.mid = d13;
            this.fMid = eval4;
            this.f100303hi = d20;
            this.fHi = d14;
            if (d18 <= d20) {
                this.lo = d20;
                this.f100303hi = d18;
                this.fLo = d14;
                this.fHi = d12;
                return;
            }
            return;
        }
        d14 = eval2;
        d20 = d13;
        d12 = d15;
        d13 = d18;
        d18 = d19;
        this.lo = d18;
        this.fLo = d12;
        this.mid = d13;
        this.fMid = eval4;
        this.f100303hi = d20;
        this.fHi = d14;
        if (d18 <= d20) {
        }
    }

    public BracketFinder(double d10, int i10) {
        Incrementor incrementor = new Incrementor();
        this.evaluations = incrementor;
        if (d10 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d10));
        }
        if (i10 > 0) {
            this.growLimit = d10;
            incrementor.setMaximalCount(i10);
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i10));
    }
}
