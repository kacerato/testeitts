package org.apache.commons.math3.ode;

import java.io.Serializable;
import org.apache.commons.math3.exception.DimensionMismatchException;

public class EquationsMapper implements Serializable {
    private static final long serialVersionUID = 20110925;
    private final int dimension;
    private final int firstIndex;

    public EquationsMapper(int i10, int i11) {
        this.firstIndex = i10;
        this.dimension = i11;
    }

    public void extractEquationData(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        int length = dArr2.length;
        int i10 = this.dimension;
        if (length != i10) {
            throw new DimensionMismatchException(dArr2.length, this.dimension);
        }
        System.arraycopy(dArr, this.firstIndex, dArr2, 0, i10);
    }

    public int getDimension() {
        return this.dimension;
    }

    public int getFirstIndex() {
        return this.firstIndex;
    }

    public void insertEquationData(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        int length = dArr.length;
        int i10 = this.dimension;
        if (length != i10) {
            throw new DimensionMismatchException(dArr.length, this.dimension);
        }
        System.arraycopy(dArr, 0, dArr2, this.firstIndex, i10);
    }
}
