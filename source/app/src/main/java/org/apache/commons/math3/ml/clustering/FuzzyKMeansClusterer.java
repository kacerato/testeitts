package org.apache.commons.math3.ml.clustering;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.ml.clustering.Clusterable;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.distance.EuclideanDistance;
import org.apache.commons.math3.random.JDKRandomGenerator;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public class FuzzyKMeansClusterer<T extends Clusterable> extends Clusterer<T> {
    private static final double DEFAULT_EPSILON = 0.001d;
    private List<CentroidCluster<T>> clusters;
    private final double epsilon;
    private final double fuzziness;

    private final int f100220k;
    private final int maxIterations;
    private double[][] membershipMatrix;
    private List<T> points;
    private final RandomGenerator random;

    public FuzzyKMeansClusterer(int i10, double d10) throws NumberIsTooSmallException {
        this(i10, d10, -1, new EuclideanDistance());
    }

    private double calculateMaxMembershipChange(double[][] dArr) {
        double d10 = 0.0d;
        for (int i10 = 0; i10 < this.points.size(); i10++) {
            for (int i11 = 0; i11 < this.clusters.size(); i11++) {
                d10 = FastMath.max(FastMath.abs(this.membershipMatrix[i10][i11] - dArr[i10][i11]), d10);
            }
        }
        return d10;
    }

    private void initializeMembershipMatrix() {
        for (int i10 = 0; i10 < this.points.size(); i10++) {
            for (int i11 = 0; i11 < this.f100220k; i11++) {
                this.membershipMatrix[i10][i11] = this.random.nextDouble();
            }
            double[][] dArr = this.membershipMatrix;
            dArr[i10] = MathArrays.normalizeArray(dArr[i10], 1.0d);
        }
    }

    private void saveMembershipMatrix(double[][] dArr) {
        for (int i10 = 0; i10 < this.points.size(); i10++) {
            System.arraycopy(this.membershipMatrix[i10], 0, dArr[i10], 0, this.clusters.size());
        }
    }

    private void updateClusterCenters() {
        ArrayList arrayList = new ArrayList(this.f100220k);
        Iterator<CentroidCluster<T>> it = this.clusters.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            int length = it.next().getCenter().getPoint().length;
            double[] dArr = new double[length];
            double d10 = 0.0d;
            int i11 = 0;
            for (T t10 : this.points) {
                int i12 = i10;
                double pow = FastMath.pow(this.membershipMatrix[i11][i10], this.fuzziness);
                double[] point = t10.getPoint();
                for (int i13 = 0; i13 < length; i13++) {
                    dArr[i13] = dArr[i13] + (point[i13] * pow);
                }
                d10 += pow;
                i11++;
                i10 = i12;
            }
            MathArrays.scaleInPlace(1.0d / d10, dArr);
            arrayList.add(new CentroidCluster(new DoublePoint(dArr)));
            i10++;
        }
        this.clusters.clear();
        this.clusters = arrayList;
    }

    private void updateMembershipMatrix() {
        double d10;
        double d11;
        for (int i10 = 0; i10 < this.points.size(); i10++) {
            T t10 = this.points.get(i10);
            double d12 = Double.MIN_VALUE;
            int i11 = -1;
            for (int i12 = 0; i12 < this.clusters.size(); i12++) {
                double abs = FastMath.abs(distance(t10, this.clusters.get(i12).getCenter()));
                double d13 = 0.0d;
                if (abs != 0.0d) {
                    Iterator<CentroidCluster<T>> it = this.clusters.iterator();
                    d11 = 0.0d;
                    while (true) {
                        if (!it.hasNext()) {
                            d10 = d13;
                            break;
                        }
                        double abs2 = FastMath.abs(distance(t10, it.next().getCenter()));
                        if (abs2 == d13) {
                            d10 = d13;
                            d11 = Double.POSITIVE_INFINITY;
                            break;
                        } else {
                            d11 += FastMath.pow(abs / abs2, 2.0d / (this.fuzziness - 1.0d));
                            d13 = 0.0d;
                        }
                    }
                } else {
                    d10 = 0.0d;
                    d11 = 0.0d;
                }
                double d14 = d11 == d10 ? 1.0d : d11 == Double.POSITIVE_INFINITY ? d10 : 1.0d / d11;
                this.membershipMatrix[i10][i12] = d14;
                if (d14 > d12) {
                    i11 = i12;
                    d12 = d14;
                }
            }
            this.clusters.get(i11).addPoint(t10);
        }
    }

    @Override
    public List<CentroidCluster<T>> cluster(Collection<T> collection) throws MathIllegalArgumentException {
        MathUtils.checkNotNull(collection);
        int size = collection.size();
        int i10 = 0;
        if (size < this.f100220k) {
            throw new NumberIsTooSmallException(Integer.valueOf(size), Integer.valueOf(this.f100220k), false);
        }
        this.points = Collections.unmodifiableList(new ArrayList(collection));
        this.clusters = new ArrayList();
        int[] iArr = {size, this.f100220k};
        Class<Double> cls = Double.TYPE;
        this.membershipMatrix = (double[][]) Array.newInstance(cls, iArr);
        double[][] dArr = (double[][]) Array.newInstance(cls, size, this.f100220k);
        if (size == 0) {
            return this.clusters;
        }
        initializeMembershipMatrix();
        int length = this.points.get(0).getPoint().length;
        for (int i11 = 0; i11 < this.f100220k; i11++) {
            this.clusters.add(new CentroidCluster<>(new DoublePoint(new double[length])));
        }
        int i12 = this.maxIterations;
        if (i12 < 0) {
            i12 = Integer.MAX_VALUE;
        }
        do {
            saveMembershipMatrix(dArr);
            updateClusterCenters();
            updateMembershipMatrix();
            if (calculateMaxMembershipChange(dArr) <= this.epsilon) {
                break;
            }
            i10++;
        } while (i10 < i12);
        return this.clusters;
    }

    public List<CentroidCluster<T>> getClusters() {
        return this.clusters;
    }

    public List<T> getDataPoints() {
        return this.points;
    }

    public double getEpsilon() {
        return this.epsilon;
    }

    public double getFuzziness() {
        return this.fuzziness;
    }

    public int getK() {
        return this.f100220k;
    }

    public int getMaxIterations() {
        return this.maxIterations;
    }

    public RealMatrix getMembershipMatrix() {
        double[][] dArr = this.membershipMatrix;
        if (dArr != null) {
            return MatrixUtils.createRealMatrix(dArr);
        }
        throw new MathIllegalStateException();
    }

    public double getObjectiveFunctionValue() {
        List<T> list = this.points;
        if (list == null || this.clusters == null) {
            throw new MathIllegalStateException();
        }
        double d10 = 0.0d;
        int i10 = 0;
        for (T t10 : list) {
            Iterator<CentroidCluster<T>> it = this.clusters.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                double distance = distance(t10, it.next().getCenter());
                d10 += distance * distance * FastMath.pow(this.membershipMatrix[i10][i11], this.fuzziness);
                i11++;
            }
            i10++;
        }
        return d10;
    }

    public RandomGenerator getRandomGenerator() {
        return this.random;
    }

    public FuzzyKMeansClusterer(int i10, double d10, int i11, DistanceMeasure distanceMeasure) throws NumberIsTooSmallException {
        this(i10, d10, i11, distanceMeasure, 0.001d, new JDKRandomGenerator());
    }

    public FuzzyKMeansClusterer(int i10, double d10, int i11, DistanceMeasure distanceMeasure, double d11, RandomGenerator randomGenerator) throws NumberIsTooSmallException {
        super(distanceMeasure);
        if (d10 > 1.0d) {
            this.f100220k = i10;
            this.fuzziness = d10;
            this.maxIterations = i11;
            this.epsilon = d11;
            this.random = randomGenerator;
            this.membershipMatrix = null;
            this.points = null;
            this.clusters = null;
            return;
        }
        throw new NumberIsTooSmallException(Double.valueOf(d10), Double.valueOf(1.0d), false);
    }
}
