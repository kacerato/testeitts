package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

public class TriangularDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = 20120112;

    private final double f100154a;

    private final double f100155b;

    private final double f100156c;
    private final double solverAbsoluteAccuracy;

    public TriangularDistribution(double d10, double d11, double d12) throws NumberIsTooLargeException, NumberIsTooSmallException {
        this(new Well19937c(), d10, d11, d12);
    }

    @Override
    public double cumulativeProbability(double d10) {
        double d11 = this.f100154a;
        if (d10 < d11) {
            return 0.0d;
        }
        if (d11 <= d10) {
            double d12 = this.f100156c;
            if (d10 < d12) {
                return ((d10 - d11) * (d10 - d11)) / ((this.f100155b - d11) * (d12 - d11));
            }
        }
        double d13 = this.f100156c;
        if (d10 == d13) {
            return (d13 - d11) / (this.f100155b - d11);
        }
        if (d13 >= d10) {
            return 1.0d;
        }
        double d14 = this.f100155b;
        if (d10 <= d14) {
            return 1.0d - (((d14 - d10) * (d14 - d10)) / ((d14 - d11) * (d14 - d13)));
        }
        return 1.0d;
    }

    @Override
    public double density(double d10) {
        double d11 = this.f100154a;
        if (d10 < d11) {
            return 0.0d;
        }
        if (d11 <= d10) {
            double d12 = this.f100156c;
            if (d10 < d12) {
                return ((d10 - d11) * 2.0d) / ((this.f100155b - d11) * (d12 - d11));
            }
        }
        double d13 = this.f100156c;
        if (d10 == d13) {
            return 2.0d / (this.f100155b - d11);
        }
        if (d13 < d10) {
            double d14 = this.f100155b;
            if (d10 <= d14) {
                return ((d14 - d10) * 2.0d) / ((d14 - d11) * (d14 - d13));
            }
        }
        return 0.0d;
    }

    public double getMode() {
        return this.f100156c;
    }

    @Override
    public double getNumericalMean() {
        return ((this.f100154a + this.f100155b) + this.f100156c) / 3.0d;
    }

    @Override
    public double getNumericalVariance() {
        double d10 = this.f100154a;
        double d11 = this.f100155b;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f100156c;
        return ((((d12 + (d13 * d13)) - (d10 * d11)) - (d10 * d13)) - (d11 * d13)) / 18.0d;
    }

    @Override
    public double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
    }

    @Override
    public double getSupportLowerBound() {
        return this.f100154a;
    }

    @Override
    public double getSupportUpperBound() {
        return this.f100155b;
    }

    @Override
    public double inverseCumulativeProbability(double d10) throws OutOfRangeException {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        if (d10 == 0.0d) {
            return this.f100154a;
        }
        if (d10 == 1.0d) {
            return this.f100155b;
        }
        double d11 = this.f100156c;
        double d12 = this.f100154a;
        double d13 = this.f100155b;
        return d10 < (d11 - d12) / (d13 - d12) ? d12 + FastMath.sqrt(d10 * (d13 - d12) * (d11 - d12)) : d13 - FastMath.sqrt(((1.0d - d10) * (d13 - d12)) * (d13 - d11));
    }

    @Override
    public boolean isSupportConnected() {
        return true;
    }

    @Override
    public boolean isSupportLowerBoundInclusive() {
        return true;
    }

    @Override
    public boolean isSupportUpperBoundInclusive() {
        return true;
    }

    public TriangularDistribution(RandomGenerator randomGenerator, double d10, double d11, double d12) throws NumberIsTooLargeException, NumberIsTooSmallException {
        super(randomGenerator);
        if (d10 >= d12) {
            throw new NumberIsTooLargeException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Double.valueOf(d10), Double.valueOf(d12), false);
        }
        if (d11 < d10) {
            throw new NumberIsTooSmallException(LocalizedFormats.NUMBER_TOO_SMALL, Double.valueOf(d11), Double.valueOf(d10), true);
        }
        if (d11 <= d12) {
            this.f100154a = d10;
            this.f100156c = d11;
            this.f100155b = d12;
            this.solverAbsoluteAccuracy = FastMath.max(FastMath.ulp(d10), FastMath.ulp(d12));
            return;
        }
        throw new NumberIsTooLargeException(LocalizedFormats.NUMBER_TOO_LARGE, Double.valueOf(d11), Double.valueOf(d12), true);
    }
}
