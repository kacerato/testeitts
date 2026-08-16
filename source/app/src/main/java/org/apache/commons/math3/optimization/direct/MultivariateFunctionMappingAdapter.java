package org.apache.commons.math3.optimization.direct;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.function.Logit;
import org.apache.commons.math3.analysis.function.Sigmoid;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

@Deprecated
public class MultivariateFunctionMappingAdapter implements MultivariateFunction {
    private final MultivariateFunction bounded;
    private final Mapper[] mappers;

    public static class LowerBoundMapper implements Mapper {
        private final double lower;

        public LowerBoundMapper(double d10) {
            this.lower = d10;
        }

        @Override
        public double boundedToUnbounded(double d10) {
            return FastMath.log(d10 - this.lower);
        }

        @Override
        public double unboundedToBounded(double d10) {
            return this.lower + FastMath.exp(d10);
        }
    }

    public static class LowerUpperBoundMapper implements Mapper {
        private final UnivariateFunction boundingFunction;
        private final UnivariateFunction unboundingFunction;

        public LowerUpperBoundMapper(double d10, double d11) {
            this.boundingFunction = new Sigmoid(d10, d11);
            this.unboundingFunction = new Logit(d10, d11);
        }

        @Override
        public double boundedToUnbounded(double d10) {
            return this.unboundingFunction.value(d10);
        }

        @Override
        public double unboundedToBounded(double d10) {
            return this.boundingFunction.value(d10);
        }
    }

    public interface Mapper {
        double boundedToUnbounded(double d10);

        double unboundedToBounded(double d10);
    }

    public static class NoBoundsMapper implements Mapper {
        @Override
        public double boundedToUnbounded(double d10) {
            return d10;
        }

        @Override
        public double unboundedToBounded(double d10) {
            return d10;
        }
    }

    public static class UpperBoundMapper implements Mapper {
        private final double upper;

        public UpperBoundMapper(double d10) {
            this.upper = d10;
        }

        @Override
        public double boundedToUnbounded(double d10) {
            return -FastMath.log(this.upper - d10);
        }

        @Override
        public double unboundedToBounded(double d10) {
            return this.upper - FastMath.exp(-d10);
        }
    }

    public MultivariateFunctionMappingAdapter(MultivariateFunction multivariateFunction, double[] dArr, double[] dArr2) {
        MathUtils.checkNotNull(dArr);
        MathUtils.checkNotNull(dArr2);
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        for (int i10 = 0; i10 < dArr.length; i10++) {
            if (dArr2[i10] < dArr[i10]) {
                throw new NumberIsTooSmallException(Double.valueOf(dArr2[i10]), Double.valueOf(dArr[i10]), true);
            }
        }
        this.bounded = multivariateFunction;
        this.mappers = new Mapper[dArr.length];
        for (int i11 = 0; i11 < this.mappers.length; i11++) {
            if (Double.isInfinite(dArr[i11])) {
                if (Double.isInfinite(dArr2[i11])) {
                    this.mappers[i11] = new NoBoundsMapper();
                } else {
                    this.mappers[i11] = new UpperBoundMapper(dArr2[i11]);
                }
            } else if (Double.isInfinite(dArr2[i11])) {
                this.mappers[i11] = new LowerBoundMapper(dArr[i11]);
            } else {
                this.mappers[i11] = new LowerUpperBoundMapper(dArr[i11], dArr2[i11]);
            }
        }
    }

    public double[] boundedToUnbounded(double[] dArr) {
        double[] dArr2 = new double[this.mappers.length];
        int i10 = 0;
        while (true) {
            Mapper[] mapperArr = this.mappers;
            if (i10 >= mapperArr.length) {
                return dArr2;
            }
            dArr2[i10] = mapperArr[i10].boundedToUnbounded(dArr[i10]);
            i10++;
        }
    }

    public double[] unboundedToBounded(double[] dArr) {
        double[] dArr2 = new double[this.mappers.length];
        int i10 = 0;
        while (true) {
            Mapper[] mapperArr = this.mappers;
            if (i10 >= mapperArr.length) {
                return dArr2;
            }
            dArr2[i10] = mapperArr[i10].unboundedToBounded(dArr[i10]);
            i10++;
        }
    }

    @Override
    public double value(double[] dArr) {
        return this.bounded.value(unboundedToBounded(dArr));
    }
}
