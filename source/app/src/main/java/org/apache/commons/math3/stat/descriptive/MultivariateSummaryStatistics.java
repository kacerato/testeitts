package org.apache.commons.math3.stat.descriptive;

import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.stat.descriptive.moment.GeometricMean;
import org.apache.commons.math3.stat.descriptive.moment.Mean;
import org.apache.commons.math3.stat.descriptive.moment.VectorialCovariance;
import org.apache.commons.math3.stat.descriptive.rank.Max;
import org.apache.commons.math3.stat.descriptive.rank.Min;
import org.apache.commons.math3.stat.descriptive.summary.Sum;
import org.apache.commons.math3.stat.descriptive.summary.SumOfLogs;
import org.apache.commons.math3.stat.descriptive.summary.SumOfSquares;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

public class MultivariateSummaryStatistics implements StatisticalMultivariateSummary, Serializable {
    private static final long serialVersionUID = 2271900808994826718L;
    private VectorialCovariance covarianceImpl;
    private StorelessUnivariateStatistic[] geoMeanImpl;

    private int f100337k;
    private StorelessUnivariateStatistic[] maxImpl;
    private StorelessUnivariateStatistic[] meanImpl;
    private StorelessUnivariateStatistic[] minImpl;

    private long f100338n = 0;
    private StorelessUnivariateStatistic[] sumImpl;
    private StorelessUnivariateStatistic[] sumLogImpl;
    private StorelessUnivariateStatistic[] sumSqImpl;

    public MultivariateSummaryStatistics(int i10, boolean z10) {
        this.f100337k = i10;
        this.sumImpl = new StorelessUnivariateStatistic[i10];
        this.sumSqImpl = new StorelessUnivariateStatistic[i10];
        this.minImpl = new StorelessUnivariateStatistic[i10];
        this.maxImpl = new StorelessUnivariateStatistic[i10];
        this.sumLogImpl = new StorelessUnivariateStatistic[i10];
        this.geoMeanImpl = new StorelessUnivariateStatistic[i10];
        this.meanImpl = new StorelessUnivariateStatistic[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            this.sumImpl[i11] = new Sum();
            this.sumSqImpl[i11] = new SumOfSquares();
            this.minImpl[i11] = new Min();
            this.maxImpl[i11] = new Max();
            this.sumLogImpl[i11] = new SumOfLogs();
            this.geoMeanImpl[i11] = new GeometricMean();
            this.meanImpl[i11] = new Mean();
        }
        this.covarianceImpl = new VectorialCovariance(i10, z10);
    }

    private void append(StringBuilder sb2, double[] dArr, String str, String str2, String str3) {
        sb2.append(str);
        for (int i10 = 0; i10 < dArr.length; i10++) {
            if (i10 > 0) {
                sb2.append(str2);
            }
            sb2.append(dArr[i10]);
        }
        sb2.append(str3);
    }

    private void checkDimension(int i10) throws DimensionMismatchException {
        if (i10 != this.f100337k) {
            throw new DimensionMismatchException(i10, this.f100337k);
        }
    }

    private void checkEmpty() throws MathIllegalStateException {
        if (this.f100338n > 0) {
            throw new MathIllegalStateException(LocalizedFormats.VALUES_ADDED_BEFORE_CONFIGURING_STATISTIC, Long.valueOf(this.f100338n));
        }
    }

    private double[] getResults(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) {
        int length = storelessUnivariateStatisticArr.length;
        double[] dArr = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr[i10] = storelessUnivariateStatisticArr[i10].getResult();
        }
        return dArr;
    }

    private void setImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr, StorelessUnivariateStatistic[] storelessUnivariateStatisticArr2) throws MathIllegalStateException, DimensionMismatchException {
        checkEmpty();
        checkDimension(storelessUnivariateStatisticArr.length);
        System.arraycopy(storelessUnivariateStatisticArr, 0, storelessUnivariateStatisticArr2, 0, storelessUnivariateStatisticArr.length);
    }

    public void addValue(double[] dArr) throws DimensionMismatchException {
        checkDimension(dArr.length);
        for (int i10 = 0; i10 < this.f100337k; i10++) {
            double d10 = dArr[i10];
            this.sumImpl[i10].increment(d10);
            this.sumSqImpl[i10].increment(d10);
            this.minImpl[i10].increment(d10);
            this.maxImpl[i10].increment(d10);
            this.sumLogImpl[i10].increment(d10);
            this.geoMeanImpl[i10].increment(d10);
            this.meanImpl[i10].increment(d10);
        }
        this.covarianceImpl.increment(dArr);
        this.f100338n++;
    }

    public void clear() {
        this.f100338n = 0L;
        for (int i10 = 0; i10 < this.f100337k; i10++) {
            this.minImpl[i10].clear();
            this.maxImpl[i10].clear();
            this.sumImpl[i10].clear();
            this.sumLogImpl[i10].clear();
            this.sumSqImpl[i10].clear();
            this.geoMeanImpl[i10].clear();
            this.meanImpl[i10].clear();
        }
        this.covarianceImpl.clear();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MultivariateSummaryStatistics)) {
            return false;
        }
        MultivariateSummaryStatistics multivariateSummaryStatistics = (MultivariateSummaryStatistics) obj;
        return MathArrays.equalsIncludingNaN(multivariateSummaryStatistics.getGeometricMean(), getGeometricMean()) && MathArrays.equalsIncludingNaN(multivariateSummaryStatistics.getMax(), getMax()) && MathArrays.equalsIncludingNaN(multivariateSummaryStatistics.getMean(), getMean()) && MathArrays.equalsIncludingNaN(multivariateSummaryStatistics.getMin(), getMin()) && Precision.equalsIncludingNaN((float) multivariateSummaryStatistics.getN(), (float) getN()) && MathArrays.equalsIncludingNaN(multivariateSummaryStatistics.getSum(), getSum()) && MathArrays.equalsIncludingNaN(multivariateSummaryStatistics.getSumSq(), getSumSq()) && MathArrays.equalsIncludingNaN(multivariateSummaryStatistics.getSumLog(), getSumLog()) && multivariateSummaryStatistics.getCovariance().equals(getCovariance());
    }

    @Override
    public RealMatrix getCovariance() {
        return this.covarianceImpl.getResult();
    }

    @Override
    public int getDimension() {
        return this.f100337k;
    }

    public StorelessUnivariateStatistic[] getGeoMeanImpl() {
        return (StorelessUnivariateStatistic[]) this.geoMeanImpl.clone();
    }

    @Override
    public double[] getGeometricMean() {
        return getResults(this.geoMeanImpl);
    }

    @Override
    public double[] getMax() {
        return getResults(this.maxImpl);
    }

    public StorelessUnivariateStatistic[] getMaxImpl() {
        return (StorelessUnivariateStatistic[]) this.maxImpl.clone();
    }

    @Override
    public double[] getMean() {
        return getResults(this.meanImpl);
    }

    public StorelessUnivariateStatistic[] getMeanImpl() {
        return (StorelessUnivariateStatistic[]) this.meanImpl.clone();
    }

    @Override
    public double[] getMin() {
        return getResults(this.minImpl);
    }

    public StorelessUnivariateStatistic[] getMinImpl() {
        return (StorelessUnivariateStatistic[]) this.minImpl.clone();
    }

    @Override
    public long getN() {
        return this.f100338n;
    }

    @Override
    public double[] getStandardDeviation() {
        double[] dArr = new double[this.f100337k];
        if (getN() < 1) {
            Arrays.fill(dArr, Double.NaN);
        } else if (getN() < 2) {
            Arrays.fill(dArr, 0.0d);
        } else {
            RealMatrix result = this.covarianceImpl.getResult();
            for (int i10 = 0; i10 < this.f100337k; i10++) {
                dArr[i10] = FastMath.sqrt(result.getEntry(i10, i10));
            }
        }
        return dArr;
    }

    @Override
    public double[] getSum() {
        return getResults(this.sumImpl);
    }

    public StorelessUnivariateStatistic[] getSumImpl() {
        return (StorelessUnivariateStatistic[]) this.sumImpl.clone();
    }

    @Override
    public double[] getSumLog() {
        return getResults(this.sumLogImpl);
    }

    public StorelessUnivariateStatistic[] getSumLogImpl() {
        return (StorelessUnivariateStatistic[]) this.sumLogImpl.clone();
    }

    @Override
    public double[] getSumSq() {
        return getResults(this.sumSqImpl);
    }

    public StorelessUnivariateStatistic[] getSumsqImpl() {
        return (StorelessUnivariateStatistic[]) this.sumSqImpl.clone();
    }

    public int hashCode() {
        return ((((((((((((((((((MathUtils.hash(getGeometricMean()) + 31) * 31) + MathUtils.hash(getGeometricMean())) * 31) + MathUtils.hash(getMax())) * 31) + MathUtils.hash(getMean())) * 31) + MathUtils.hash(getMin())) * 31) + MathUtils.hash(getN())) * 31) + MathUtils.hash(getSum())) * 31) + MathUtils.hash(getSumSq())) * 31) + MathUtils.hash(getSumLog())) * 31) + getCovariance().hashCode();
    }

    public void setGeoMeanImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws MathIllegalStateException, DimensionMismatchException {
        setImpl(storelessUnivariateStatisticArr, this.geoMeanImpl);
    }

    public void setMaxImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws MathIllegalStateException, DimensionMismatchException {
        setImpl(storelessUnivariateStatisticArr, this.maxImpl);
    }

    public void setMeanImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws MathIllegalStateException, DimensionMismatchException {
        setImpl(storelessUnivariateStatisticArr, this.meanImpl);
    }

    public void setMinImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws MathIllegalStateException, DimensionMismatchException {
        setImpl(storelessUnivariateStatisticArr, this.minImpl);
    }

    public void setSumImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws MathIllegalStateException, DimensionMismatchException {
        setImpl(storelessUnivariateStatisticArr, this.sumImpl);
    }

    public void setSumLogImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws MathIllegalStateException, DimensionMismatchException {
        setImpl(storelessUnivariateStatisticArr, this.sumLogImpl);
    }

    public void setSumsqImpl(StorelessUnivariateStatistic[] storelessUnivariateStatisticArr) throws MathIllegalStateException, DimensionMismatchException {
        setImpl(storelessUnivariateStatisticArr, this.sumSqImpl);
    }

    public String toString() {
        String property = System.getProperty("line.separator");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("MultivariateSummaryStatistics:" + property);
        sb2.append("n: " + getN() + property);
        append(sb2, getMin(), "min: ", ", ", property);
        append(sb2, getMax(), "max: ", ", ", property);
        append(sb2, getMean(), "mean: ", ", ", property);
        append(sb2, getGeometricMean(), "geometric mean: ", ", ", property);
        append(sb2, getSumSq(), "sum of squares: ", ", ", property);
        append(sb2, getSumLog(), "sum of logarithms: ", ", ", property);
        append(sb2, getStandardDeviation(), "standard deviation: ", ", ", property);
        sb2.append("covariance: " + getCovariance().toString() + property);
        return sb2.toString();
    }
}
