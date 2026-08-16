package org.apache.commons.math3.exception;

import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;

public class NonMonotonicSequenceException extends MathIllegalNumberException {
    private static final long serialVersionUID = 3596849179428944575L;
    private final MathArrays.OrderDirection direction;
    private final int index;
    private final Number previous;
    private final boolean strict;

    public NonMonotonicSequenceException(Number number, Number number2, int i10) {
        this(number, number2, i10, MathArrays.OrderDirection.INCREASING, true);
    }

    public MathArrays.OrderDirection getDirection() {
        return this.direction;
    }

    public int getIndex() {
        return this.index;
    }

    public Number getPrevious() {
        return this.previous;
    }

    public boolean getStrict() {
        return this.strict;
    }

    public NonMonotonicSequenceException(Number number, Number number2, int i10, MathArrays.OrderDirection orderDirection, boolean z10) {
        super(orderDirection == MathArrays.OrderDirection.INCREASING ? z10 ? LocalizedFormats.NOT_STRICTLY_INCREASING_SEQUENCE : LocalizedFormats.NOT_INCREASING_SEQUENCE : z10 ? LocalizedFormats.NOT_STRICTLY_DECREASING_SEQUENCE : LocalizedFormats.NOT_DECREASING_SEQUENCE, number, number2, Integer.valueOf(i10), Integer.valueOf(i10 - 1));
        this.direction = orderDirection;
        this.strict = z10;
        this.index = i10;
        this.previous = number2;
    }
}
