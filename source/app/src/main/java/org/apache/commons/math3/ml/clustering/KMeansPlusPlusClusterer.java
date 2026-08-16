package org.apache.commons.math3.ml.clustering;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.distance.EuclideanDistance;
import org.apache.commons.math3.random.JDKRandomGenerator;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.descriptive.moment.Variance;
import org.apache.commons.math3.util.MathUtils;

public class KMeansPlusPlusClusterer<T extends Clusterable> extends Clusterer<T> {
    private final EmptyClusterStrategy emptyStrategy;

    private final int f100221k;
    private final int maxIterations;
    private final RandomGenerator random;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$ml$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy;

        static {
            int[] iArr = new int[EmptyClusterStrategy.values().length];
            $SwitchMap$org$apache$commons$math3$ml$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy = iArr;
            try {
                iArr[EmptyClusterStrategy.LARGEST_VARIANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ml$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy[EmptyClusterStrategy.LARGEST_POINTS_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ml$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy[EmptyClusterStrategy.FARTHEST_POINT.ordinal()] = 3;
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

    public KMeansPlusPlusClusterer(int i10) {
        this(i10, -1);
    }

    private int assignPointsToClusters(List<CentroidCluster<T>> list, Collection<T> collection, int[] iArr) {
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

    private Clusterable centroidOf(Collection<T> collection, int i10) {
        int i11;
        double[] dArr = new double[i10];
        Iterator<T> it = collection.iterator();
        while (true) {
            i11 = 0;
            if (!it.hasNext()) {
                break;
            }
            double[] point = it.next().getPoint();
            while (i11 < i10) {
                dArr[i11] = dArr[i11] + point[i11];
                i11++;
            }
        }
        while (i11 < i10) {
            dArr[i11] = dArr[i11] / collection.size();
            i11++;
        }
        return new DoublePoint(dArr);
    }

    private List<CentroidCluster<T>> chooseInitialCenters(Collection<T> collection) {
        List unmodifiableList = Collections.unmodifiableList(new ArrayList(collection));
        int size = unmodifiableList.size();
        boolean[] zArr = new boolean[size];
        ArrayList arrayList = new ArrayList();
        int nextInt = this.random.nextInt(size);
        Clusterable clusterable = (Clusterable) unmodifiableList.get(nextInt);
        arrayList.add(new CentroidCluster(clusterable));
        zArr[nextInt] = true;
        double[] dArr = new double[size];
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 != nextInt) {
                double distance = distance(clusterable, (Clusterable) unmodifiableList.get(i10));
                dArr[i10] = distance * distance;
            }
        }
        while (arrayList.size() < this.f100221k) {
            double d10 = 0.0d;
            double d11 = 0.0d;
            for (int i11 = 0; i11 < size; i11++) {
                if (!zArr[i11]) {
                    d11 += dArr[i11];
                }
            }
            double nextDouble = this.random.nextDouble() * d11;
            int i12 = 0;
            while (true) {
                if (i12 >= size) {
                    i12 = -1;
                    break;
                }
                if (!zArr[i12]) {
                    d10 += dArr[i12];
                    if (d10 >= nextDouble) {
                        break;
                    }
                }
                i12++;
            }
            if (i12 == -1) {
                int i13 = size - 1;
                while (true) {
                    if (i13 < 0) {
                        break;
                    }
                    if (!zArr[i13]) {
                        i12 = i13;
                        break;
                    }
                    i13--;
                }
            }
            if (i12 < 0) {
                break;
            }
            Clusterable clusterable2 = (Clusterable) unmodifiableList.get(i12);
            arrayList.add(new CentroidCluster(clusterable2));
            zArr[i12] = true;
            if (arrayList.size() < this.f100221k) {
                for (int i14 = 0; i14 < size; i14++) {
                    if (!zArr[i14]) {
                        double distance2 = distance(clusterable2, (Clusterable) unmodifiableList.get(i14));
                        double d12 = distance2 * distance2;
                        if (d12 < dArr[i14]) {
                            dArr[i14] = d12;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private T getFarthestPoint(Collection<CentroidCluster<T>> collection) throws ConvergenceException {
        Iterator<CentroidCluster<T>> it = collection.iterator();
        double d10 = Double.NEGATIVE_INFINITY;
        CentroidCluster<T> centroidCluster = null;
        int i10 = -1;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            CentroidCluster<T> next = it.next();
            Clusterable center = next.getCenter();
            List<T> points = next.getPoints();
            for (int i11 = 0; i11 < points.size(); i11++) {
                double distance = distance(points.get(i11), center);
                if (distance > d10) {
                    centroidCluster = next;
                    i10 = i11;
                    d10 = distance;
                }
            }
        }
        if (centroidCluster != null) {
            return centroidCluster.getPoints().remove(i10);
        }
        throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
    }

    private int getNearestCluster(Collection<CentroidCluster<T>> collection, T t10) {
        Iterator<CentroidCluster<T>> it = collection.iterator();
        double d10 = Double.MAX_VALUE;
        int i10 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            double distance = distance(t10, it.next().getCenter());
            if (distance < d10) {
                i10 = i11;
                d10 = distance;
            }
            i11++;
        }
        return i10;
    }

    private T getPointFromLargestNumberCluster(Collection<? extends Cluster<T>> collection) throws ConvergenceException {
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

    private T getPointFromLargestVarianceCluster(Collection<CentroidCluster<T>> collection) throws ConvergenceException {
        double d10 = Double.NEGATIVE_INFINITY;
        CentroidCluster<T> centroidCluster = null;
        for (CentroidCluster<T> centroidCluster2 : collection) {
            if (!centroidCluster2.getPoints().isEmpty()) {
                Clusterable center = centroidCluster2.getCenter();
                Variance variance = new Variance();
                Iterator<T> it = centroidCluster2.getPoints().iterator();
                while (it.hasNext()) {
                    variance.increment(distance(it.next(), center));
                }
                double result = variance.getResult();
                if (result > d10) {
                    centroidCluster = centroidCluster2;
                    d10 = result;
                }
            }
        }
        if (centroidCluster == null) {
            throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
        }
        List<T> points = centroidCluster.getPoints();
        return points.remove(this.random.nextInt(points.size()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v6, types: [org.apache.commons.math3.ml.clustering.Clusterable] */
    @Override
    public List<CentroidCluster<T>> cluster(Collection<T> collection) throws MathIllegalArgumentException, ConvergenceException {
        boolean z10;
        T t10;
        MathUtils.checkNotNull(collection);
        if (collection.size() < this.f100221k) {
            throw new NumberIsTooSmallException(Integer.valueOf(collection.size()), Integer.valueOf(this.f100221k), false);
        }
        List<CentroidCluster<T>> chooseInitialCenters = chooseInitialCenters(collection);
        int[] iArr = new int[collection.size()];
        assignPointsToClusters(chooseInitialCenters, collection, iArr);
        int i10 = this.maxIterations;
        if (i10 < 0) {
            i10 = Integer.MAX_VALUE;
        }
        int i11 = 0;
        while (i11 < i10) {
            ArrayList arrayList = new ArrayList();
            boolean z11 = false;
            for (CentroidCluster<T> centroidCluster : chooseInitialCenters) {
                if (centroidCluster.getPoints().isEmpty()) {
                    int i12 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$ml$clustering$KMeansPlusPlusClusterer$EmptyClusterStrategy[this.emptyStrategy.ordinal()];
                    z10 = true;
                    if (i12 == 1) {
                        t10 = getPointFromLargestVarianceCluster(chooseInitialCenters);
                    } else if (i12 == 2) {
                        t10 = getPointFromLargestNumberCluster(chooseInitialCenters);
                    } else {
                        if (i12 != 3) {
                            throw new ConvergenceException(LocalizedFormats.EMPTY_CLUSTER_IN_K_MEANS, new Object[0]);
                        }
                        t10 = getFarthestPoint(chooseInitialCenters);
                    }
                } else {
                    ?? centroidOf = centroidOf(centroidCluster.getPoints(), centroidCluster.getCenter().getPoint().length);
                    z10 = z11;
                    t10 = centroidOf;
                }
                arrayList.add(new CentroidCluster<>(t10));
                z11 = z10;
            }
            if (assignPointsToClusters(arrayList, collection, iArr) == 0 && !z11) {
                return arrayList;
            }
            i11++;
            chooseInitialCenters = arrayList;
        }
        return chooseInitialCenters;
    }

    public EmptyClusterStrategy getEmptyClusterStrategy() {
        return this.emptyStrategy;
    }

    public int getK() {
        return this.f100221k;
    }

    public int getMaxIterations() {
        return this.maxIterations;
    }

    public RandomGenerator getRandomGenerator() {
        return this.random;
    }

    public KMeansPlusPlusClusterer(int i10, int i11) {
        this(i10, i11, new EuclideanDistance());
    }

    public KMeansPlusPlusClusterer(int i10, int i11, DistanceMeasure distanceMeasure) {
        this(i10, i11, distanceMeasure, new JDKRandomGenerator());
    }

    public KMeansPlusPlusClusterer(int i10, int i11, DistanceMeasure distanceMeasure, RandomGenerator randomGenerator) {
        this(i10, i11, distanceMeasure, randomGenerator, EmptyClusterStrategy.LARGEST_VARIANCE);
    }

    public KMeansPlusPlusClusterer(int i10, int i11, DistanceMeasure distanceMeasure, RandomGenerator randomGenerator, EmptyClusterStrategy emptyClusterStrategy) {
        super(distanceMeasure);
        this.f100221k = i10;
        this.maxIterations = i11;
        this.random = randomGenerator;
        this.emptyStrategy = emptyClusterStrategy;
    }
}
