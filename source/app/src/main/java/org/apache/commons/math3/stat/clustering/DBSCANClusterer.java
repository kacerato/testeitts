package org.apache.commons.math3.stat.clustering;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.clustering.Clusterable;
import org.apache.commons.math3.util.MathUtils;

@Deprecated
public class DBSCANClusterer<T extends Clusterable<T>> {
    private final double eps;
    private final int minPts;

    public enum PointStatus {
        NOISE,
        PART_OF_CLUSTER
    }

    public DBSCANClusterer(double d10, int i10) throws NotPositiveException {
        if (d10 < 0.0d) {
            throw new NotPositiveException(Double.valueOf(d10));
        }
        if (i10 < 0) {
            throw new NotPositiveException(Integer.valueOf(i10));
        }
        this.eps = d10;
        this.minPts = i10;
    }

    private Cluster<T> expandCluster(Cluster<T> cluster, T t10, List<T> list, Collection<T> collection, Map<Clusterable<T>, PointStatus> map) {
        cluster.addPoint(t10);
        map.put(t10, PointStatus.PART_OF_CLUSTER);
        List<T> arrayList = new ArrayList<>(list);
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            T t11 = arrayList.get(i10);
            PointStatus pointStatus = map.get(t11);
            if (pointStatus == null) {
                List<T> neighbors = getNeighbors(t11, collection);
                if (neighbors.size() >= this.minPts) {
                    arrayList = merge(arrayList, neighbors);
                }
            }
            PointStatus pointStatus2 = PointStatus.PART_OF_CLUSTER;
            if (pointStatus != pointStatus2) {
                map.put(t11, pointStatus2);
                cluster.addPoint(t11);
            }
        }
        return cluster;
    }

    private List<T> getNeighbors(T t10, Collection<T> collection) {
        ArrayList arrayList = new ArrayList();
        for (T t11 : collection) {
            if (t10 != t11 && t11.distanceFrom(t10) <= this.eps) {
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

    public List<Cluster<T>> cluster(Collection<T> collection) throws NullArgumentException {
        MathUtils.checkNotNull(collection);
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (T t10 : collection) {
            if (hashMap.get(t10) == null) {
                List<T> neighbors = getNeighbors(t10, collection);
                if (neighbors.size() >= this.minPts) {
                    arrayList.add(expandCluster(new Cluster<>(null), t10, neighbors, collection, hashMap));
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
}
