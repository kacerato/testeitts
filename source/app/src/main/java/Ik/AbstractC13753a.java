package ik;

import Bi.InterfaceC2392y;
import java.math.BigInteger;
import java.security.SecureRandom;

public abstract class AbstractC13753a {

    public static final int f92387a = 211;

    public static final BigInteger f92388b = BigInteger.valueOf(1);

    public static final BigInteger f92389c = BigInteger.valueOf(2);

    public static final BigInteger f92390d = BigInteger.valueOf(3);

    public static class b {

        public boolean f92391a;

        public BigInteger f92392b;

        public b(boolean z10, BigInteger bigInteger) {
            this.f92391a = z10;
            this.f92392b = bigInteger;
        }

        public static b a() {
            return g();
        }

        public static b c() {
            return h();
        }

        public static b g() {
            return new b(false, null);
        }

        public static b h() {
            return new b(true, null);
        }

        public static b i(BigInteger bigInteger) {
            return new b(true, bigInteger);
        }

        public BigInteger d() {
            return this.f92392b;
        }

        public boolean e() {
            return this.f92391a && this.f92392b == null;
        }

        public boolean f() {
            return this.f92391a;
        }
    }

    public static class c {

        public BigInteger f92393a;

        public byte[] f92394b;

        public int f92395c;

        public c(BigInteger bigInteger, byte[] bArr, int i10) {
            this.f92393a = bigInteger;
            this.f92394b = bArr;
            this.f92395c = i10;
        }

        public BigInteger a() {
            return this.f92393a;
        }

        public int b() {
            return this.f92395c;
        }

        public byte[] c() {
            return this.f92394b;
        }
    }

    public static void a(BigInteger bigInteger, String str) {
        if (bigInteger == null || bigInteger.signum() < 1 || bigInteger.bitLength() < 2) {
            throw new IllegalArgumentException("'" + str + "' must be non-null and >= 2");
        }
    }

    public static b b(BigInteger bigInteger, SecureRandom secureRandom, int i10) {
        boolean z10;
        BigInteger bigInteger2;
        a(bigInteger, "candidate");
        if (secureRandom == null) {
            throw new IllegalArgumentException("'random' cannot be null");
        }
        if (i10 < 1) {
            throw new IllegalArgumentException("'iterations' must be > 0");
        }
        if (bigInteger.bitLength() == 2) {
            return b.a();
        }
        if (!bigInteger.testBit(0)) {
            return b.i(f92389c);
        }
        BigInteger subtract = bigInteger.subtract(f92388b);
        BigInteger subtract2 = bigInteger.subtract(f92389c);
        int lowestSetBit = subtract.getLowestSetBit();
        BigInteger shiftRight = subtract.shiftRight(lowestSetBit);
        for (int i11 = 0; i11 < i10; i11++) {
            BigInteger g10 = org.bouncycastle.util.b.g(f92389c, subtract2, secureRandom);
            BigInteger gcd = g10.gcd(bigInteger);
            BigInteger bigInteger3 = f92388b;
            if (gcd.compareTo(bigInteger3) > 0) {
                return b.i(gcd);
            }
            BigInteger modPow = g10.modPow(shiftRight, bigInteger);
            if (!modPow.equals(bigInteger3) && !modPow.equals(subtract)) {
                int i12 = 1;
                while (true) {
                    if (i12 >= lowestSetBit) {
                        z10 = false;
                        bigInteger2 = modPow;
                        break;
                    }
                    bigInteger2 = modPow.modPow(f92389c, bigInteger);
                    if (bigInteger2.equals(subtract)) {
                        z10 = true;
                        break;
                    }
                    if (bigInteger2.equals(f92388b)) {
                        z10 = false;
                        break;
                    }
                    i12++;
                    modPow = bigInteger2;
                }
                if (!z10) {
                    BigInteger bigInteger4 = f92388b;
                    if (!bigInteger2.equals(bigInteger4)) {
                        modPow = bigInteger2.modPow(f92389c, bigInteger);
                        if (modPow.equals(bigInteger4)) {
                            modPow = bigInteger2;
                        }
                    }
                    BigInteger gcd2 = modPow.subtract(bigInteger4).gcd(bigInteger);
                    return gcd2.compareTo(bigInteger4) > 0 ? b.i(gcd2) : b.c();
                }
            }
        }
        return b.a();
    }

    public static int c(byte[] bArr) {
        int min = Math.min(4, bArr.length);
        int i10 = 0;
        int i11 = 0;
        while (i10 < min) {
            int i12 = i10 + 1;
            i11 |= (bArr[bArr.length - i12] & 255) << (i10 * 8);
            i10 = i12;
        }
        return i11;
    }

    public static c d(InterfaceC2392y interfaceC2392y, int i10, byte[] bArr) {
        if (interfaceC2392y == null) {
            throw new IllegalArgumentException("'hash' cannot be null");
        }
        if (i10 < 2) {
            throw new IllegalArgumentException("'length' must be >= 2");
        }
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("'inputSeed' cannot be null or empty");
        }
        return j(interfaceC2392y, i10, org.bouncycastle.util.a.p(bArr));
    }

    public static boolean e(BigInteger bigInteger) {
        a(bigInteger, "candidate");
        return h(bigInteger);
    }

    public static void f(InterfaceC2392y interfaceC2392y, byte[] bArr, byte[] bArr2, int i10) {
        interfaceC2392y.update(bArr, 0, bArr.length);
        interfaceC2392y.c(bArr2, i10);
    }

    public static BigInteger g(InterfaceC2392y interfaceC2392y, byte[] bArr, int i10) {
        int f10 = interfaceC2392y.f();
        int i11 = i10 * f10;
        byte[] bArr2 = new byte[i11];
        for (int i12 = 0; i12 < i10; i12++) {
            i11 -= f10;
            f(interfaceC2392y, bArr, bArr2, i11);
            k(bArr, 1);
        }
        return new BigInteger(1, bArr2);
    }

    public static boolean h(BigInteger bigInteger) {
        int intValue = bigInteger.mod(BigInteger.valueOf(223092870)).intValue();
        if (intValue % 2 != 0 && intValue % 3 != 0 && intValue % 5 != 0 && intValue % 7 != 0 && intValue % 11 != 0 && intValue % 13 != 0 && intValue % 17 != 0 && intValue % 19 != 0 && intValue % 23 != 0) {
            int intValue2 = bigInteger.mod(BigInteger.valueOf(58642669)).intValue();
            if (intValue2 % 29 != 0 && intValue2 % 31 != 0 && intValue2 % 37 != 0 && intValue2 % 41 != 0 && intValue2 % 43 != 0) {
                int intValue3 = bigInteger.mod(BigInteger.valueOf(600662303)).intValue();
                if (intValue3 % 47 != 0 && intValue3 % 53 != 0 && intValue3 % 59 != 0 && intValue3 % 61 != 0 && intValue3 % 67 != 0) {
                    int intValue4 = bigInteger.mod(BigInteger.valueOf(33984931)).intValue();
                    if (intValue4 % 71 != 0 && intValue4 % 73 != 0 && intValue4 % 79 != 0 && intValue4 % 83 != 0) {
                        int intValue5 = bigInteger.mod(BigInteger.valueOf(89809099)).intValue();
                        if (intValue5 % 89 != 0 && intValue5 % 97 != 0 && intValue5 % 101 != 0 && intValue5 % 103 != 0) {
                            int intValue6 = bigInteger.mod(BigInteger.valueOf(167375713)).intValue();
                            if (intValue6 % 107 != 0 && intValue6 % 109 != 0 && intValue6 % 113 != 0 && intValue6 % 127 != 0) {
                                int intValue7 = bigInteger.mod(BigInteger.valueOf(371700317)).intValue();
                                if (intValue7 % 131 != 0 && intValue7 % 137 != 0 && intValue7 % 139 != 0 && intValue7 % 149 != 0) {
                                    int intValue8 = bigInteger.mod(BigInteger.valueOf(645328247)).intValue();
                                    if (intValue8 % 151 != 0 && intValue8 % 157 != 0 && intValue8 % 163 != 0 && intValue8 % 167 != 0) {
                                        int intValue9 = bigInteger.mod(BigInteger.valueOf(1070560157)).intValue();
                                        if (intValue9 % 173 != 0 && intValue9 % 179 != 0 && intValue9 % 181 != 0 && intValue9 % 191 != 0) {
                                            int intValue10 = bigInteger.mod(BigInteger.valueOf(1596463769)).intValue();
                                            if (intValue10 % 193 != 0 && intValue10 % 197 != 0 && intValue10 % 199 != 0 && intValue10 % 211 != 0) {
                                                return false;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    public static boolean i(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i10, BigInteger bigInteger4) {
        BigInteger modPow = bigInteger4.modPow(bigInteger3, bigInteger);
        if (modPow.equals(f92388b) || modPow.equals(bigInteger2)) {
            return true;
        }
        for (int i11 = 1; i11 < i10; i11++) {
            modPow = modPow.modPow(f92389c, bigInteger);
            if (modPow.equals(bigInteger2)) {
                return true;
            }
            if (modPow.equals(f92388b)) {
                return false;
            }
        }
        return false;
    }

    public static c j(InterfaceC2392y interfaceC2392y, int i10, byte[] bArr) {
        C1780a c1780a;
        int f10 = interfaceC2392y.f();
        C1780a c1780a2 = null;
        int i11 = 1;
        if (i10 < 33) {
            byte[] bArr2 = new byte[f10];
            byte[] bArr3 = new byte[f10];
            int i12 = 0;
            do {
                f(interfaceC2392y, bArr, bArr2, 0);
                k(bArr, 1);
                f(interfaceC2392y, bArr, bArr3, 0);
                k(bArr, 1);
                i12++;
                long c10 = (((c(bArr2) ^ c(bArr3)) & ((-1) >>> (32 - i10))) | (1 << (i10 - 1)) | 1) & 4294967295L;
                if (n(c10)) {
                    return new c(BigInteger.valueOf(c10), bArr, i12);
                }
            } while (i12 <= i10 * 4);
            throw new IllegalStateException("Too many iterations in Shawe-Taylor Random_Prime Routine");
        }
        c j10 = j(interfaceC2392y, (i10 + 3) / 2, bArr);
        BigInteger a10 = j10.a();
        byte[] c11 = j10.c();
        int b10 = j10.b();
        int i13 = i10 - 1;
        int i14 = (i13 / (f10 * 8)) + 1;
        BigInteger g10 = g(interfaceC2392y, c11, i14);
        BigInteger bigInteger = f92388b;
        BigInteger bit = g10.mod(bigInteger.shiftLeft(i13)).setBit(i13);
        BigInteger shiftLeft = a10.shiftLeft(1);
        BigInteger shiftLeft2 = bit.subtract(bigInteger).divide(shiftLeft).add(bigInteger).shiftLeft(1);
        BigInteger add = shiftLeft2.multiply(a10).add(bigInteger);
        int i15 = b10;
        int i16 = 0;
        while (true) {
            if (add.bitLength() > i10) {
                BigInteger bigInteger2 = f92388b;
                shiftLeft2 = bigInteger2.shiftLeft(i13).subtract(bigInteger2).divide(shiftLeft).add(bigInteger2).shiftLeft(i11);
                add = shiftLeft2.multiply(a10).add(bigInteger2);
            }
            i15 += i11;
            if (h(add)) {
                c1780a = c1780a2;
                k(c11, i14);
            } else {
                BigInteger add2 = g(interfaceC2392y, c11, i14).mod(add.subtract(f92390d)).add(f92389c);
                BigInteger add3 = shiftLeft2.add(BigInteger.valueOf(i16));
                BigInteger modPow = add2.modPow(add3, add);
                BigInteger bigInteger3 = f92388b;
                if (add.gcd(modPow.subtract(bigInteger3)).equals(bigInteger3) && modPow.modPow(a10, add).equals(bigInteger3)) {
                    return new c(add, c11, i15);
                }
                c1780a = null;
                shiftLeft2 = add3;
                i16 = 0;
            }
            if (i15 >= (i10 * 4) + b10) {
                throw new IllegalStateException("Too many iterations in Shawe-Taylor Random_Prime Routine");
            }
            i16 += 2;
            add = add.add(shiftLeft);
            c1780a2 = c1780a;
            i11 = 1;
        }
    }

    public static void k(byte[] bArr, int i10) {
        int length = bArr.length;
        while (i10 > 0) {
            length--;
            if (length < 0) {
                return;
            }
            int i11 = i10 + (bArr[length] & 255);
            bArr[length] = (byte) i11;
            i10 = i11 >>> 8;
        }
    }

    public static boolean l(BigInteger bigInteger, SecureRandom secureRandom, int i10) {
        a(bigInteger, "candidate");
        if (secureRandom == null) {
            throw new IllegalArgumentException("'random' cannot be null");
        }
        if (i10 < 1) {
            throw new IllegalArgumentException("'iterations' must be > 0");
        }
        if (bigInteger.bitLength() == 2) {
            return true;
        }
        if (!bigInteger.testBit(0)) {
            return false;
        }
        BigInteger subtract = bigInteger.subtract(f92388b);
        BigInteger subtract2 = bigInteger.subtract(f92389c);
        int lowestSetBit = subtract.getLowestSetBit();
        BigInteger shiftRight = subtract.shiftRight(lowestSetBit);
        for (int i11 = 0; i11 < i10; i11++) {
            if (!i(bigInteger, subtract, shiftRight, lowestSetBit, org.bouncycastle.util.b.g(f92389c, subtract2, secureRandom))) {
                return false;
            }
        }
        return true;
    }

    public static boolean m(BigInteger bigInteger, BigInteger bigInteger2) {
        a(bigInteger, "candidate");
        a(bigInteger2, "base");
        BigInteger bigInteger3 = f92388b;
        if (bigInteger2.compareTo(bigInteger.subtract(bigInteger3)) >= 0) {
            throw new IllegalArgumentException("'base' must be < ('candidate' - 1)");
        }
        if (bigInteger.bitLength() == 2) {
            return true;
        }
        BigInteger subtract = bigInteger.subtract(bigInteger3);
        int lowestSetBit = subtract.getLowestSetBit();
        return i(bigInteger, subtract, subtract.shiftRight(lowestSetBit), lowestSetBit, bigInteger2);
    }

    public static boolean n(long j10) {
        if ((j10 >>> 32) != 0) {
            throw new IllegalArgumentException("Size limit exceeded");
        }
        if (j10 <= 5) {
            return j10 == 2 || j10 == 3 || j10 == 5;
        }
        if ((1 & j10) == 0 || j10 % 3 == 0 || j10 % 5 == 0) {
            return false;
        }
        long[] jArr = {1, 7, 11, 13, 17, 19, 23, 29};
        int i10 = 1;
        long j11 = 0;
        while (true) {
            if (i10 >= 8) {
                j11 += 30;
                if (j11 * j11 >= j10) {
                    return true;
                }
                i10 = 0;
            } else {
                if (j10 % (jArr[i10] + j11) == 0) {
                    return j10 < 30;
                }
                i10++;
            }
        }
    }
}
