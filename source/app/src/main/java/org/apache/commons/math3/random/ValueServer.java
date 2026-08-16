package org.apache.commons.math3.random;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class ValueServer {
    public static final int CONSTANT_MODE = 5;
    public static final int DIGEST_MODE = 0;
    public static final int EXPONENTIAL_MODE = 3;
    public static final int GAUSSIAN_MODE = 4;
    public static final int REPLAY_MODE = 1;
    public static final int UNIFORM_MODE = 2;
    private EmpiricalDistribution empiricalDistribution;
    private BufferedReader filePointer;
    private int mode;
    private double mu;
    private final RandomDataGenerator randomData;
    private double sigma;
    private URL valuesFileURL;

    public ValueServer() {
        this.mode = 5;
        this.valuesFileURL = null;
        this.mu = 0.0d;
        this.sigma = 0.0d;
        this.empiricalDistribution = null;
        this.filePointer = null;
        this.randomData = new RandomDataGenerator();
    }

    private double getNextDigest() throws MathIllegalStateException {
        EmpiricalDistribution empiricalDistribution = this.empiricalDistribution;
        if (empiricalDistribution == null || empiricalDistribution.getBinStats().size() == 0) {
            throw new MathIllegalStateException(LocalizedFormats.DIGEST_NOT_INITIALIZED, new Object[0]);
        }
        return this.empiricalDistribution.getNextValue();
    }

    private double getNextExponential() throws MathIllegalArgumentException {
        return this.randomData.nextExponential(this.mu);
    }

    private double getNextGaussian() throws MathIllegalArgumentException {
        return this.randomData.nextGaussian(this.mu, this.sigma);
    }

    private double getNextReplay() throws IOException, MathIllegalStateException {
        if (this.filePointer == null) {
            resetReplayFile();
        }
        String readLine = this.filePointer.readLine();
        if (readLine == null) {
            closeReplayFile();
            resetReplayFile();
            readLine = this.filePointer.readLine();
            if (readLine == null) {
                throw new MathIllegalStateException(LocalizedFormats.URL_CONTAINS_NO_DATA, this.valuesFileURL);
            }
        }
        return Double.parseDouble(readLine);
    }

    private double getNextUniform() throws MathIllegalArgumentException {
        return this.randomData.nextUniform(0.0d, this.mu * 2.0d);
    }

    public void closeReplayFile() throws IOException {
        BufferedReader bufferedReader = this.filePointer;
        if (bufferedReader != null) {
            bufferedReader.close();
            this.filePointer = null;
        }
    }

    public void computeDistribution() throws IOException, ZeroException, NullArgumentException {
        computeDistribution(1000);
    }

    public void fill(double[] dArr) throws IOException, MathIllegalStateException, MathIllegalArgumentException {
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr[i10] = getNext();
        }
    }

    public EmpiricalDistribution getEmpiricalDistribution() {
        return this.empiricalDistribution;
    }

    public int getMode() {
        return this.mode;
    }

    public double getMu() {
        return this.mu;
    }

    public double getNext() throws IOException, MathIllegalStateException, MathIllegalArgumentException {
        int i10 = this.mode;
        if (i10 == 0) {
            return getNextDigest();
        }
        if (i10 == 1) {
            return getNextReplay();
        }
        if (i10 == 2) {
            return getNextUniform();
        }
        if (i10 == 3) {
            return getNextExponential();
        }
        if (i10 == 4) {
            return getNextGaussian();
        }
        if (i10 == 5) {
            return this.mu;
        }
        throw new MathIllegalStateException(LocalizedFormats.UNKNOWN_MODE, Integer.valueOf(this.mode), "DIGEST_MODE", 0, "REPLAY_MODE", 1, "UNIFORM_MODE", 2, "EXPONENTIAL_MODE", 3, "GAUSSIAN_MODE", 4, "CONSTANT_MODE", 5);
    }

    public double getSigma() {
        return this.sigma;
    }

    public URL getValuesFileURL() {
        return this.valuesFileURL;
    }

    public void reSeed(long j10) {
        this.randomData.reSeed(j10);
    }

    public void resetReplayFile() throws IOException {
        BufferedReader bufferedReader = this.filePointer;
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
                this.filePointer = null;
            } catch (IOException unused) {
            }
        }
        this.filePointer = new BufferedReader(new InputStreamReader(this.valuesFileURL.openStream(), "UTF-8"));
    }

    public void setMode(int i10) {
        this.mode = i10;
    }

    public void setMu(double d10) {
        this.mu = d10;
    }

    public void setSigma(double d10) {
        this.sigma = d10;
    }

    public void setValuesFileURL(String str) throws MalformedURLException {
        this.valuesFileURL = new URL(str);
    }

    public void computeDistribution(int i10) throws NullArgumentException, IOException, ZeroException {
        EmpiricalDistribution empiricalDistribution = new EmpiricalDistribution(i10, this.randomData.getRandomGenerator());
        this.empiricalDistribution = empiricalDistribution;
        empiricalDistribution.load(this.valuesFileURL);
        this.mu = this.empiricalDistribution.getSampleStats().getMean();
        this.sigma = this.empiricalDistribution.getSampleStats().getStandardDeviation();
    }

    public void setValuesFileURL(URL url) {
        this.valuesFileURL = url;
    }

    public double[] fill(int i10) throws IOException, MathIllegalStateException, MathIllegalArgumentException {
        double[] dArr = new double[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            dArr[i11] = getNext();
        }
        return dArr;
    }

    @Deprecated
    public ValueServer(RandomDataImpl randomDataImpl) {
        this.mode = 5;
        this.valuesFileURL = null;
        this.mu = 0.0d;
        this.sigma = 0.0d;
        this.empiricalDistribution = null;
        this.filePointer = null;
        this.randomData = randomDataImpl.getDelegate();
    }

    public ValueServer(RandomGenerator randomGenerator) {
        this.mode = 5;
        this.valuesFileURL = null;
        this.mu = 0.0d;
        this.sigma = 0.0d;
        this.empiricalDistribution = null;
        this.filePointer = null;
        this.randomData = new RandomDataGenerator(randomGenerator);
    }
}
