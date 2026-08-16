package org.apache.commons.math3.ml.clustering.evaluation;

import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.ml.clustering.Cluster;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.stat.descriptive.moment.Variance;

public class SumOfClusterVariances<T extends Clusterable> extends ClusterEvaluator<T> {
    public SumOfClusterVariances(DistanceMeasure distanceMeasure) {
        super(distanceMeasure);
    }

    @Override
    public double score(List<? extends Cluster<T>> list) {
        double d10 = 0.0d;
        for (Cluster<T> cluster : list) {
            if (!cluster.getPoints().isEmpty()) {
                Clusterable centroidOf = centroidOf(cluster);
                Variance variance = new Variance();
                Iterator<T> it = cluster.getPoints().iterator();
                while (it.hasNext()) {
                    variance.increment(distance(it.next(), centroidOf));
                }
                d10 += variance.getResult();
            }
        }
        return d10;
    }
}
