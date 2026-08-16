package org.apache.commons.math3.stat.interval;

import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public final class IntervalUtils {
    private static final BinomialConfidenceInterval AGRESTI_COULL = new AgrestiCoullInterval();
    private static final BinomialConfidenceInterval CLOPPER_PEARSON = new ClopperPearsonInterval();
    private static final BinomialConfidenceInterval NORMAL_APPROXIMATION = new NormalApproximationInterval();
    private static final BinomialConfidenceInterval WILSON_SCORE = new WilsonScoreInterval();

    private IntervalUtils() {
    }

    public static void checkParameters(int i10, int i11, double d10) {
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_TRIALS, Integer.valueOf(i10));
        }
        if (i11 < 0) {
            throw new NotPositiveException(LocalizedFormats.NEGATIVE_NUMBER_OF_SUCCESSES, Integer.valueOf(i11));
        }
        if (i11 > i10) {
            throw new NumberIsTooLargeException(LocalizedFormats.NUMBER_OF_SUCCESS_LARGER_THAN_POPULATION_SIZE, Integer.valueOf(i11), Integer.valueOf(i10), true);
        }
        if (d10 <= 0.0d || d10 >= 1.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUNDS_CONFIDENCE_LEVEL, Double.valueOf(d10), 0, 1);
        }
    }

    public static ConfidenceInterval getAgrestiCoullInterval(int i10, int i11, double d10) {
        return AGRESTI_COULL.createInterval(i10, i11, d10);
    }

    public static ConfidenceInterval getClopperPearsonInterval(int i10, int i11, double d10) {
        return CLOPPER_PEARSON.createInterval(i10, i11, d10);
    }

    public static ConfidenceInterval getNormalApproximationInterval(int i10, int i11, double d10) {
        return NORMAL_APPROXIMATION.createInterval(i10, i11, d10);
    }

    public static ConfidenceInterval getWilsonScoreInterval(int i10, int i11, double d10) {
        return WILSON_SCORE.createInterval(i10, i11, d10);
    }
}
