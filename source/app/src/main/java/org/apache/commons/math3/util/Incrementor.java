package org.apache.commons.math3.util;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.IntegerSequence;

@Deprecated
public class Incrementor {
    private int count;
    private final MaxCountExceededCallback maxCountCallback;
    private int maximalCount;

    public interface MaxCountExceededCallback {
        void trigger(int i10) throws MaxCountExceededException;
    }

    public Incrementor() {
        this(0);
    }

    public static Incrementor wrap(IntegerSequence.Incrementor incrementor) {
        return new Incrementor() {
            private IntegerSequence.Incrementor delegate;

            {
                this.delegate = IntegerSequence.Incrementor.this;
                super.setMaximalCount(IntegerSequence.Incrementor.this.getMaximalCount());
                super.incrementCount(this.delegate.getCount());
            }

            @Override
            public void incrementCount() {
                super.incrementCount();
                this.delegate.increment();
            }

            @Override
            public void resetCount() {
                super.resetCount();
                this.delegate = this.delegate.withStart(0);
            }

            @Override
            public void setMaximalCount(int i10) {
                super.setMaximalCount(i10);
                this.delegate = this.delegate.withMaximalCount(i10);
            }
        };
    }

    public boolean canIncrement() {
        return this.count < this.maximalCount;
    }

    public int getCount() {
        return this.count;
    }

    public int getMaximalCount() {
        return this.maximalCount;
    }

    public void incrementCount(int i10) throws MaxCountExceededException {
        for (int i11 = 0; i11 < i10; i11++) {
            incrementCount();
        }
    }

    public void resetCount() {
        this.count = 0;
    }

    public void setMaximalCount(int i10) {
        this.maximalCount = i10;
    }

    public Incrementor(int i10) {
        this(i10, new MaxCountExceededCallback() {
            @Override
            public void trigger(int i11) throws MaxCountExceededException {
                throw new MaxCountExceededException(Integer.valueOf(i11));
            }
        });
    }

    public void incrementCount() throws MaxCountExceededException {
        int i10 = this.count + 1;
        this.count = i10;
        int i11 = this.maximalCount;
        if (i10 > i11) {
            this.maxCountCallback.trigger(i11);
        }
    }

    public Incrementor(int i10, MaxCountExceededCallback maxCountExceededCallback) throws NullArgumentException {
        this.count = 0;
        if (maxCountExceededCallback != null) {
            this.maximalCount = i10;
            this.maxCountCallback = maxCountExceededCallback;
            return;
        }
        throw new NullArgumentException();
    }
}
