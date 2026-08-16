package org.apache.commons.math3.util;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;

public class MedianOf3PivotingStrategy implements PivotingStrategyInterface, Serializable {
    private static final long serialVersionUID = 20140713;

    @Override
    public int pivotIndex(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        MathArrays.verifyValues(dArr, i10, i11 - i10);
        int i12 = i11 - 1;
        int i13 = ((i12 - i10) / 2) + i10;
        double d10 = dArr[i10];
        double d11 = dArr[i13];
        double d12 = dArr[i12];
        return d10 < d11 ? d11 < d12 ? i13 : d10 < d12 ? i12 : i10 : d10 < d12 ? i10 : d11 < d12 ? i12 : i13;
    }
}
