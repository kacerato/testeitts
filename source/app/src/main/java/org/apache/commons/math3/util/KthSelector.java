package org.apache.commons.math3.util;

import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.math3.exception.NullArgumentException;

public class KthSelector implements Serializable {
    private static final int MIN_SELECT_SIZE = 15;
    private static final long serialVersionUID = 20140713;
    private final PivotingStrategyInterface pivotingStrategy;

    public KthSelector() {
        this.pivotingStrategy = new MedianOf3PivotingStrategy();
    }

    private int partition(double[] dArr, int i10, int i11, int i12) {
        double d10 = dArr[i12];
        dArr[i12] = dArr[i10];
        int i13 = i10 + 1;
        int i14 = i11 - 1;
        while (i13 < i14) {
            while (i13 < i14 && dArr[i14] > d10) {
                i14--;
            }
            while (i13 < i14 && dArr[i13] < d10) {
                i13++;
            }
            if (i13 < i14) {
                double d11 = dArr[i13];
                dArr[i13] = dArr[i14];
                dArr[i14] = d11;
                i14--;
                i13++;
            }
        }
        if (i13 >= i11 || dArr[i13] > d10) {
            i13--;
        }
        dArr[i10] = dArr[i13];
        dArr[i13] = d10;
        return i13;
    }

    public PivotingStrategyInterface getPivotingStrategy() {
        return this.pivotingStrategy;
    }

    public double select(double[] dArr, int[] iArr, int i10) {
        int partition;
        int length = dArr.length;
        int i11 = 0;
        boolean z10 = iArr != null;
        int i12 = 0;
        while (length - i11 > 15) {
            if (!z10 || i12 >= iArr.length || (partition = iArr[i12]) < 0) {
                partition = partition(dArr, i11, length, this.pivotingStrategy.pivotIndex(dArr, i11, length));
                if (z10 && i12 < iArr.length) {
                    iArr[i12] = partition;
                }
            }
            if (i10 == partition) {
                return dArr[i10];
            }
            if (i10 < partition) {
                i12 = FastMath.min((i12 * 2) + 1, z10 ? iArr.length : partition);
                length = partition;
            } else {
                int i13 = partition + 1;
                i12 = FastMath.min((i12 * 2) + 2, z10 ? iArr.length : length);
                i11 = i13;
            }
        }
        Arrays.sort(dArr, i11, length);
        return dArr[i10];
    }

    public KthSelector(PivotingStrategyInterface pivotingStrategyInterface) throws NullArgumentException {
        MathUtils.checkNotNull(pivotingStrategyInterface);
        this.pivotingStrategy = pivotingStrategyInterface;
    }
}
