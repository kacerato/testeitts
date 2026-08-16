package org.apache.commons.math3.fitting;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class WeightedObservedPoints implements Serializable {
    private static final long serialVersionUID = 20130813;
    private final List<WeightedObservedPoint> observations = new ArrayList();

    public void add(double d10, double d11) {
        add(1.0d, d10, d11);
    }

    public void clear() {
        this.observations.clear();
    }

    public List<WeightedObservedPoint> toList() {
        return new ArrayList(this.observations);
    }

    public void add(double d10, double d11, double d12) {
        this.observations.add(new WeightedObservedPoint(d10, d11, d12));
    }

    public void add(WeightedObservedPoint weightedObservedPoint) {
        this.observations.add(weightedObservedPoint);
    }
}
