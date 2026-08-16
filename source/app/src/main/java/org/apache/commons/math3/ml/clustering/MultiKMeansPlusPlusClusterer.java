package org.apache.commons.math3.ml.clustering;

import java.util.Collection;
import java.util.List;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.clustering.evaluation.ClusterEvaluator;
import org.apache.commons.math3.ml.clustering.evaluation.SumOfClusterVariances;

public class MultiKMeansPlusPlusClusterer<T extends Clusterable> extends Clusterer<T> {
    private final KMeansPlusPlusClusterer<T> clusterer;
    private final ClusterEvaluator<T> evaluator;
    private final int numTrials;

    public MultiKMeansPlusPlusClusterer(KMeansPlusPlusClusterer<T> kMeansPlusPlusClusterer, int i10) {
        this(kMeansPlusPlusClusterer, i10, new SumOfClusterVariances(kMeansPlusPlusClusterer.getDistanceMeasure()));
    }

    @Override
    public List<CentroidCluster<T>> cluster(Collection<T> collection) throws MathIllegalArgumentException, ConvergenceException {
        List<CentroidCluster<T>> list = null;
        double d10 = Double.POSITIVE_INFINITY;
        for (int i10 = 0; i10 < this.numTrials; i10++) {
            List<CentroidCluster<T>> cluster = this.clusterer.cluster(collection);
            double score = this.evaluator.score(cluster);
            if (this.evaluator.isBetterScore(score, d10)) {
                list = cluster;
                d10 = score;
            }
        }
        return list;
    }

    public ClusterEvaluator<T> getClusterEvaluator() {
        return this.evaluator;
    }

    public KMeansPlusPlusClusterer<T> getClusterer() {
        return this.clusterer;
    }

    public int getNumTrials() {
        return this.numTrials;
    }

    public MultiKMeansPlusPlusClusterer(KMeansPlusPlusClusterer<T> kMeansPlusPlusClusterer, int i10, ClusterEvaluator<T> clusterEvaluator) {
        super(kMeansPlusPlusClusterer.getDistanceMeasure());
        this.clusterer = kMeansPlusPlusClusterer;
        this.numTrials = i10;
        this.evaluator = clusterEvaluator;
    }
}
