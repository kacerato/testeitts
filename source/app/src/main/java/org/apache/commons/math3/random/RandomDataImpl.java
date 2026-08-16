package org.apache.commons.math3.random;

import java.io.Serializable;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.Collection;
import org.apache.commons.math3.distribution.IntegerDistribution;
import org.apache.commons.math3.distribution.RealDistribution;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NotANumberException;
import org.apache.commons.math3.exception.NotFiniteNumberException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;

@Deprecated
public class RandomDataImpl implements RandomData, Serializable {
    private static final long serialVersionUID = -626730818244969716L;
    private final RandomDataGenerator delegate;

    public RandomDataImpl() {
        this.delegate = new RandomDataGenerator();
    }

    @Deprecated
    public RandomDataGenerator getDelegate() {
        return this.delegate;
    }

    public double nextBeta(double d10, double d11) {
        return this.delegate.nextBeta(d10, d11);
    }

    public int nextBinomial(int i10, double d10) {
        return this.delegate.nextBinomial(i10, d10);
    }

    public double nextCauchy(double d10, double d11) {
        return this.delegate.nextCauchy(d10, d11);
    }

    public double nextChiSquare(double d10) {
        return this.delegate.nextChiSquare(d10);
    }

    @Override
    public double nextExponential(double d10) throws NotStrictlyPositiveException {
        return this.delegate.nextExponential(d10);
    }

    public double nextF(double d10, double d11) throws NotStrictlyPositiveException {
        return this.delegate.nextF(d10, d11);
    }

    public double nextGamma(double d10, double d11) throws NotStrictlyPositiveException {
        return this.delegate.nextGamma(d10, d11);
    }

    @Override
    public double nextGaussian(double d10, double d11) throws NotStrictlyPositiveException {
        return this.delegate.nextGaussian(d10, d11);
    }

    @Override
    public String nextHexString(int i10) throws NotStrictlyPositiveException {
        return this.delegate.nextHexString(i10);
    }

    public int nextHypergeometric(int i10, int i11, int i12) throws NotPositiveException, NotStrictlyPositiveException, NumberIsTooLargeException {
        return this.delegate.nextHypergeometric(i10, i11, i12);
    }

    @Override
    public int nextInt(int i10, int i11) throws NumberIsTooLargeException {
        return this.delegate.nextInt(i10, i11);
    }

    @Deprecated
    public double nextInversionDeviate(RealDistribution realDistribution) throws MathIllegalArgumentException {
        return realDistribution.inverseCumulativeProbability(nextUniform(0.0d, 1.0d));
    }

    @Override
    public long nextLong(long j10, long j11) throws NumberIsTooLargeException {
        return this.delegate.nextLong(j10, j11);
    }

    public int nextPascal(int i10, double d10) throws NotStrictlyPositiveException, OutOfRangeException {
        return this.delegate.nextPascal(i10, d10);
    }

    @Override
    public int[] nextPermutation(int i10, int i11) throws NotStrictlyPositiveException, NumberIsTooLargeException {
        return this.delegate.nextPermutation(i10, i11);
    }

    @Override
    public long nextPoisson(double d10) throws NotStrictlyPositiveException {
        return this.delegate.nextPoisson(d10);
    }

    @Override
    public Object[] nextSample(Collection<?> collection, int i10) throws NotStrictlyPositiveException, NumberIsTooLargeException {
        return this.delegate.nextSample(collection, i10);
    }

    @Override
    public String nextSecureHexString(int i10) throws NotStrictlyPositiveException {
        return this.delegate.nextSecureHexString(i10);
    }

    @Override
    public int nextSecureInt(int i10, int i11) throws NumberIsTooLargeException {
        return this.delegate.nextSecureInt(i10, i11);
    }

    @Override
    public long nextSecureLong(long j10, long j11) throws NumberIsTooLargeException {
        return this.delegate.nextSecureLong(j10, j11);
    }

    public double nextT(double d10) throws NotStrictlyPositiveException {
        return this.delegate.nextT(d10);
    }

    @Override
    public double nextUniform(double d10, double d11) throws NumberIsTooLargeException, NotFiniteNumberException, NotANumberException {
        return this.delegate.nextUniform(d10, d11);
    }

    public double nextWeibull(double d10, double d11) throws NotStrictlyPositiveException {
        return this.delegate.nextWeibull(d10, d11);
    }

    public int nextZipf(int i10, double d10) throws NotStrictlyPositiveException {
        return this.delegate.nextZipf(i10, d10);
    }

    public void reSeed(long j10) {
        this.delegate.reSeed(j10);
    }

    public void reSeedSecure() {
        this.delegate.reSeedSecure();
    }

    public void setSecureAlgorithm(String str, String str2) throws NoSuchAlgorithmException, NoSuchProviderException {
        this.delegate.setSecureAlgorithm(str, str2);
    }

    @Deprecated
    public int nextInversionDeviate(IntegerDistribution integerDistribution) throws MathIllegalArgumentException {
        return integerDistribution.inverseCumulativeProbability(nextUniform(0.0d, 1.0d));
    }

    @Override
    public double nextUniform(double d10, double d11, boolean z10) throws NumberIsTooLargeException, NotFiniteNumberException, NotANumberException {
        return this.delegate.nextUniform(d10, d11, z10);
    }

    public void reSeed() {
        this.delegate.reSeed();
    }

    public void reSeedSecure(long j10) {
        this.delegate.reSeedSecure(j10);
    }

    public RandomDataImpl(RandomGenerator randomGenerator) {
        this.delegate = new RandomDataGenerator(randomGenerator);
    }
}
