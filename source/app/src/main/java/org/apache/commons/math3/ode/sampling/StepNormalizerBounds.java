package org.apache.commons.math3.ode.sampling;

public enum StepNormalizerBounds {
    NEITHER(false, false),
    FIRST(true, false),
    LAST(false, true),
    BOTH(true, true);

    private final boolean first;
    private final boolean last;

    StepNormalizerBounds(boolean z10, boolean z11) {
        this.first = z10;
        this.last = z11;
    }

    public boolean firstIncluded() {
        return this.first;
    }

    public boolean lastIncluded() {
        return this.last;
    }
}
