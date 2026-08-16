package org.apache.commons.math3.primes;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.util.FastMath;

class PollardRho {
    private PollardRho() {
    }

    public static int gcdPositive(int i10, int i11) {
        if (i10 == 0) {
            return i11;
        }
        if (i11 == 0) {
            return i10;
        }
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i10);
        int i12 = i10 >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Integer.numberOfTrailingZeros(i11);
        int i13 = i11 >> numberOfTrailingZeros2;
        int min = FastMath.min(numberOfTrailingZeros, numberOfTrailingZeros2);
        while (i12 != i13) {
            int i14 = i12 - i13;
            i13 = FastMath.min(i12, i13);
            int abs = FastMath.abs(i14);
            i12 = abs >> Integer.numberOfTrailingZeros(abs);
        }
        return i12 << min;
    }

    public static List<Integer> primeFactors(int i10) {
        ArrayList arrayList = new ArrayList();
        int smallTrialDivision = SmallPrimes.smallTrialDivision(i10, arrayList);
        if (1 == smallTrialDivision) {
            return arrayList;
        }
        if (SmallPrimes.millerRabinPrimeTest(smallTrialDivision)) {
            arrayList.add(Integer.valueOf(smallTrialDivision));
            return arrayList;
        }
        int rhoBrent = rhoBrent(smallTrialDivision);
        arrayList.add(Integer.valueOf(rhoBrent));
        arrayList.add(Integer.valueOf(smallTrialDivision / rhoBrent));
        return arrayList;
    }

    public static int rhoBrent(int i10) {
        int i11 = SmallPrimes.PRIMES_LAST;
        int i12 = 2;
        int i13 = 1;
        while (true) {
            int i14 = 0;
            int i15 = i12;
            for (int i16 = 0; i16 < i13; i16++) {
                long j10 = i15;
                i15 = (int) (((j10 * j10) + i11) % i10);
            }
            do {
                int min = FastMath.min(25, i13 - i14);
                int i17 = -3;
                int i18 = 1;
                while (true) {
                    if (i17 >= min) {
                        break;
                    }
                    long j11 = i15;
                    long j12 = i10;
                    i15 = (int) (((j11 * j11) + i11) % j12);
                    long abs = FastMath.abs(i12 - i15);
                    if (0 == abs) {
                        i11 += SmallPrimes.PRIMES_LAST;
                        i14 = -25;
                        i13 = 1;
                        i15 = 2;
                        break;
                    }
                    i18 = (int) ((i18 * abs) % j12);
                    if (i18 == 0) {
                        return gcdPositive(FastMath.abs((int) abs), i10);
                    }
                    i17++;
                }
                int gcdPositive = gcdPositive(FastMath.abs(i18), i10);
                if (1 != gcdPositive) {
                    return gcdPositive;
                }
                i14 += 25;
            } while (i14 < i13);
            i13 *= 2;
            i12 = i15;
        }
    }
}
