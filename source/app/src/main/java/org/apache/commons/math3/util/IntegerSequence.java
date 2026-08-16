package org.apache.commons.math3.util;

import java.util.Iterator;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.ZeroException;

public class IntegerSequence {

    public static class Incrementor implements Iterator<Integer> {
        private static final MaxCountExceededCallback CALLBACK = new MaxCountExceededCallback() {
            @Override
            public void trigger(int i10) throws MaxCountExceededException {
                throw new MaxCountExceededException(Integer.valueOf(i10));
            }
        };
        private int count;
        private final int increment;
        private final int init;
        private final MaxCountExceededCallback maxCountCallback;
        private final int maximalCount;

        public interface MaxCountExceededCallback {
            void trigger(int i10) throws MaxCountExceededException;
        }

        private Incrementor(int i10, int i11, int i12, MaxCountExceededCallback maxCountExceededCallback) throws NullArgumentException {
            this.count = 0;
            if (maxCountExceededCallback == null) {
                throw new NullArgumentException();
            }
            this.init = i10;
            this.maximalCount = i11;
            this.increment = i12;
            this.maxCountCallback = maxCountExceededCallback;
            this.count = i10;
        }

        public static Incrementor create() {
            return new Incrementor(0, 0, 1, CALLBACK);
        }

        public boolean canIncrement() {
            return canIncrement(1);
        }

        public int getCount() {
            return this.count;
        }

        public int getMaximalCount() {
            return this.maximalCount;
        }

        @Override
        public boolean hasNext() {
            return canIncrement(0);
        }

        public void increment(int i10) throws MaxCountExceededException {
            if (i10 > 0) {
                if (!canIncrement(0)) {
                    this.maxCountCallback.trigger(this.maximalCount);
                }
                this.count += i10 * this.increment;
                return;
            }
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }

        @Override
        public void remove() {
            throw new MathUnsupportedOperationException();
        }

        public Incrementor withCallback(MaxCountExceededCallback maxCountExceededCallback) {
            return new Incrementor(this.init, this.maximalCount, this.increment, maxCountExceededCallback);
        }

        public Incrementor withIncrement(int i10) {
            if (i10 != 0) {
                return new Incrementor(this.init, this.maximalCount, i10, this.maxCountCallback);
            }
            throw new ZeroException();
        }

        public Incrementor withMaximalCount(int i10) {
            return new Incrementor(this.init, i10, this.increment, this.maxCountCallback);
        }

        public Incrementor withStart(int i10) {
            return new Incrementor(i10, this.maximalCount, this.increment, this.maxCountCallback);
        }

        public boolean canIncrement(int i10) {
            int i11 = this.count;
            int i12 = this.increment;
            int i13 = i11 + (i10 * i12);
            if (i12 < 0) {
                if (i13 <= this.maximalCount) {
                    return false;
                }
            } else if (i13 >= this.maximalCount) {
                return false;
            }
            return true;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Integer next() {
            int i10 = this.count;
            increment();
            return Integer.valueOf(i10);
        }

        public void increment() throws MaxCountExceededException {
            increment(1);
        }
    }

    public static class Range implements Iterable<Integer> {
        private final int max;
        private final int size;
        private final int start;
        private final int step;

        public Range(int i10, int i11, int i12) {
            this.start = i10;
            this.max = i11;
            this.step = i12;
            int i13 = ((i11 - i10) / i12) + 1;
            this.size = i13 < 0 ? 0 : i13;
        }

        @Override
        public Iterator<Integer> iterator() {
            return Incrementor.create().withStart(this.start).withMaximalCount(this.max + (this.step > 0 ? 1 : -1)).withIncrement(this.step);
        }

        public int size() {
            return this.size;
        }
    }

    private IntegerSequence() {
    }

    public static Range range(int i10, int i11) {
        return range(i10, i11, 1);
    }

    public static Range range(int i10, int i11, int i12) {
        return new Range(i10, i11, i12);
    }
}
