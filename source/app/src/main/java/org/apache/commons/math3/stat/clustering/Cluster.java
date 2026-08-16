package org.apache.commons.math3.stat.clustering;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.stat.clustering.Clusterable;

@Deprecated
public class Cluster<T extends Clusterable<T>> implements Serializable {
    private static final long serialVersionUID = -3442297081515880464L;
    private final T center;
    private final List<T> points = new ArrayList();

    public Cluster(T t10) {
        this.center = t10;
    }

    public void addPoint(T t10) {
        this.points.add(t10);
    }

    public T getCenter() {
        return this.center;
    }

    public List<T> getPoints() {
        return this.points;
    }
}
