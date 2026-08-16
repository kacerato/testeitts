package org.bouncycastle.crypto.util;

import java.math.BigInteger;

public class r {

    public static final double f101091e = Math.log(9.223372036854776E18d);

    public static final int f101092f = 10;

    public final int f101093a;

    public final BigInteger f101094b;

    public final int f101095c;

    public final BigInteger[] f101096d;

    public r(int i10) {
        this(i10, 10);
    }

    public final long a(int i10, int i11, short[] sArr) {
        long j10 = 0;
        while (i10 < i11) {
            j10 = (j10 * this.f101095c) + (sArr[i10] & 65535);
            i10++;
        }
        return j10;
    }

    public BigInteger b(short[] sArr) {
        BigInteger bigInteger = org.bouncycastle.util.b.f102316b;
        int length = sArr.length;
        int i10 = length - this.f101093a;
        BigInteger bigInteger2 = null;
        int i11 = 0;
        while (true) {
            int i12 = this.f101093a;
            if (i10 <= (-i12)) {
                return bigInteger2;
            }
            if (i10 < 0) {
                i12 += i10;
                i10 = 0;
            }
            BigInteger valueOf = BigInteger.valueOf(a(i10, Math.min(i12 + i10, length), sArr));
            if (i11 == 0) {
                bigInteger2 = valueOf;
            } else {
                BigInteger[] bigIntegerArr = this.f101096d;
                bigInteger = i11 <= bigIntegerArr.length ? bigIntegerArr[i11 - 1] : bigInteger.multiply(this.f101094b);
                bigInteger2 = bigInteger2.add(valueOf.multiply(bigInteger));
            }
            i11++;
            i10 -= this.f101093a;
        }
    }

    public int c() {
        return this.f101093a;
    }

    public int d() {
        return this.f101095c;
    }

    public final BigInteger[] e(int i10, BigInteger bigInteger) {
        BigInteger[] bigIntegerArr = new BigInteger[i10];
        BigInteger bigInteger2 = bigInteger;
        for (int i11 = 0; i11 < i10; i11++) {
            bigIntegerArr[i11] = bigInteger2;
            bigInteger2 = bigInteger2.multiply(bigInteger);
        }
        return bigIntegerArr;
    }

    public final int f(long j10, int i10, short[] sArr) {
        int i11;
        for (int i12 = 0; i12 < this.f101093a && i10 >= 0; i12++) {
            if (j10 == 0) {
                i11 = i10 - 1;
                sArr[i10] = 0;
            } else {
                i11 = i10 - 1;
                int i13 = this.f101095c;
                sArr[i10] = (short) (j10 % i13);
                j10 /= i13;
            }
            i10 = i11;
        }
        if (j10 == 0) {
            return i10;
        }
        throw new IllegalStateException("Failed to convert decimal number");
    }

    public void g(BigInteger bigInteger, int i10, short[] sArr) {
        if (bigInteger.signum() < 0) {
            throw new IllegalArgumentException();
        }
        int i11 = i10 - 1;
        do {
            if (bigInteger.equals(BigInteger.ZERO)) {
                sArr[i11] = 0;
                i11--;
            } else {
                BigInteger[] divideAndRemainder = bigInteger.divideAndRemainder(this.f101094b);
                BigInteger bigInteger2 = divideAndRemainder[0];
                i11 = f(divideAndRemainder[1].longValue(), i11, sArr);
                bigInteger = bigInteger2;
            }
        } while (i11 >= 0);
        if (bigInteger.signum() != 0) {
            throw new IllegalArgumentException();
        }
    }

    public r(int i10, int i11) {
        this.f101095c = i10;
        int floor = (int) Math.floor(f101091e / Math.log(i10));
        this.f101093a = floor;
        BigInteger pow = BigInteger.valueOf(i10).pow(floor);
        this.f101094b = pow;
        this.f101096d = e(i11, pow);
    }
}
