package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.random.UnitSphereRandomVectorGenerator;

public class MicrosphereProjectionInterpolator implements MultivariateInterpolator {
    private final double exponent;
    private final InterpolatingMicrosphere microsphere;
    private final double noInterpolationTolerance;
    private final boolean sharedSphere;

    public MicrosphereProjectionInterpolator(int i10, int i11, double d10, double d11, double d12, double d13, boolean z10, double d14) {
        this(new InterpolatingMicrosphere(i10, i11, d10, d11, d12, new UnitSphereRandomVectorGenerator(i10)), d13, z10, d14);
    }

    @Override
    public MultivariateFunction interpolate(final double[][] dArr, final double[] dArr2) throws DimensionMismatchException, NoDataException, NullArgumentException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr[0] == null) {
            throw new NullArgumentException();
        }
        int dimension = this.microsphere.getDimension();
        if (dimension != dArr[0].length) {
            throw new DimensionMismatchException(dArr[0].length, dimension);
        }
        final InterpolatingMicrosphere copy = this.sharedSphere ? this.microsphere : this.microsphere.copy();
        return new MultivariateFunction() {
            @Override
            public double value(double[] dArr3) {
                return copy.value(dArr3, dArr, dArr2, MicrosphereProjectionInterpolator.this.exponent, MicrosphereProjectionInterpolator.this.noInterpolationTolerance);
            }
        };
    }

    public MicrosphereProjectionInterpolator(InterpolatingMicrosphere interpolatingMicrosphere, double d10, boolean z10, double d11) throws NotPositiveException {
        if (d10 >= 0.0d) {
            this.microsphere = interpolatingMicrosphere;
            this.exponent = d10;
            this.sharedSphere = z10;
            this.noInterpolationTolerance = d11;
            return;
        }
        throw new NotPositiveException(Double.valueOf(d10));
    }
}
