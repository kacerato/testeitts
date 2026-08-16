package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.IntegerSequence;
import org.apache.commons.math3.util.MathUtils;

public abstract class BaseAbstractUnivariateSolver<FUNC extends UnivariateFunction> implements BaseUnivariateSolver<FUNC> {
    private static final double DEFAULT_FUNCTION_VALUE_ACCURACY = 1.0E-15d;
    private static final double DEFAULT_RELATIVE_ACCURACY = 1.0E-14d;
    private final double absoluteAccuracy;
    private IntegerSequence.Incrementor evaluations;
    private FUNC function;
    private final double functionValueAccuracy;
    private final double relativeAccuracy;
    private double searchMax;
    private double searchMin;
    private double searchStart;

    public BaseAbstractUnivariateSolver(double d10) {
        this(DEFAULT_RELATIVE_ACCURACY, d10, 1.0E-15d);
    }

    public double computeObjectiveValue(double d10) throws TooManyEvaluationsException {
        incrementEvaluationCount();
        return this.function.value(d10);
    }

    public abstract double doSolve() throws TooManyEvaluationsException, NoBracketingException;

    @Override
    public double getAbsoluteAccuracy() {
        return this.absoluteAccuracy;
    }

    @Override
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    @Override
    public double getFunctionValueAccuracy() {
        return this.functionValueAccuracy;
    }

    public double getMax() {
        return this.searchMax;
    }

    @Override
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public double getMin() {
        return this.searchMin;
    }

    @Override
    public double getRelativeAccuracy() {
        return this.relativeAccuracy;
    }

    public double getStartValue() {
        return this.searchStart;
    }

    public void incrementEvaluationCount() throws TooManyEvaluationsException {
        try {
            this.evaluations.increment();
        } catch (MaxCountExceededException e10) {
            throw new TooManyEvaluationsException(e10.getMax());
        }
    }

    public boolean isBracketing(double d10, double d11) {
        return UnivariateSolverUtils.isBracketing(this.function, d10, d11);
    }

    public boolean isSequence(double d10, double d11, double d12) {
        return UnivariateSolverUtils.isSequence(d10, d11, d12);
    }

    public void setup(int i10, FUNC func, double d10, double d11, double d12) throws NullArgumentException {
        MathUtils.checkNotNull(func);
        this.searchMin = d10;
        this.searchMax = d11;
        this.searchStart = d12;
        this.function = func;
        this.evaluations = this.evaluations.withMaximalCount(i10).withStart(0);
    }

    @Override
    public double solve(int i10, FUNC func, double d10, double d11, double d12) throws TooManyEvaluationsException, NoBracketingException {
        setup(i10, func, d10, d11, d12);
        return doSolve();
    }

    public void verifyBracketing(double d10, double d11) throws NullArgumentException, NoBracketingException {
        UnivariateSolverUtils.verifyBracketing(this.function, d10, d11);
    }

    public void verifyInterval(double d10, double d11) throws NumberIsTooLargeException {
        UnivariateSolverUtils.verifyInterval(d10, d11);
    }

    public void verifySequence(double d10, double d11, double d12) throws NumberIsTooLargeException {
        UnivariateSolverUtils.verifySequence(d10, d11, d12);
    }

    public BaseAbstractUnivariateSolver(double d10, double d11) {
        this(d10, d11, 1.0E-15d);
    }

    public BaseAbstractUnivariateSolver(double d10, double d11, double d12) {
        this.absoluteAccuracy = d11;
        this.relativeAccuracy = d10;
        this.functionValueAccuracy = d12;
        this.evaluations = IntegerSequence.Incrementor.create();
    }

    @Override
    public double solve(int i10, FUNC func, double d10, double d11) {
        return solve(i10, func, d10, d11, d10 + ((d11 - d10) * 0.5d));
    }

    @Override
    public double solve(int i10, FUNC func, double d10) throws TooManyEvaluationsException, NoBracketingException {
        return solve(i10, func, Double.NaN, Double.NaN, d10);
    }
}
