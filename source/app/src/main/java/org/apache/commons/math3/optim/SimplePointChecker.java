package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Pair;

public class SimplePointChecker<PAIR extends Pair<double[], ? extends Object>> extends AbstractConvergenceChecker<PAIR> {
    private static final int ITERATION_CHECK_DISABLED = -1;
    private final int maxIterationCount;

    public SimplePointChecker(double d10, double d11) {
        super(d10, d11);
        this.maxIterationCount = -1;
    }

    @Override
    public boolean converged(int i10, PAIR pair, PAIR pair2) {
        int i11 = this.maxIterationCount;
        if (i11 != -1 && i10 >= i11) {
            return true;
        }
        double[] dArr = (double[]) pair.getKey();
        double[] dArr2 = (double[]) pair2.getKey();
        for (int i12 = 0; i12 < dArr.length; i12++) {
            double d10 = dArr[i12];
            double d11 = dArr2[i12];
            double abs = FastMath.abs(d10 - d11);
            if (abs > FastMath.max(FastMath.abs(d10), FastMath.abs(d11)) * getRelativeThreshold() && abs > getAbsoluteThreshold()) {
                return false;
            }
        }
        return true;
    }

    public SimplePointChecker(double d10, double d11, int i10) {
        super(d10, d11);
        if (i10 > 0) {
            this.maxIterationCount = i10;
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i10));
    }
}
