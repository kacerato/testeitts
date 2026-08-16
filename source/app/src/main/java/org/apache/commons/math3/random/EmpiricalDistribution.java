package org.apache.commons.math3.random;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.distribution.AbstractRealDistribution;
import org.apache.commons.math3.distribution.ConstantRealDistribution;
import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.distribution.RealDistribution;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.stat.descriptive.StatisticalSummary;
import org.apache.commons.math3.stat.descriptive.SummaryStatistics;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

public class EmpiricalDistribution extends AbstractRealDistribution {
    public static final int DEFAULT_BIN_COUNT = 1000;
    private static final String FILE_CHARSET = "US-ASCII";
    private static final long serialVersionUID = 5729073523949762654L;
    private final int binCount;
    private final List<SummaryStatistics> binStats;
    private double delta;
    private boolean loaded;
    private double max;
    private double min;
    protected final RandomDataGenerator randomData;
    private SummaryStatistics sampleStats;
    private double[] upperBounds;

    public class ArrayDataAdapter extends DataAdapter {
        private double[] inputArray;

        public ArrayDataAdapter(double[] dArr) throws NullArgumentException {
            super();
            MathUtils.checkNotNull(dArr);
            this.inputArray = dArr;
        }

        @Override
        public void computeBinStats() throws IOException {
            for (int i10 = 0; i10 < this.inputArray.length; i10++) {
                ((SummaryStatistics) EmpiricalDistribution.this.binStats.get(EmpiricalDistribution.this.findBin(this.inputArray[i10]))).addValue(this.inputArray[i10]);
            }
        }

        @Override
        public void computeStats() throws IOException {
            EmpiricalDistribution.this.sampleStats = new SummaryStatistics();
            for (int i10 = 0; i10 < this.inputArray.length; i10++) {
                EmpiricalDistribution.this.sampleStats.addValue(this.inputArray[i10]);
            }
        }
    }

    public abstract class DataAdapter {
        private DataAdapter() {
        }

        public abstract void computeBinStats() throws IOException;

        public abstract void computeStats() throws IOException;
    }

    public class StreamDataAdapter extends DataAdapter {
        private BufferedReader inputStream;

        public StreamDataAdapter(BufferedReader bufferedReader) {
            super();
            this.inputStream = bufferedReader;
        }

        @Override
        public void computeBinStats() throws IOException {
            while (true) {
                String readLine = this.inputStream.readLine();
                if (readLine == null) {
                    this.inputStream.close();
                    this.inputStream = null;
                    return;
                } else {
                    double parseDouble = Double.parseDouble(readLine);
                    ((SummaryStatistics) EmpiricalDistribution.this.binStats.get(EmpiricalDistribution.this.findBin(parseDouble))).addValue(parseDouble);
                }
            }
        }

        @Override
        public void computeStats() throws IOException {
            EmpiricalDistribution.this.sampleStats = new SummaryStatistics();
            while (true) {
                String readLine = this.inputStream.readLine();
                if (readLine == null) {
                    this.inputStream.close();
                    this.inputStream = null;
                    return;
                } else {
                    EmpiricalDistribution.this.sampleStats.addValue(Double.parseDouble(readLine));
                }
            }
        }
    }

    public EmpiricalDistribution() {
        this(1000);
    }

    private double cumBinP(int i10) {
        return this.upperBounds[i10];
    }

    private void fillBinStats(DataAdapter dataAdapter) throws IOException {
        this.min = this.sampleStats.getMin();
        double max = this.sampleStats.getMax();
        this.max = max;
        this.delta = (max - this.min) / this.binCount;
        if (!this.binStats.isEmpty()) {
            this.binStats.clear();
        }
        for (int i10 = 0; i10 < this.binCount; i10++) {
            this.binStats.add(i10, new SummaryStatistics());
        }
        dataAdapter.computeBinStats();
        double[] dArr = new double[this.binCount];
        this.upperBounds = dArr;
        dArr[0] = this.binStats.get(0).getN() / this.sampleStats.getN();
        int i11 = 1;
        while (true) {
            int i12 = this.binCount;
            if (i11 >= i12 - 1) {
                this.upperBounds[i12 - 1] = 1.0d;
                return;
            } else {
                double[] dArr2 = this.upperBounds;
                dArr2[i11] = dArr2[i11 - 1] + (this.binStats.get(i11).getN() / this.sampleStats.getN());
                i11++;
            }
        }
    }

    public int findBin(double d10) {
        return FastMath.min(FastMath.max(((int) FastMath.ceil((d10 - this.min) / this.delta)) - 1, 0), this.binCount - 1);
    }

    private RealDistribution k(double d10) {
        return getKernel(this.binStats.get(findBin(d10)));
    }

    private double kB(int i10) {
        double d10;
        double d11;
        double[] upperBounds = getUpperBounds();
        RealDistribution kernel = getKernel(this.binStats.get(i10));
        if (i10 == 0) {
            d10 = this.min;
            d11 = upperBounds[0];
        } else {
            d10 = upperBounds[i10 - 1];
            d11 = upperBounds[i10];
        }
        return kernel.cumulativeProbability(d10, d11);
    }

    private double pB(int i10) {
        if (i10 == 0) {
            return this.upperBounds[0];
        }
        double[] dArr = this.upperBounds;
        return dArr[i10] - dArr[i10 - 1];
    }

    private double pBminus(int i10) {
        if (i10 == 0) {
            return 0.0d;
        }
        return this.upperBounds[i10 - 1];
    }

    @Override
    public double cumulativeProbability(double d10) {
        if (d10 < this.min) {
            return 0.0d;
        }
        if (d10 >= this.max) {
            return 1.0d;
        }
        int findBin = findBin(d10);
        double pBminus = pBminus(findBin);
        double pB = pB(findBin);
        RealDistribution k10 = k(d10);
        if (k10 instanceof ConstantRealDistribution) {
            return d10 < k10.getNumericalMean() ? pBminus : pBminus + pB;
        }
        return pBminus + (pB * ((k10.cumulativeProbability(d10) - k10.cumulativeProbability(findBin == 0 ? this.min : getUpperBounds()[findBin - 1])) / kB(findBin)));
    }

    @Override
    public double density(double d10) {
        if (d10 < this.min || d10 > this.max) {
            return 0.0d;
        }
        int findBin = findBin(d10);
        return (getKernel(this.binStats.get(findBin)).density(d10) * pB(findBin)) / kB(findBin);
    }

    public int getBinCount() {
        return this.binCount;
    }

    public List<SummaryStatistics> getBinStats() {
        return this.binStats;
    }

    public double[] getGeneratorUpperBounds() {
        double[] dArr = this.upperBounds;
        int length = dArr.length;
        double[] dArr2 = new double[length];
        System.arraycopy(dArr, 0, dArr2, 0, length);
        return dArr2;
    }

    public RealDistribution getKernel(SummaryStatistics summaryStatistics) {
        return (summaryStatistics.getN() == 1 || summaryStatistics.getVariance() == 0.0d) ? new ConstantRealDistribution(summaryStatistics.getMean()) : new NormalDistribution(this.randomData.getRandomGenerator(), summaryStatistics.getMean(), summaryStatistics.getStandardDeviation(), 1.0E-9d);
    }

    public double getNextValue() throws MathIllegalStateException {
        if (this.loaded) {
            return sample();
        }
        throw new MathIllegalStateException(LocalizedFormats.DISTRIBUTION_NOT_LOADED, new Object[0]);
    }

    @Override
    public double getNumericalMean() {
        return this.sampleStats.getMean();
    }

    @Override
    public double getNumericalVariance() {
        return this.sampleStats.getVariance();
    }

    public StatisticalSummary getSampleStats() {
        return this.sampleStats;
    }

    @Override
    public double getSupportLowerBound() {
        return this.min;
    }

    @Override
    public double getSupportUpperBound() {
        return this.max;
    }

    public double[] getUpperBounds() {
        double[] dArr = new double[this.binCount];
        int i10 = 0;
        while (true) {
            int i11 = this.binCount;
            if (i10 >= i11 - 1) {
                dArr[i11 - 1] = this.max;
                return dArr;
            }
            int i12 = i10 + 1;
            dArr[i10] = this.min + (this.delta * i12);
            i10 = i12;
        }
    }

    @Override
    public double inverseCumulativeProbability(double d10) throws OutOfRangeException {
        int i10 = 0;
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        if (d10 == 0.0d) {
            return getSupportLowerBound();
        }
        if (d10 == 1.0d) {
            return getSupportUpperBound();
        }
        while (cumBinP(i10) < d10) {
            i10++;
        }
        RealDistribution kernel = getKernel(this.binStats.get(i10));
        double kB = kB(i10);
        double d11 = i10 == 0 ? this.min : getUpperBounds()[i10 - 1];
        double cumulativeProbability = kernel.cumulativeProbability(d11);
        double pB = pB(i10);
        double pBminus = d10 - pBminus(i10);
        return pBminus <= 0.0d ? d11 : kernel.inverseCumulativeProbability(cumulativeProbability + ((pBminus * kB) / pB));
    }

    public boolean isLoaded() {
        return this.loaded;
    }

    @Override
    public boolean isSupportConnected() {
        return true;
    }

    @Override
    public boolean isSupportLowerBoundInclusive() {
        return true;
    }

    @Override
    public boolean isSupportUpperBoundInclusive() {
        return true;
    }

    public void load(double[] dArr) throws NullArgumentException {
        try {
            new ArrayDataAdapter(dArr).computeStats();
            fillBinStats(new ArrayDataAdapter(dArr));
            this.loaded = true;
        } catch (IOException unused) {
            throw new MathInternalError();
        }
    }

    @Override
    public double probability(double d10) {
        return 0.0d;
    }

    public void reSeed(long j10) {
        this.randomData.reSeed(j10);
    }

    @Override
    public void reseedRandomGenerator(long j10) {
        this.randomData.reSeed(j10);
    }

    public EmpiricalDistribution(int i10) {
        this(i10, new RandomDataGenerator());
    }

    public EmpiricalDistribution(int i10, RandomGenerator randomGenerator) {
        this(i10, new RandomDataGenerator(randomGenerator));
    }

    public EmpiricalDistribution(RandomGenerator randomGenerator) {
        this(1000, randomGenerator);
    }

    @Deprecated
    public EmpiricalDistribution(int i10, RandomDataImpl randomDataImpl) {
        this(i10, randomDataImpl.getDelegate());
    }

    @Deprecated
    public EmpiricalDistribution(RandomDataImpl randomDataImpl) {
        this(1000, randomDataImpl);
    }

    public void load(URL url) throws IOException, NullArgumentException, ZeroException {
        MathUtils.checkNotNull(url);
        Charset forName = Charset.forName("US-ASCII");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(url.openStream(), forName));
        try {
            new StreamDataAdapter(bufferedReader).computeStats();
            if (this.sampleStats.getN() != 0) {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(url.openStream(), forName));
                try {
                    fillBinStats(new StreamDataAdapter(bufferedReader2));
                    this.loaded = true;
                    try {
                        bufferedReader2.close();
                        return;
                    } catch (IOException unused) {
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    try {
                        bufferedReader.close();
                    } catch (IOException unused2) {
                    }
                    throw th;
                }
            }
            throw new ZeroException(LocalizedFormats.URL_CONTAINS_NO_DATA, url);
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private EmpiricalDistribution(int i10, RandomDataGenerator randomDataGenerator) {
        super(randomDataGenerator.getRandomGenerator());
        this.sampleStats = null;
        this.max = Double.NEGATIVE_INFINITY;
        this.min = Double.POSITIVE_INFINITY;
        this.delta = 0.0d;
        this.loaded = false;
        this.upperBounds = null;
        if (i10 > 0) {
            this.binCount = i10;
            this.randomData = randomDataGenerator;
            this.binStats = new ArrayList();
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i10));
    }

    public void load(File file) throws IOException, NullArgumentException {
        BufferedReader bufferedReader;
        MathUtils.checkNotNull(file);
        Charset forName = Charset.forName("US-ASCII");
        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), forName));
        try {
            new StreamDataAdapter(bufferedReader2).computeStats();
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), forName));
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            fillBinStats(new StreamDataAdapter(bufferedReader));
            this.loaded = true;
            try {
                bufferedReader.close();
            } catch (IOException unused) {
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedReader2 = bufferedReader;
            try {
                bufferedReader2.close();
            } catch (IOException unused2) {
            }
            throw th;
        }
    }
}
