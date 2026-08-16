package org.apache.commons.math3.optim.linear;

import org.apache.commons.math3.optim.OptimizationData;

public class NonNegativeConstraint implements OptimizationData {
    private final boolean isRestricted;

    public NonNegativeConstraint(boolean z10) {
        this.isRestricted = z10;
    }

    public boolean isRestrictedToNonNegative() {
        return this.isRestricted;
    }
}
