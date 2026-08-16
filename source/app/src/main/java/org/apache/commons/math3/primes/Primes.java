package org.apache.commons.math3.primes;

import java.util.List;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class Primes {
    private Primes() {
    }

    public static boolean isPrime(int i10) {
        if (i10 < 2) {
            return false;
        }
        int[] iArr = SmallPrimes.PRIMES;
        int length = iArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = iArr[i11];
            if (i10 % i12 == 0) {
                return i10 == i12;
            }
        }
        return SmallPrimes.millerRabinPrimeTest(i10);
    }

    public static int nextPrime(int i10) {
        int i11;
        if (i10 < 0) {
            throw new MathIllegalArgumentException(LocalizedFormats.NUMBER_TOO_SMALL, Integer.valueOf(i10), 0);
        }
        if (i10 == 2 || (i11 = i10 | 1) == 1) {
            return 2;
        }
        if (isPrime(i11)) {
            return i11;
        }
        int i12 = i11 % 3;
        if (i12 == 0) {
            i11 += 2;
        } else if (1 == i12) {
            i11 += 4;
        }
        while (!isPrime(i11)) {
            int i13 = i11 + 2;
            if (isPrime(i13)) {
                return i13;
            }
            i11 += 6;
        }
        return i11;
    }

    public static List<Integer> primeFactors(int i10) {
        if (i10 >= 2) {
            return SmallPrimes.trialDivision(i10);
        }
        throw new MathIllegalArgumentException(LocalizedFormats.NUMBER_TOO_SMALL, Integer.valueOf(i10), 2);
    }
}
