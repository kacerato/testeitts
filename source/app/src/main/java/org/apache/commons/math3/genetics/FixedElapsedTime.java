package org.apache.commons.math3.genetics;

import java.util.concurrent.TimeUnit;
import org.apache.commons.math3.exception.NumberIsTooSmallException;

public class FixedElapsedTime implements StoppingCondition {
    private long endTime;
    private final long maxTimePeriod;

    public FixedElapsedTime(long j10) throws NumberIsTooSmallException {
        this(j10, TimeUnit.SECONDS);
    }

    @Override
    public boolean isSatisfied(Population population) {
        if (this.endTime < 0) {
            this.endTime = System.nanoTime() + this.maxTimePeriod;
        }
        return System.nanoTime() >= this.endTime;
    }

    public FixedElapsedTime(long j10, TimeUnit timeUnit) throws NumberIsTooSmallException {
        this.endTime = -1L;
        if (j10 >= 0) {
            this.maxTimePeriod = timeUnit.toNanos(j10);
            return;
        }
        throw new NumberIsTooSmallException(Long.valueOf(j10), 0, true);
    }
}
