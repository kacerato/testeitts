package org.apache.commons.math3.random;

import java.util.Collection;
import org.apache.commons.math3.exception.NotANumberException;
import org.apache.commons.math3.exception.NotFiniteNumberException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;

@Deprecated
public interface RandomData {
    double nextExponential(double d10) throws NotStrictlyPositiveException;

    double nextGaussian(double d10, double d11) throws NotStrictlyPositiveException;

    String nextHexString(int i10) throws NotStrictlyPositiveException;

    int nextInt(int i10, int i11) throws NumberIsTooLargeException;

    long nextLong(long j10, long j11) throws NumberIsTooLargeException;

    int[] nextPermutation(int i10, int i11) throws NumberIsTooLargeException, NotStrictlyPositiveException;

    long nextPoisson(double d10) throws NotStrictlyPositiveException;

    Object[] nextSample(Collection<?> collection, int i10) throws NumberIsTooLargeException, NotStrictlyPositiveException;

    String nextSecureHexString(int i10) throws NotStrictlyPositiveException;

    int nextSecureInt(int i10, int i11) throws NumberIsTooLargeException;

    long nextSecureLong(long j10, long j11) throws NumberIsTooLargeException;

    double nextUniform(double d10, double d11) throws NumberIsTooLargeException, NotFiniteNumberException, NotANumberException;

    double nextUniform(double d10, double d11, boolean z10) throws NumberIsTooLargeException, NotFiniteNumberException, NotANumberException;
}
