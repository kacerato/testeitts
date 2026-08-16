package org.apache.commons.math3.exception;

import org.apache.commons.math3.exception.util.Localizable;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class MultiDimensionMismatchException extends MathIllegalArgumentException {
    private static final long serialVersionUID = -8415396756375798143L;
    private final Integer[] expected;
    private final Integer[] wrong;

    public MultiDimensionMismatchException(Integer[] numArr, Integer[] numArr2) {
        this(LocalizedFormats.DIMENSIONS_MISMATCH, numArr, numArr2);
    }

    public int getExpectedDimension(int i10) {
        return this.expected[i10].intValue();
    }

    public Integer[] getExpectedDimensions() {
        return (Integer[]) this.expected.clone();
    }

    public int getWrongDimension(int i10) {
        return this.wrong[i10].intValue();
    }

    public Integer[] getWrongDimensions() {
        return (Integer[]) this.wrong.clone();
    }

    public MultiDimensionMismatchException(Localizable localizable, Integer[] numArr, Integer[] numArr2) {
        super(localizable, numArr, numArr2);
        this.wrong = (Integer[]) numArr.clone();
        this.expected = (Integer[]) numArr2.clone();
    }
}
