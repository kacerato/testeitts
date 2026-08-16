package org.apache.commons.lang3.concurrent;

import java.util.concurrent.atomic.AtomicLong;

public class ThresholdCircuitBreaker extends AbstractCircuitBreaker<Long> {
    private static final long INITIAL_COUNT = 0;
    private final long threshold;
    private final AtomicLong used = new AtomicLong(0);

    public ThresholdCircuitBreaker(long j10) {
        this.threshold = j10;
    }

    @Override
    public boolean checkState() throws CircuitBreakingException {
        return isOpen();
    }

    @Override
    public void close() {
        super.close();
        this.used.set(0L);
    }

    public long getThreshold() {
        return this.threshold;
    }

    @Override
    public boolean incrementAndCheckState(Long l10) throws CircuitBreakingException {
        if (this.threshold == 0) {
            open();
        }
        if (this.used.addAndGet(l10.longValue()) > this.threshold) {
            open();
        }
        return checkState();
    }
}
