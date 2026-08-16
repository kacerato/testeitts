package org.apache.commons.math3.random;

import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

public class StableRandomGenerator implements NormalizedRandomGenerator {
    private final double alpha;
    private final double beta;
    private final RandomGenerator generator;
    private final double zeta;

    public StableRandomGenerator(RandomGenerator randomGenerator, double d10, double d11) throws NullArgumentException, OutOfRangeException {
        if (randomGenerator == null) {
            throw new NullArgumentException();
        }
        if (d10 <= 0.0d || d10 > 2.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_RANGE_LEFT, Double.valueOf(d10), 0, 2);
        }
        if (d11 < -1.0d || d11 > 1.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_RANGE_SIMPLE, Double.valueOf(d11), -1, 1);
        }
        this.generator = randomGenerator;
        this.alpha = d10;
        this.beta = d11;
        if (d10 >= 2.0d || d11 == 0.0d) {
            this.zeta = 0.0d;
        } else {
            this.zeta = d11 * FastMath.tan((d10 * 3.141592653589793d) / 2.0d);
        }
    }

    @Override
    public double nextNormalizedDouble() {
        double d10 = -FastMath.log(this.generator.nextDouble());
        double nextDouble = (this.generator.nextDouble() - 0.5d) * 3.141592653589793d;
        double d11 = this.alpha;
        if (d11 == 2.0d) {
            return FastMath.sqrt(d10 * 2.0d) * FastMath.sin(nextDouble);
        }
        if (this.beta == 0.0d) {
            return d11 == 1.0d ? FastMath.tan(nextDouble) : (FastMath.pow(d10 * FastMath.cos((1.0d - d11) * nextDouble), (1.0d / this.alpha) - 1.0d) * FastMath.sin(this.alpha * nextDouble)) / FastMath.pow(FastMath.cos(nextDouble), 1.0d / this.alpha);
        }
        double cos = FastMath.cos(nextDouble);
        if (FastMath.abs(this.alpha - 1.0d) <= 1.0E-8d) {
            double d12 = (this.beta * nextDouble) + 1.5707963267948966d;
            double tan = 0.6366197723675814d * ((FastMath.tan(nextDouble) * d12) - (this.beta * FastMath.log(((d10 * 1.5707963267948966d) * cos) / d12)));
            double d13 = this.alpha;
            return d13 != 1.0d ? tan + (this.beta * FastMath.tan((d13 * 3.141592653589793d) / 2.0d)) : tan;
        }
        double d14 = this.alpha * nextDouble;
        double d15 = nextDouble - d14;
        double sin = ((FastMath.sin(d14) + (this.zeta * FastMath.cos(d14))) / cos) * (FastMath.cos(d15) + (this.zeta * FastMath.sin(d15)));
        double d16 = this.alpha;
        return sin / FastMath.pow(d10 * cos, (1.0d - d16) / d16);
    }
}
