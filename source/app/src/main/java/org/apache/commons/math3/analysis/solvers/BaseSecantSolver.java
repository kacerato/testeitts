package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.util.FastMath;

public abstract class BaseSecantSolver extends AbstractUnivariateSolver implements BracketedUnivariateSolver<UnivariateFunction> {
    protected static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;
    private AllowedSolution allowed;
    private final Method method;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution;
        static final int[] $SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method;

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
            int[] iArr2 = new int[Method.values().length];
            $SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method = iArr2;
            try {
                iArr2[Method.ILLINOIS.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method[Method.PEGASUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method[Method.REGULA_FALSI.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public enum Method {
        REGULA_FALSI,
        ILLINOIS,
        PEGASUS
    }

    public BaseSecantSolver(double d10, Method method) {
        super(d10);
        this.allowed = AllowedSolution.ANY_SIDE;
        this.method = method;
    }

    @Override
    public final double doSolve() throws ConvergenceException {
        double d10;
        double min = getMin();
        double max = getMax();
        double computeObjectiveValue = computeObjectiveValue(min);
        double computeObjectiveValue2 = computeObjectiveValue(max);
        double d11 = 0.0d;
        if (computeObjectiveValue == 0.0d) {
            return min;
        }
        if (computeObjectiveValue2 == 0.0d) {
            return max;
        }
        verifyBracketing(min, max);
        double functionValueAccuracy = getFunctionValueAccuracy();
        double absoluteAccuracy = getAbsoluteAccuracy();
        double relativeAccuracy = getRelativeAccuracy();
        boolean z10 = false;
        while (true) {
            double d12 = min;
            d10 = max - (((max - min) * computeObjectiveValue2) / (computeObjectiveValue2 - computeObjectiveValue));
            double computeObjectiveValue3 = computeObjectiveValue(d10);
            if (computeObjectiveValue3 == d11) {
                return d10;
            }
            if (computeObjectiveValue2 * computeObjectiveValue3 < d11) {
                d12 = max;
                z10 = !z10;
                computeObjectiveValue = computeObjectiveValue2;
            } else {
                int i10 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method[this.method.ordinal()];
                if (i10 == 1) {
                    computeObjectiveValue *= 0.5d;
                } else if (i10 == 2) {
                    computeObjectiveValue *= computeObjectiveValue2 / (computeObjectiveValue2 + computeObjectiveValue3);
                } else {
                    if (i10 != 3) {
                        throw new MathInternalError();
                    }
                    if (d10 == max) {
                        throw new ConvergenceException();
                    }
                }
            }
            if (FastMath.abs(computeObjectiveValue3) <= functionValueAccuracy) {
                int i11 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[this.allowed.ordinal()];
                if (i11 != 1) {
                    if (i11 == 2) {
                        if (z10) {
                            break;
                        }
                    } else if (i11 != 3) {
                        if (i11 != 4) {
                            if (i11 != 5) {
                                throw new MathInternalError();
                            }
                            if (computeObjectiveValue3 >= d11) {
                                return d10;
                            }
                        } else if (computeObjectiveValue3 <= 0.0d) {
                            return d10;
                        }
                    } else if (!z10) {
                        return d10;
                    }
                } else {
                    break;
                }
            }
            double d13 = computeObjectiveValue;
            if (FastMath.abs(d10 - d12) < FastMath.max(relativeAccuracy * FastMath.abs(d10), absoluteAccuracy)) {
                int i12 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution[this.allowed.ordinal()];
                if (i12 == 1) {
                    return d10;
                }
                if (i12 == 2) {
                    return z10 ? d10 : d12;
                }
                if (i12 == 3) {
                    return z10 ? d12 : d10;
                }
                if (i12 == 4) {
                    return computeObjectiveValue3 <= 0.0d ? d10 : d12;
                }
                if (i12 == 5) {
                    return computeObjectiveValue3 >= d11 ? d10 : d12;
                }
                throw new MathInternalError();
            }
            max = d10;
            computeObjectiveValue2 = computeObjectiveValue3;
            min = d12;
            computeObjectiveValue = d13;
            d11 = 0.0d;
        }
        return d10;
    }

    @Override
    public double solve(int i10, UnivariateFunction univariateFunction, double d10, double d11, AllowedSolution allowedSolution) {
        return solve(i10, univariateFunction, d10, d11, d10 + ((d11 - d10) * 0.5d), allowedSolution);
    }

    @Override
    public double solve(int i10, UnivariateFunction univariateFunction, double d10, double d11, double d12, AllowedSolution allowedSolution) {
        this.allowed = allowedSolution;
        return super.solve(i10, (int) univariateFunction, d10, d11, d12);
    }

    public BaseSecantSolver(double d10, double d11, Method method) {
        super(d10, d11);
        this.allowed = AllowedSolution.ANY_SIDE;
        this.method = method;
    }

    @Override
    public double solve(int i10, UnivariateFunction univariateFunction, double d10, double d11, double d12) {
        return solve(i10, univariateFunction, d10, d11, d12, AllowedSolution.ANY_SIDE);
    }

    public BaseSecantSolver(double d10, double d11, double d12, Method method) {
        super(d10, d11, d12);
        this.allowed = AllowedSolution.ANY_SIDE;
        this.method = method;
    }
}
