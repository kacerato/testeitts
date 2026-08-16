package org.apache.commons.math3.util;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;

public class CentralPivotingStrategy implements PivotingStrategyInterface, Serializable {
    private static final long serialVersionUID = 20140713;

    @Override
    public int pivotIndex(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        int i12 = i11 - i10;
        MathArrays.verifyValues(dArr, i10, i12);
        return i10 + (i12 / 2);
    }
}
