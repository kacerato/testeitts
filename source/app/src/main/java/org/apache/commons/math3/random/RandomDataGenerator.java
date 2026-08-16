package org.apache.commons.math3.random;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.util.Collection;
import org.apache.commons.math3.distribution.BetaDistribution;
import org.apache.commons.math3.distribution.BinomialDistribution;
import org.apache.commons.math3.distribution.CauchyDistribution;
import org.apache.commons.math3.distribution.ChiSquaredDistribution;
import org.apache.commons.math3.distribution.ExponentialDistribution;
import org.apache.commons.math3.distribution.FDistribution;
import org.apache.commons.math3.distribution.GammaDistribution;
import org.apache.commons.math3.distribution.HypergeometricDistribution;
import org.apache.commons.math3.distribution.PascalDistribution;
import org.apache.commons.math3.distribution.PoissonDistribution;
import org.apache.commons.math3.distribution.TDistribution;
import org.apache.commons.math3.distribution.UniformIntegerDistribution;
import org.apache.commons.math3.distribution.WeibullDistribution;
import org.apache.commons.math3.distribution.ZipfDistribution;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotANumberException;
import org.apache.commons.math3.exception.NotFiniteNumberException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;

public class RandomDataGenerator implements RandomData, Serializable {
    private static final long serialVersionUID = -626730818244969716L;
    private RandomGenerator rand;
    private RandomGenerator secRand;

    public RandomDataGenerator() {
        this.rand = null;
        this.secRand = null;
    }

    private RandomGenerator getSecRan() {
        if (this.secRand == null) {
            RandomGenerator createRandomGenerator = RandomGeneratorFactory.createRandomGenerator(new SecureRandom());
            this.secRand = createRandomGenerator;
            createRandomGenerator.setSeed(System.currentTimeMillis() + System.identityHashCode(this));
        }
        return this.secRand;
    }

    private void initRan() {
        this.rand = new Well19937c(System.currentTimeMillis() + System.identityHashCode(this));
    }

    public RandomGenerator getRandomGenerator() {
        if (this.rand == null) {
            initRan();
        }
        return this.rand;
    }

    public double nextBeta(double d10, double d11) {
        return new BetaDistribution(getRandomGenerator(), d10, d11, 1.0E-9d).sample();
    }

    public int nextBinomial(int i10, double d10) {
        return new BinomialDistribution(getRandomGenerator(), i10, d10).sample();
    }

    public double nextCauchy(double d10, double d11) {
        return new CauchyDistribution(getRandomGenerator(), d10, d11, 1.0E-9d).sample();
    }

    public double nextChiSquare(double d10) {
        return new ChiSquaredDistribution(getRandomGenerator(), d10, 1.0E-9d).sample();
    }

    @Override
    public double nextExponential(double d10) throws NotStrictlyPositiveException {
        return new ExponentialDistribution(getRandomGenerator(), d10, 1.0E-9d).sample();
    }

    public double nextF(double d10, double d11) throws NotStrictlyPositiveException {
        return new FDistribution(getRandomGenerator(), d10, d11, 1.0E-9d).sample();
    }

    public double nextGamma(double d10, double d11) throws NotStrictlyPositiveException {
        return new GammaDistribution(getRandomGenerator(), d10, d11, 1.0E-9d).sample();
    }

    @Override
    public double nextGaussian(double d10, double d11) throws NotStrictlyPositiveException {
        if (d11 > 0.0d) {
            return (d11 * getRandomGenerator().nextGaussian()) + d10;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.STANDARD_DEVIATION, Double.valueOf(d11));
    }

    @Override
    public String nextHexString(int i10) throws NotStrictlyPositiveException {
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.LENGTH, Integer.valueOf(i10));
        }
        RandomGenerator randomGenerator = getRandomGenerator();
        StringBuilder sb2 = new StringBuilder();
        int i11 = (i10 / 2) + 1;
        byte[] bArr = new byte[i11];
        randomGenerator.nextBytes(bArr);
        for (int i12 = 0; i12 < i11; i12++) {
            String hexString = Integer.toHexString(bArr[i12] + 128);
            if (hexString.length() == 1) {
                hexString = "0" + hexString;
            }
            sb2.append(hexString);
        }
        return sb2.toString().substring(0, i10);
    }

    public int nextHypergeometric(int i10, int i11, int i12) throws NotPositiveException, NotStrictlyPositiveException, NumberIsTooLargeException {
        return new HypergeometricDistribution(getRandomGenerator(), i10, i11, i12).sample();
    }

    @Override
    public int nextInt(int i10, int i11) throws NumberIsTooLargeException {
        return new UniformIntegerDistribution(getRandomGenerator(), i10, i11).sample();
    }

    @Override
    public long nextLong(long j10, long j11) throws NumberIsTooLargeException {
        long nextLong;
        if (j10 >= j11) {
            throw new NumberIsTooLargeException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Long.valueOf(j10), Long.valueOf(j11), false);
        }
        long j12 = (j11 - j10) + 1;
        if (j12 > 0) {
            if (j12 < 2147483647L) {
                nextLong = getRandomGenerator().nextInt((int) j12);
            } else {
                nextLong = nextLong(getRandomGenerator(), j12);
            }
            return j10 + nextLong;
        }
        RandomGenerator randomGenerator = getRandomGenerator();
        while (true) {
            long nextLong2 = randomGenerator.nextLong();
            if (nextLong2 >= j10 && nextLong2 <= j11) {
                return nextLong2;
            }
        }
    }

    public int nextPascal(int i10, double d10) throws NotStrictlyPositiveException, OutOfRangeException {
        return new PascalDistribution(getRandomGenerator(), i10, d10).sample();
    }

    @Override
    public int[] nextPermutation(int i10, int i11) throws NumberIsTooLargeException, NotStrictlyPositiveException {
        if (i11 > i10) {
            throw new NumberIsTooLargeException(LocalizedFormats.PERMUTATION_EXCEEDS_N, Integer.valueOf(i11), Integer.valueOf(i10), true);
        }
        if (i11 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.PERMUTATION_SIZE, Integer.valueOf(i11));
        }
        int[] natural = MathArrays.natural(i10);
        MathArrays.shuffle(natural, getRandomGenerator());
        return MathArrays.copyOf(natural, i11);
    }

    @Override
    public long nextPoisson(double d10) throws NotStrictlyPositiveException {
        return new PoissonDistribution(getRandomGenerator(), d10, 1.0E-12d, PoissonDistribution.DEFAULT_MAX_ITERATIONS).sample();
    }

    @Override
    public Object[] nextSample(Collection<?> collection, int i10) throws NumberIsTooLargeException, NotStrictlyPositiveException {
        int size = collection.size();
        if (i10 > size) {
            throw new NumberIsTooLargeException(LocalizedFormats.SAMPLE_SIZE_EXCEEDS_COLLECTION_SIZE, Integer.valueOf(i10), Integer.valueOf(size), true);
        }
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i10));
        }
        Object[] array = collection.toArray();
        int[] nextPermutation = nextPermutation(size, i10);
        Object[] objArr = new Object[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = array[nextPermutation[i11]];
        }
        return objArr;
    }

    @Override
    public String nextSecureHexString(int i10) throws NotStrictlyPositiveException {
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.LENGTH, Integer.valueOf(i10));
        }
        RandomGenerator secRan = getSecRan();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.reset();
            int i11 = i10 / 40;
            StringBuilder sb2 = new StringBuilder();
            int i12 = 1;
            while (true) {
                if (i12 >= i11 + 2) {
                    return sb2.toString().substring(0, i10);
                }
                byte[] bArr = new byte[40];
                secRan.nextBytes(bArr);
                messageDigest.update(bArr);
                for (byte b10 : messageDigest.digest()) {
                    String hexString = Integer.toHexString(b10 + 128);
                    if (hexString.length() == 1) {
                        hexString = "0" + hexString;
                    }
                    sb2.append(hexString);
                }
                i12++;
            }
        } catch (NoSuchAlgorithmException e10) {
            throw new MathInternalError(e10);
        }
    }

    @Override
    public int nextSecureInt(int i10, int i11) throws NumberIsTooLargeException {
        return new UniformIntegerDistribution(getSecRan(), i10, i11).sample();
    }

    @Override
    public long nextSecureLong(long j10, long j11) throws NumberIsTooLargeException {
        if (j10 >= j11) {
            throw new NumberIsTooLargeException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Long.valueOf(j10), Long.valueOf(j11), false);
        }
        RandomGenerator secRan = getSecRan();
        long j12 = (j11 - j10) + 1;
        if (j12 > 0) {
            return j10 + (j12 < 2147483647L ? secRan.nextInt((int) j12) : nextLong(secRan, j12));
        }
        while (true) {
            long nextLong = secRan.nextLong();
            if (nextLong >= j10 && nextLong <= j11) {
                return nextLong;
            }
        }
    }

    public double nextT(double d10) throws NotStrictlyPositiveException {
        return new TDistribution(getRandomGenerator(), d10, 1.0E-9d).sample();
    }

    @Override
    public double nextUniform(double d10, double d11) throws NumberIsTooLargeException, NotFiniteNumberException, NotANumberException {
        return nextUniform(d10, d11, false);
    }

    public double nextWeibull(double d10, double d11) throws NotStrictlyPositiveException {
        return new WeibullDistribution(getRandomGenerator(), d10, d11, 1.0E-9d).sample();
    }

    public int nextZipf(int i10, double d10) throws NotStrictlyPositiveException {
        return new ZipfDistribution(getRandomGenerator(), i10, d10).sample();
    }

    public void reSeed(long j10) {
        getRandomGenerator().setSeed(j10);
    }

    public void reSeedSecure() {
        getSecRan().setSeed(System.currentTimeMillis());
    }

    public void setSecureAlgorithm(String str, String str2) throws NoSuchAlgorithmException, NoSuchProviderException {
        this.secRand = RandomGeneratorFactory.createRandomGenerator(SecureRandom.getInstance(str, str2));
    }

    @Override
    public double nextUniform(double d10, double d11, boolean z10) throws NumberIsTooLargeException, NotFiniteNumberException, NotANumberException {
        if (d10 < d11) {
            if (!Double.isInfinite(d10)) {
                if (!Double.isInfinite(d11)) {
                    if (!Double.isNaN(d10) && !Double.isNaN(d11)) {
                        RandomGenerator randomGenerator = getRandomGenerator();
                        double nextDouble = randomGenerator.nextDouble();
                        while (!z10 && nextDouble <= 0.0d) {
                            nextDouble = randomGenerator.nextDouble();
                        }
                        return (d11 * nextDouble) + ((1.0d - nextDouble) * d10);
                    }
                    throw new NotANumberException();
                }
                throw new NotFiniteNumberException(LocalizedFormats.INFINITE_BOUND, Double.valueOf(d11), new Object[0]);
            }
            throw new NotFiniteNumberException(LocalizedFormats.INFINITE_BOUND, Double.valueOf(d10), new Object[0]);
        }
        throw new NumberIsTooLargeException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Double.valueOf(d10), Double.valueOf(d11), false);
    }

    public void reSeed() {
        getRandomGenerator().setSeed(System.currentTimeMillis() + System.identityHashCode(this));
    }

    public void reSeedSecure(long j10) {
        getSecRan().setSeed(j10);
    }

    public RandomDataGenerator(RandomGenerator randomGenerator) {
        this.secRand = null;
        this.rand = randomGenerator;
    }

    private static long nextLong(RandomGenerator randomGenerator, long j10) throws IllegalArgumentException {
        long j11;
        long j12;
        if (j10 > 0) {
            byte[] bArr = new byte[8];
            do {
                randomGenerator.nextBytes(bArr);
                long j13 = 0;
                for (int i10 = 0; i10 < 8; i10++) {
                    j13 = (j13 << 8) | (bArr[i10] & 255);
                }
                j11 = j13 & Long.MAX_VALUE;
                j12 = j11 % j10;
            } while ((j11 - j12) + (j10 - 1) < 0);
            return j12;
        }
        throw new NotStrictlyPositiveException(Long.valueOf(j10));
    }
}
