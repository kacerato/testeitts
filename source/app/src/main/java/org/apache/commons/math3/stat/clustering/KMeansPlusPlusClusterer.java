package org.apache.commons.math3.stat.clustering;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.stat.clustering.Clusterable;
import org.apache.commons.math3.stat.descriptive.moment.Variance;
import org.apache.commons.math3.util.MathUtils;

@Deprecated
public class KMeansPlusPlusClusterer<T extends Clusterable<T>> {
    private final EmptyClusterStrategy emptyStrategy;
    private final Random random;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$stat$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy;

        static {
            int[] iArr = new int[EmptyClusterStrategy.values().length];
            $SwitchMap$org$apache$commons$math3$stat$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy = iArr;
            try {
                iArr[EmptyClusterStrategy.LARGEST_VARIANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy[EmptyClusterStrategy.LARGEST_POINTS_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy[EmptyClusterStrategy.FARTHEST_POINT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum EmptyClusterStrategy {
        LARGEST_VARIANCE,
        LARGEST_POINTS_NUMBER,
        FARTHEST_POINT,
        ERROR
    }

    public KMeansPlusPlusClusterer(Random random) {
        this(random, EmptyClusterStrategy.LARGEST_VARIANCE);
    }

    private static <T extends Clusterable<T>> int assignPointsToClusters(List<Cluster<T>> list, Collection<T> collection, int[] iArr) {
        int i10 = 0;
        int i11 = 0;
        for (T t10 : collection) {
            int nearestCluster = getNearestCluster(list, t10);
            if (nearestCluster != iArr[i11]) {
                i10++;
            }
            list.get(nearestCluster).addPoint(t10);
            iArr[i11] = nearestCluster;
            i11++;
        }
        return i10;
    }

    private static <T extends Clusterable<T>> List<Cluster<T>> chooseInitialCenters(Collection<T> collection, int i10, Random random) {
        List unmodifiableList = Collections.unmodifiableList(new ArrayList(collection));
        int size = unmodifiableList.size();
        boolean[] zArr = new boolean[size];
        ArrayList arrayList = new ArrayList();
        int nextInt = random.nextInt(size);
        Clusterable clusterable = (Clusterable) unmodifiableList.get(nextInt);
        arrayList.add(new Cluster(clusterable));
        zArr[nextInt] = true;
        double[] dArr = new double[size];
        for (int i11 = 0; i11 < size; i11++) {
            if (i11 != nextInt) {
                double distanceFrom = clusterable.distanceFrom(unmodifiableList.get(i11));
                dArr[i11] = distanceFrom * distanceFrom;
            }
        }
        while (arrayList.size() < i10) {
            double d10 = 0.0d;
            double d11 = 0.0d;
            for (int i12 = 0; i12 < size; i12++) {
                if (!zArr[i12]) {
                    d11 += dArr[i12];
                }
            }
            double nextDouble = random.nextDouble() * d11;
            int i13 = 0;
            while (true) {
                if (i13 >= size) {
                    i13 = -1;
                    break;
                }
                if (!zArr[i13]) {
                    d10 += dArr[i13];
                    if (d10 >= nextDouble) {
                        break;
                    }
                }
                i13++;
            }
            if (i13 == -1) {
                int i14 = size - 1;
                while (true) {
                    if (i14 < 0) {
                        break;
                    }
                    if (!zArr[i14]) {
                        i13 = i14;
                        break;
                    }
                    i14--;
                }
            }
            if (i13 < 0) {
                break;
            }
            Clusterable clusterable2 = (Clusterable) unmodifiableList.get(i13);
            arrayList.add(new Cluster(clusterable2));
            zArr[i13] = true;
            if (arrayList.size() < i10) {
                for (int i15 = 0; i15 < size; i15++) {
                    if (!zArr[i15]) {
                        double distanceFrom2 = clusterable2.distanceFrom(unmodifiableList.get(i15));
                        double d12 = distanceFrom2 * distanceFrom2;
                        if (d12 < dArr[i15]) {
                            dArr[i15] = d12;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private T getFarthestPoint(Collection<Cluster<T>> collection) throws ConvergenceException {
        Iterator<Cluster<T>> it = collection.iterator();
        double d10 = Double.NEGATIVE_INFINITY;
        Cluster<T> cluster = null;
        int i10 = -1;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Cluster<T> next = it.next();
            T center = next.getCenter();
            List<T> points = next.getPoints();
            for (int i11 = 0; i11 < points.size(); i11++) {
                double distanceFrom = points.get(i11).distanceFrom(center);
                if (distanceFrom > d10) {
                    cluster = next;
                    i10 = i11;
                    d10 = distanceFrom;
                }
            }
        }
        if (cluster != null) {
            return cluster.getPoints().remove(i10);
        }
        throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
    }

    private static <T extends Clusterable<T>> int getNearestCluster(Collection<Cluster<T>> collection, T t10) {
        Iterator<Cluster<T>> it = collection.iterator();
        double d10 = Double.MAX_VALUE;
        int i10 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            double distanceFrom = t10.distanceFrom(it.next().getCenter());
            if (distanceFrom < d10) {
                i10 = i11;
                d10 = distanceFrom;
            }
            i11++;
        }
        return i10;
    }

    private T getPointFromLargestNumberCluster(Collection<Cluster<T>> collection) throws ConvergenceException {
        Cluster<T> cluster = null;
        int i10 = 0;
        for (Cluster<T> cluster2 : collection) {
            int size = cluster2.getPoints().size();
            if (size > i10) {
                cluster = cluster2;
                i10 = size;
            }
        }
        if (cluster == null) {
            throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
        }
        List<T> points = cluster.getPoints();
        return points.remove(this.random.nextInt(points.size()));
    }

    private T getPointFromLargestVarianceCluster(Collection<Cluster<T>> collection) throws ConvergenceException {
        double d10 = Double.NEGATIVE_INFINITY;
        Cluster<T> cluster = null;
        for (Cluster<T> cluster2 : collection) {
            if (!cluster2.getPoints().isEmpty()) {
                T center = cluster2.getCenter();
                Variance variance = new Variance();
                Iterator<T> it = cluster2.getPoints().iterator();
                while (it.hasNext()) {
                    variance.increment(it.next().distanceFrom(center));
                }
                double result = variance.getResult();
                if (result > d10) {
                    cluster = cluster2;
                    d10 = result;
                }
            }
        }
        if (cluster == null) {
            throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
        }
        List<T> points = cluster.getPoints();
        return points.remove(this.random.nextInt(points.size()));
    }

    public List<Cluster<T>> cluster(Collection<T> collection, int i10, int i11, int i12) throws MathIllegalArgumentException, ConvergenceException {
        List<Cluster<T>> list = null;
        double d10 = Double.POSITIVE_INFINITY;
        for (int i13 = 0; i13 < i11; i13++) {
            List<Cluster<T>> cluster = cluster(collection, i10, i12);
            double d11 = 0.0d;
            for (Cluster<T> cluster2 : cluster) {
                if (!cluster2.getPoints().isEmpty()) {
                    T center = cluster2.getCenter();
                    Variance variance = new Variance();
                    Iterator<T> it = cluster2.getPoints().iterator();
                    while (it.hasNext()) {
                        variance.increment(it.next().distanceFrom(center));
                    }
                    d11 += variance.getResult();
                }
            }
            if (d11 <= d10) {
                list = cluster;
                d10 = d11;
            }
        }
        return list;
    }

    public KMeansPlusPlusClusterer(Random random, EmptyClusterStrategy emptyClusterStrategy) {
        this.random = random;
        this.emptyStrategy = emptyClusterStrategy;
    }

    public List<Cluster<T>> cluster(Collection<T> collection, int i10, int i11) throws MathIllegalArgumentException, ConvergenceException {
        boolean z10;
        Clusterable clusterable;
        MathUtils.checkNotNull(collection);
        if (collection.size() >= i10) {
            List<Cluster<T>> chooseInitialCenters = chooseInitialCenters(collection, i10, this.random);
            int[] iArr = new int[collection.size()];
            assignPointsToClusters(chooseInitialCenters, collection, iArr);
            if (i11 < 0) {
                i11 = Integer.MAX_VALUE;
            }
            int i12 = 0;
            while (i12 < i11) {
                ArrayList arrayList = new ArrayList();
                boolean z11 = false;
                for (Cluster<T> cluster : chooseInitialCenters) {
                    if (cluster.getPoints().isEmpty()) {
                        int i13 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$stat$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy[this.emptyStrategy.ordinal()];
                        z10 = true;
                        if (i13 == 1) {
                            clusterable = getPointFromLargestVarianceCluster(chooseInitialCenters);
                        } else if (i13 == 2) {
                            clusterable = getPointFromLargestNumberCluster(chooseInitialCenters);
                        } else if (i13 == 3) {
                            clusterable = getFarthestPoint(chooseInitialCenters);
                        } else {
                            throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
                        }
                    } else {
                        Clusterable clusterable2 = (Clusterable) cluster.getCenter().centroidOf(cluster.getPoints());
                        z10 = z11;
                        clusterable = clusterable2;
                    }
                    arrayList.add(new Cluster<>(clusterable));
                    z11 = z10;
                }
                if (assignPointsToClusters(arrayList, collection, iArr) == 0 && !z11) {
                    return arrayList;
                }
                i12++;
                chooseInitialCenters = arrayList;
            }
            return chooseInitialCenters;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(collection.size()), Integer.valueOf(i10), false);
    }
}
