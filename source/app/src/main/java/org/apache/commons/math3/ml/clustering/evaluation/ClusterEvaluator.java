package org.apache.commons.math3.ml.clustering.evaluation;

import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.ml.clustering.CentroidCluster;
import org.apache.commons.math3.ml.clustering.Cluster;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.clustering.DoublePoint;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.distance.EuclideanDistance;

public abstract class ClusterEvaluator<T extends Clusterable> {
    private final DistanceMeasure measure;

    public ClusterEvaluator() {
        this(new EuclideanDistance());
    }

    public Clusterable centroidOf(Cluster<T> cluster) {
        List<T> points = cluster.getPoints();
        if (points.isEmpty()) {
            return null;
        }
        if (cluster instanceof CentroidCluster) {
            return ((CentroidCluster) cluster).getCenter();
        }
        int length = points.get(0).getPoint().length;
        double[] dArr = new double[length];
        Iterator<T> it = points.iterator();
        while (it.hasNext()) {
            double[] point = it.next().getPoint();
            for (int i10 = 0; i10 < length; i10++) {
                dArr[i10] = dArr[i10] + point[i10];
            }
        }
        for (int i11 = 0; i11 < length; i11++) {
            dArr[i11] = dArr[i11] / points.size();
        }
        return new DoublePoint(dArr);
    }

    public double distance(Clusterable clusterable, Clusterable clusterable2) {
        return this.measure.compute(clusterable.getPoint(), clusterable2.getPoint());
    }

    public boolean isBetterScore(double d10, double d11) {
        return d10 < d11;
    }

    public abstract double score(List<? extends Cluster<T>> list);

    public ClusterEvaluator(DistanceMeasure distanceMeasure) {
        this.measure = distanceMeasure;
    }
}
