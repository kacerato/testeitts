package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.solvers.UnivariateSolverUtils;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.IntegerSequence;
import org.apache.commons.math3.util.MathUtils;

public abstract class BaseAbstractUnivariateIntegrator implements UnivariateIntegrator {
    public static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-15d;
    public static final int DEFAULT_MAX_ITERATIONS_COUNT = Integer.MAX_VALUE;
    public static final int DEFAULT_MIN_ITERATIONS_COUNT = 3;
    public static final double DEFAULT_RELATIVE_ACCURACY = 1.0E-6d;
    private final double absoluteAccuracy;
    private IntegerSequence.Incrementor count;
    private IntegerSequence.Incrementor evaluations;
    private UnivariateFunction function;

    @Deprecated
    protected Incrementor iterations;
    private double max;
    private double min;
    private final int minimalIterationCount;
    private final double relativeAccuracy;

    public BaseAbstractUnivariateIntegrator(double d10, double d11, int i10, int i11) throws NotStrictlyPositiveException, NumberIsTooSmallException {
        this.relativeAccuracy = d10;
        this.absoluteAccuracy = d11;
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }
        if (i11 > i10) {
            this.minimalIterationCount = i10;
            IntegerSequence.Incrementor withMaximalCount = IntegerSequence.Incrementor.create().withMaximalCount(i11);
            this.count = withMaximalCount;
            this.iterations = Incrementor.wrap(withMaximalCount);
            this.evaluations = IntegerSequence.Incrementor.create();
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(i11), Integer.valueOf(i10), false);
    }

    public double computeObjectiveValue(double d10) throws TooManyEvaluationsException {
        try {
            this.evaluations.increment();
            return this.function.value(d10);
        } catch (MaxCountExceededException e10) {
            throw new TooManyEvaluationsException(e10.getMax());
        }
    }

    public abstract double doIntegrate() throws TooManyEvaluationsException, MaxCountExceededException;

    @Override
    public double getAbsoluteAccuracy() {
        return this.absoluteAccuracy;
    }

    @Override
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    @Override
    public int getIterations() {
        return this.count.getCount();
    }

    public double getMax() {
        return this.max;
    }

    @Override
    public int getMaximalIterationCount() {
        return this.count.getMaximalCount();
    }

    public double getMin() {
        return this.min;
    }

    @Override
    public int getMinimalIterationCount() {
        return this.minimalIterationCount;
    }

    @Override
    public double getRelativeAccuracy() {
        return this.relativeAccuracy;
    }

    public void incrementCount() throws MaxCountExceededException {
        this.count.increment();
    }

    @Override
    public double integrate(int i10, UnivariateFunction univariateFunction, double d10, double d11) throws TooManyEvaluationsException, MaxCountExceededException, MathIllegalArgumentException, NullArgumentException {
        setup(i10, univariateFunction, d10, d11);
        return doIntegrate();
    }

    public void setup(int i10, UnivariateFunction univariateFunction, double d10, double d11) throws NullArgumentException, MathIllegalArgumentException {
        MathUtils.checkNotNull(univariateFunction);
        UnivariateSolverUtils.verifyInterval(d10, d11);
        this.min = d10;
        this.max = d11;
        this.function = univariateFunction;
        this.evaluations = this.evaluations.withMaximalCount(i10).withStart(0);
        this.count = this.count.withStart(0);
    }

    public BaseAbstractUnivariateIntegrator(double d10, double d11) {
        this(d10, d11, 3, Integer.MAX_VALUE);
    }

    public BaseAbstractUnivariateIntegrator(int i10, int i11) throws NotStrictlyPositiveException, NumberIsTooSmallException {
        this(1.0E-6d, 1.0E-15d, i10, i11);
    }
}
