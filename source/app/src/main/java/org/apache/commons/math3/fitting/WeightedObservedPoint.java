package org.apache.commons.math3.fitting;

import java.io.Serializable;

public class WeightedObservedPoint implements Serializable {
    private static final long serialVersionUID = 5306874947404636157L;
    private final double weight;

    private final double f100164x;

    private final double f100165y;

    public WeightedObservedPoint(double d10, double d11, double d12) {
        this.weight = d10;
        this.f100164x = d11;
        this.f100165y = d12;
    }

    public double getWeight() {
        return this.weight;
    }

    public double getX() {
        return this.f100164x;
    }

    public double getY() {
        return this.f100165y;
    }
}
