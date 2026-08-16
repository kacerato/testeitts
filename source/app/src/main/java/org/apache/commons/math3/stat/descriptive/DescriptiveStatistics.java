package org.apache.commons.math3.stat.descriptive;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.stat.descriptive.moment.GeometricMean;
import org.apache.commons.math3.stat.descriptive.moment.Kurtosis;
import org.apache.commons.math3.stat.descriptive.moment.Mean;
import org.apache.commons.math3.stat.descriptive.moment.Skewness;
import org.apache.commons.math3.stat.descriptive.moment.Variance;
import org.apache.commons.math3.stat.descriptive.rank.Max;
import org.apache.commons.math3.stat.descriptive.rank.Min;
import org.apache.commons.math3.stat.descriptive.rank.Percentile;
import org.apache.commons.math3.stat.descriptive.summary.Sum;
import org.apache.commons.math3.stat.descriptive.summary.SumOfSquares;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.ResizableDoubleArray;

public class DescriptiveStatistics implements StatisticalSummary, Serializable {
    public static final int INFINITE_WINDOW = -1;
    private static final String SET_QUANTILE_METHOD_NAME = "setQuantile";
    private static final long serialVersionUID = 4133067267405273064L;
    private ResizableDoubleArray eDA;
    private UnivariateStatistic geometricMeanImpl;
    private UnivariateStatistic kurtosisImpl;
    private UnivariateStatistic maxImpl;
    private UnivariateStatistic meanImpl;
    private UnivariateStatistic minImpl;
    private UnivariateStatistic percentileImpl;
    private UnivariateStatistic skewnessImpl;
    private UnivariateStatistic sumImpl;
    private UnivariateStatistic sumsqImpl;
    private UnivariateStatistic varianceImpl;
    protected int windowSize;

    public DescriptiveStatistics() {
        this.windowSize = -1;
        this.eDA = new ResizableDoubleArray();
        this.meanImpl = new Mean();
        this.geometricMeanImpl = new GeometricMean();
        this.kurtosisImpl = new Kurtosis();
        this.maxImpl = new Max();
        this.minImpl = new Min();
        this.percentileImpl = new Percentile();
        this.skewnessImpl = new Skewness();
        this.varianceImpl = new Variance();
        this.sumsqImpl = new SumOfSquares();
        this.sumImpl = new Sum();
    }

    public void addValue(double d10) {
        if (this.windowSize == -1) {
            this.eDA.addElement(d10);
        } else if (getN() == this.windowSize) {
            this.eDA.addElementRolling(d10);
        } else if (getN() < this.windowSize) {
            this.eDA.addElement(d10);
        }
    }

    public double apply(UnivariateStatistic univariateStatistic) {
        return this.eDA.compute(univariateStatistic);
    }

    public void clear() {
        this.eDA.clear();
    }

    public DescriptiveStatistics copy() {
        DescriptiveStatistics descriptiveStatistics = new DescriptiveStatistics();
        copy(this, descriptiveStatistics);
        return descriptiveStatistics;
    }

    public double getElement(int i10) {
        return this.eDA.getElement(i10);
    }

    public double getGeometricMean() {
        return apply(this.geometricMeanImpl);
    }

    public synchronized UnivariateStatistic getGeometricMeanImpl() {
        return this.geometricMeanImpl;
    }

    public double getKurtosis() {
        return apply(this.kurtosisImpl);
    }

    public synchronized UnivariateStatistic getKurtosisImpl() {
        return this.kurtosisImpl;
    }

    @Override
    public double getMax() {
        return apply(this.maxImpl);
    }

    public synchronized UnivariateStatistic getMaxImpl() {
        return this.maxImpl;
    }

    @Override
    public double getMean() {
        return apply(this.meanImpl);
    }

    public synchronized UnivariateStatistic getMeanImpl() {
        return this.meanImpl;
    }

    @Override
    public double getMin() {
        return apply(this.minImpl);
    }

    public synchronized UnivariateStatistic getMinImpl() {
        return this.minImpl;
    }

    @Override
    public long getN() {
        return this.eDA.getNumElements();
    }

    public double getPercentile(double d10) throws MathIllegalStateException, MathIllegalArgumentException {
        UnivariateStatistic univariateStatistic = this.percentileImpl;
        if (univariateStatistic instanceof Percentile) {
            ((Percentile) univariateStatistic).setQuantile(d10);
        } else {
            try {
                univariateStatistic.getClass().getMethod(SET_QUANTILE_METHOD_NAME, Double.TYPE).invoke(this.percentileImpl, Double.valueOf(d10));
            } catch (IllegalAccessException unused) {
                throw new MathIllegalStateException(LocalizedFormats.PERCENTILE_IMPLEMENTATION_CANNOT_ACCESS_METHOD, SET_QUANTILE_METHOD_NAME, this.percentileImpl.getClass().getName());
            } catch (NoSuchMethodException unused2) {
                throw new MathIllegalStateException(LocalizedFormats.PERCENTILE_IMPLEMENTATION_UNSUPPORTED_METHOD, this.percentileImpl.getClass().getName(), SET_QUANTILE_METHOD_NAME);
            } catch (InvocationTargetException e10) {
                throw new IllegalStateException(e10.getCause());
            }
        }
        return apply(this.percentileImpl);
    }

    public synchronized UnivariateStatistic getPercentileImpl() {
        return this.percentileImpl;
    }

    public double getPopulationVariance() {
        return apply(new Variance(false));
    }

    public double getQuadraticMean() {
        long n10 = getN();
        if (n10 > 0) {
            return FastMath.sqrt(getSumsq() / n10);
        }
        return Double.NaN;
    }

    public double getSkewness() {
        return apply(this.skewnessImpl);
    }

    public synchronized UnivariateStatistic getSkewnessImpl() {
        return this.skewnessImpl;
    }

    public double[] getSortedValues() {
        double[] values = getValues();
        Arrays.sort(values);
        return values;
    }

    @Override
    public double getStandardDeviation() {
        if (getN() <= 0) {
            return Double.NaN;
        }
        if (getN() > 1) {
            return FastMath.sqrt(getVariance());
        }
        return 0.0d;
    }

    @Override
    public double getSum() {
        return apply(this.sumImpl);
    }

    public synchronized UnivariateStatistic getSumImpl() {
        return this.sumImpl;
    }

    public double getSumsq() {
        return apply(this.sumsqImpl);
    }

    public synchronized UnivariateStatistic getSumsqImpl() {
        return this.sumsqImpl;
    }

    public double[] getValues() {
        return this.eDA.getElements();
    }

    @Override
    public double getVariance() {
        return apply(this.varianceImpl);
    }

    public synchronized UnivariateStatistic getVarianceImpl() {
        return this.varianceImpl;
    }

    public int getWindowSize() {
        return this.windowSize;
    }

    public void removeMostRecentValue() throws MathIllegalStateException {
        try {
            this.eDA.discardMostRecentElements(1);
        } catch (MathIllegalArgumentException unused) {
            throw new MathIllegalStateException(LocalizedFormats.NO_DATA, new Object[0]);
        }
    }

    public double replaceMostRecentValue(double d10) throws MathIllegalStateException {
        return this.eDA.substituteMostRecentElement(d10);
    }

    public synchronized void setGeometricMeanImpl(UnivariateStatistic univariateStatistic) {
        this.geometricMeanImpl = univariateStatistic;
    }

    public synchronized void setKurtosisImpl(UnivariateStatistic univariateStatistic) {
        this.kurtosisImpl = univariateStatistic;
    }

    public synchronized void setMaxImpl(UnivariateStatistic univariateStatistic) {
        this.maxImpl = univariateStatistic;
    }

    public synchronized void setMeanImpl(UnivariateStatistic univariateStatistic) {
        this.meanImpl = univariateStatistic;
    }

    public synchronized void setMinImpl(UnivariateStatistic univariateStatistic) {
        this.minImpl = univariateStatistic;
    }

    public synchronized void setPercentileImpl(UnivariateStatistic univariateStatistic) throws MathIllegalArgumentException {
        try {
            try {
                univariateStatistic.getClass().getMethod(SET_QUANTILE_METHOD_NAME, Double.TYPE).invoke(univariateStatistic, Double.valueOf(50.0d));
                this.percentileImpl = univariateStatistic;
            } catch (NoSuchMethodException unused) {
                throw new MathIllegalArgumentException(LocalizedFormats.PERCENTILE_IMPLEMENTATION_UNSUPPORTED_METHOD, univariateStatistic.getClass().getName(), SET_QUANTILE_METHOD_NAME);
            }
        } catch (IllegalAccessException unused2) {
            throw new MathIllegalArgumentException(LocalizedFormats.PERCENTILE_IMPLEMENTATION_CANNOT_ACCESS_METHOD, SET_QUANTILE_METHOD_NAME, univariateStatistic.getClass().getName());
        } catch (InvocationTargetException e10) {
            throw new IllegalArgumentException(e10.getCause());
        }
    }

    public synchronized void setSkewnessImpl(UnivariateStatistic univariateStatistic) {
        this.skewnessImpl = univariateStatistic;
    }

    public synchronized void setSumImpl(UnivariateStatistic univariateStatistic) {
        this.sumImpl = univariateStatistic;
    }

    public synchronized void setSumsqImpl(UnivariateStatistic univariateStatistic) {
        this.sumsqImpl = univariateStatistic;
    }

    public synchronized void setVarianceImpl(UnivariateStatistic univariateStatistic) {
        this.varianceImpl = univariateStatistic;
    }

    public void setWindowSize(int i10) throws MathIllegalArgumentException {
        if (i10 < 1 && i10 != -1) {
            throw new MathIllegalArgumentException(LocalizedFormats.NOT_POSITIVE_WINDOW_SIZE, Integer.valueOf(i10));
        }
        this.windowSize = i10;
        if (i10 == -1 || i10 >= this.eDA.getNumElements()) {
            return;
        }
        ResizableDoubleArray resizableDoubleArray = this.eDA;
        resizableDoubleArray.discardFrontElements(resizableDoubleArray.getNumElements() - i10);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DescriptiveStatistics:");
        sb2.append("\n");
        sb2.append("n: ");
        sb2.append(getN());
        sb2.append("\n");
        sb2.append("min: ");
        sb2.append(getMin());
        sb2.append("\n");
        sb2.append("max: ");
        sb2.append(getMax());
        sb2.append("\n");
        sb2.append("mean: ");
        sb2.append(getMean());
        sb2.append("\n");
        sb2.append("std dev: ");
        sb2.append(getStandardDeviation());
        sb2.append("\n");
        try {
            sb2.append("median: ");
            sb2.append(getPercentile(50.0d));
            sb2.append("\n");
        } catch (MathIllegalStateException unused) {
            sb2.append("median: unavailable");
            sb2.append("\n");
        }
        sb2.append("skewness: ");
        sb2.append(getSkewness());
        sb2.append("\n");
        sb2.append("kurtosis: ");
        sb2.append(getKurtosis());
        sb2.append("\n");
        return sb2.toString();
    }

    public static void copy(DescriptiveStatistics descriptiveStatistics, DescriptiveStatistics descriptiveStatistics2) throws NullArgumentException {
        MathUtils.checkNotNull(descriptiveStatistics);
        MathUtils.checkNotNull(descriptiveStatistics2);
        descriptiveStatistics2.eDA = descriptiveStatistics.eDA.copy();
        descriptiveStatistics2.windowSize = descriptiveStatistics.windowSize;
        descriptiveStatistics2.maxImpl = descriptiveStatistics.maxImpl.copy();
        descriptiveStatistics2.meanImpl = descriptiveStatistics.meanImpl.copy();
        descriptiveStatistics2.minImpl = descriptiveStatistics.minImpl.copy();
        descriptiveStatistics2.sumImpl = descriptiveStatistics.sumImpl.copy();
        descriptiveStatistics2.varianceImpl = descriptiveStatistics.varianceImpl.copy();
        descriptiveStatistics2.sumsqImpl = descriptiveStatistics.sumsqImpl.copy();
        descriptiveStatistics2.geometricMeanImpl = descriptiveStatistics.geometricMeanImpl.copy();
        descriptiveStatistics2.kurtosisImpl = descriptiveStatistics.kurtosisImpl;
        descriptiveStatistics2.skewnessImpl = descriptiveStatistics.skewnessImpl;
        descriptiveStatistics2.percentileImpl = descriptiveStatistics.percentileImpl;
    }

    public DescriptiveStatistics(int i10) throws MathIllegalArgumentException {
        this.windowSize = -1;
        this.eDA = new ResizableDoubleArray();
        this.meanImpl = new Mean();
        this.geometricMeanImpl = new GeometricMean();
        this.kurtosisImpl = new Kurtosis();
        this.maxImpl = new Max();
        this.minImpl = new Min();
        this.percentileImpl = new Percentile();
        this.skewnessImpl = new Skewness();
        this.varianceImpl = new Variance();
        this.sumsqImpl = new SumOfSquares();
        this.sumImpl = new Sum();
        setWindowSize(i10);
    }

    public DescriptiveStatistics(double[] dArr) {
        this.windowSize = -1;
        this.eDA = new ResizableDoubleArray();
        this.meanImpl = new Mean();
        this.geometricMeanImpl = new GeometricMean();
        this.kurtosisImpl = new Kurtosis();
        this.maxImpl = new Max();
        this.minImpl = new Min();
        this.percentileImpl = new Percentile();
        this.skewnessImpl = new Skewness();
        this.varianceImpl = new Variance();
        this.sumsqImpl = new SumOfSquares();
        this.sumImpl = new Sum();
        if (dArr != null) {
            this.eDA = new ResizableDoubleArray(dArr);
        }
    }

    public DescriptiveStatistics(DescriptiveStatistics descriptiveStatistics) throws NullArgumentException {
        this.windowSize = -1;
        this.eDA = new ResizableDoubleArray();
        this.meanImpl = new Mean();
        this.geometricMeanImpl = new GeometricMean();
        this.kurtosisImpl = new Kurtosis();
        this.maxImpl = new Max();
        this.minImpl = new Min();
        this.percentileImpl = new Percentile();
        this.skewnessImpl = new Skewness();
        this.varianceImpl = new Variance();
        this.sumsqImpl = new SumOfSquares();
        this.sumImpl = new Sum();
        copy(descriptiveStatistics, this);
    }
}
