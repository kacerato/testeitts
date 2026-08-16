package org.apache.commons.math3.ml.clustering;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.distance.EuclideanDistance;
import org.apache.commons.math3.util.MathUtils;

public class DBSCANClusterer<T extends Clusterable> extends Clusterer<T> {
    private final double eps;
    private final int minPts;

    public enum PointStatus {
        NOISE,
        PART_OF_CLUSTER
    }

    public DBSCANClusterer(double d10, int i10) throws NotPositiveException {
        this(d10, i10, new EuclideanDistance());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Cluster<T> expandCluster(Cluster<T> cluster, T t10, List<T> list, Collection<T> collection, Map<Clusterable, PointStatus> map) {
        cluster.addPoint(t10);
        map.put(t10, PointStatus.PART_OF_CLUSTER);
        List arrayList = new ArrayList(list);
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            Clusterable clusterable = (Clusterable) arrayList.get(i10);
            PointStatus pointStatus = map.get(clusterable);
            if (pointStatus == null) {
                List neighbors = getNeighbors(clusterable, collection);
                if (neighbors.size() >= this.minPts) {
                    arrayList = merge(arrayList, neighbors);
                }
            }
            PointStatus pointStatus2 = PointStatus.PART_OF_CLUSTER;
            if (pointStatus != pointStatus2) {
                map.put(clusterable, pointStatus2);
                cluster.addPoint(clusterable);
            }
        }
        return cluster;
    }

    private List<T> getNeighbors(T t10, Collection<T> collection) {
        ArrayList arrayList = new ArrayList();
        for (T t11 : collection) {
            if (t10 != t11 && distance(t11, t10) <= this.eps) {
                arrayList.add(t11);
            }
        }
        return arrayList;
    }

    private List<T> merge(List<T> list, List<T> list2) {
        HashSet hashSet = new HashSet(list);
        for (T t10 : list2) {
            if (!hashSet.contains(t10)) {
                list.add(t10);
            }
        }
        return list;
    }

    @Override
    public List<Cluster<T>> cluster(Collection<T> collection) throws NullArgumentException {
        MathUtils.checkNotNull(collection);
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (T t10 : collection) {
            if (hashMap.get(t10) == null) {
                List<T> neighbors = getNeighbors(t10, collection);
                if (neighbors.size() >= this.minPts) {
                    arrayList.add(expandCluster(new Cluster<>(), t10, neighbors, collection, hashMap));
                } else {
                    hashMap.put(t10, PointStatus.NOISE);
                }
            }
        }
        return arrayList;
    }

    public double getEps() {
        return this.eps;
    }

    public int getMinPts() {
        return this.minPts;
    }

    public DBSCANClusterer(double d10, int i10, DistanceMeasure distanceMeasure) throws NotPositiveException {
        super(distanceMeasure);
        if (d10 < 0.0d) {
            throw new NotPositiveException(Double.valueOf(d10));
        }
        if (i10 >= 0) {
            this.eps = d10;
            this.minPts = i10;
            return;
        }
        throw new NotPositiveException(Integer.valueOf(i10));
    }
}
