package org.apache.commons.math3.optimization.fitting;

import java.io.Serializable;

@Deprecated
public class WeightedObservedPoint implements Serializable {
    private static final long serialVersionUID = 5306874947404636157L;
    private final double weight;

    private final double f100300x;

    private final double f100301y;

    public WeightedObservedPoint(double d10, double d11, double d12) {
        this.weight = d10;
        this.f100300x = d11;
        this.f100301y = d12;
    }

    public double getWeight() {
        return this.weight;
    }

    public double getX() {
        return this.f100300x;
    }

    public double getY() {
        return this.f100301y;
    }
}
