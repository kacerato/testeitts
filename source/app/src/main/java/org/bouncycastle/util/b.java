package org.bouncycastle.util;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Map;
import java.util.WeakHashMap;
import sk.AbstractC15317c;
import sk.AbstractC15329o;

public final class b {

    public static final int f102319e = 1000;

    public static final BigInteger f102315a = BigInteger.valueOf(0);

    public static final BigInteger f102316b = BigInteger.valueOf(1);

    public static final BigInteger f102317c = BigInteger.valueOf(2);

    public static final BigInteger f102318d = BigInteger.valueOf(3);

    public static final BigInteger f102320f = new BigInteger("8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f", 16);

    public static final int f102321g = BigInteger.valueOf(743).bitLength();

    public static class a {

        public final Map<BigInteger, Boolean> f102322a = new WeakHashMap();

        public final BigInteger[] f102323b = new BigInteger[8];

        public int f102324c = 0;

        public synchronized void a(BigInteger bigInteger) {
            this.f102322a.put(bigInteger, Boolean.TRUE);
            BigInteger[] bigIntegerArr = this.f102323b;
            int i10 = this.f102324c;
            bigIntegerArr[i10] = bigInteger;
            this.f102324c = (i10 + 1) % bigIntegerArr.length;
        }

        public synchronized void b() {
            this.f102322a.clear();
            int i10 = 0;
            while (true) {
                BigInteger[] bigIntegerArr = this.f102323b;
                if (i10 != bigIntegerArr.length) {
                    bigIntegerArr[i10] = null;
                    i10++;
                }
            }
        }

        public synchronized boolean c(BigInteger bigInteger) {
            return this.f102322a.containsKey(bigInteger);
        }

        public synchronized int d() {
            return this.f102322a.size();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0012, code lost:
    
        if (r3.length != 1) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(BigInteger bigInteger, byte[] bArr, int i10, int i11) {
        int i12;
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == i11) {
            System.arraycopy(byteArray, 0, bArr, i10, i11);
            return;
        }
        if (byteArray[0] == 0) {
            i12 = 1;
        }
        i12 = 0;
        int length = byteArray.length - i12;
        if (length > i11) {
            throw new IllegalArgumentException("standard length exceeded for value");
        }
        int i13 = (i11 - length) + i10;
        org.bouncycastle.util.a.f0(bArr, i10, i13, (byte) 0);
        System.arraycopy(byteArray, i12, bArr, i13, length);
    }

    public static byte[] b(int i10, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == i10) {
            return byteArray;
        }
        int i11 = 0;
        if (byteArray[0] == 0 && byteArray.length != 1) {
            i11 = 1;
        }
        int length = byteArray.length - i11;
        if (length > i10) {
            throw new IllegalArgumentException("standard length exceeded for value");
        }
        byte[] bArr = new byte[i10];
        System.arraycopy(byteArray, i11, bArr, i10 - length, length);
        return bArr;
    }

    public static byte[] c(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] != 0 || byteArray.length == 1) {
            return byteArray;
        }
        int length = byteArray.length - 1;
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 1, bArr, 0, length);
        return bArr;
    }

    public static byte d(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 7) {
            return bigInteger.byteValue();
        }
        throw new ArithmeticException("BigInteger out of int range");
    }

    public static byte[] e(int i10, SecureRandom secureRandom) throws IllegalArgumentException {
        if (i10 < 1) {
            throw new IllegalArgumentException("bitLength must be at least 1");
        }
        int i11 = (i10 + 7) / 8;
        byte[] bArr = new byte[i11];
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & ((byte) (255 >>> ((i11 * 8) - i10))));
        return bArr;
    }

    public static BigInteger f(int i10, SecureRandom secureRandom) {
        return new BigInteger(1, e(i10, secureRandom));
    }

    public static BigInteger g(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger f10;
        int compareTo = bigInteger.compareTo(bigInteger2);
        if (compareTo >= 0) {
            if (compareTo <= 0) {
                return bigInteger;
            }
            throw new IllegalArgumentException("'min' may not be greater than 'max'");
        }
        if (bigInteger.bitLength() > bigInteger2.bitLength() / 2) {
            f10 = g(f102315a, bigInteger2.subtract(bigInteger), secureRandom);
        } else {
            for (int i10 = 0; i10 < 1000; i10++) {
                BigInteger f11 = f(bigInteger2.bitLength(), secureRandom);
                if (f11.compareTo(bigInteger) >= 0 && f11.compareTo(bigInteger2) <= 0) {
                    return f11;
                }
            }
            f10 = f(bigInteger2.subtract(bigInteger).bitLength() - 1, secureRandom);
        }
        return f10.add(bigInteger);
    }

    public static BigInteger h(int i10, int i11, SecureRandom secureRandom) {
        BigInteger bigInteger;
        if (i10 < 2) {
            throw new IllegalArgumentException("bitLength < 2");
        }
        if (i10 == 2) {
            return secureRandom.nextInt() < 0 ? f102317c : f102318d;
        }
        do {
            byte[] e10 = e(i10, secureRandom);
            e10[0] = (byte) (((byte) (1 << (7 - ((e10.length * 8) - i10)))) | e10[0]);
            int length = e10.length - 1;
            e10[length] = (byte) (e10[length] | 1);
            bigInteger = new BigInteger(1, e10);
            if (i10 > f102321g) {
                while (!bigInteger.gcd(f102320f).equals(f102316b)) {
                    bigInteger = bigInteger.add(f102317c);
                }
            }
        } while (!bigInteger.isProbablePrime(i11));
        return bigInteger;
    }

    public static BigInteger i(byte[] bArr) {
        return new BigInteger(1, bArr);
    }

    public static BigInteger j(byte[] bArr, int i10, int i11) {
        if (i10 != 0 || i11 != bArr.length) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            bArr = bArr2;
        }
        return new BigInteger(1, bArr);
    }

    public static int k(BigInteger bigInteger) {
        if (bigInteger.equals(f102315a)) {
            return 1;
        }
        return (bigInteger.bitLength() + 7) / 8;
    }

    public static int l(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 31) {
            return bigInteger.intValue();
        }
        throw new ArithmeticException("BigInteger out of int range");
    }

    public static long m(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 63) {
            return bigInteger.longValue();
        }
        throw new ArithmeticException("BigInteger out of long range");
    }

    public static BigInteger n(BigInteger bigInteger, BigInteger bigInteger2) {
        if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("'M' must be odd");
        }
        if (bigInteger.signum() != 1) {
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        if (bigInteger2.signum() < 0 || bigInteger2.bitLength() > bigInteger.bitLength()) {
            bigInteger2 = bigInteger2.mod(bigInteger);
        }
        int bitLength = bigInteger.bitLength();
        int[] U10 = AbstractC15329o.U(bitLength, bigInteger);
        int[] U11 = AbstractC15329o.U(bitLength, bigInteger2);
        int length = U10.length;
        int[] E10 = AbstractC15329o.E(length);
        if (AbstractC15317c.o(U10, U11, E10) != 0) {
            return AbstractC15329o.j1(length, E10);
        }
        throw new ArithmeticException("BigInteger not invertible.");
    }

    public static BigInteger o(BigInteger bigInteger, BigInteger bigInteger2) {
        if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("'M' must be odd");
        }
        if (bigInteger.signum() != 1) {
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        BigInteger bigInteger3 = f102316b;
        if (bigInteger.equals(bigInteger3)) {
            return f102315a;
        }
        if (bigInteger2.signum() < 0 || bigInteger2.bitLength() > bigInteger.bitLength()) {
            bigInteger2 = bigInteger2.mod(bigInteger);
        }
        if (bigInteger2.equals(bigInteger3)) {
            return bigInteger3;
        }
        int bitLength = bigInteger.bitLength();
        int[] U10 = AbstractC15329o.U(bitLength, bigInteger);
        int[] U11 = AbstractC15329o.U(bitLength, bigInteger2);
        int length = U10.length;
        int[] E10 = AbstractC15329o.E(length);
        if (AbstractC15317c.p(U10, U11, E10)) {
            return AbstractC15329o.j1(length, E10);
        }
        throw new ArithmeticException("BigInteger not invertible.");
    }

    public static boolean p(BigInteger bigInteger, BigInteger bigInteger2) {
        if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("'M' must be odd");
        }
        if (bigInteger.signum() != 1) {
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        if (bigInteger2.signum() < 0 || bigInteger2.bitLength() > bigInteger.bitLength()) {
            bigInteger2 = bigInteger2.mod(bigInteger);
        }
        int bitLength = bigInteger.bitLength();
        return AbstractC15317c.q(AbstractC15329o.U(bitLength, bigInteger), AbstractC15329o.U(bitLength, bigInteger2)) != 0;
    }

    public static boolean q(BigInteger bigInteger, BigInteger bigInteger2) {
        if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("'M' must be odd");
        }
        if (bigInteger.signum() != 1) {
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        if (bigInteger2.signum() < 0 || bigInteger2.bitLength() > bigInteger.bitLength()) {
            bigInteger2 = bigInteger2.mod(bigInteger);
        }
        if (bigInteger2.equals(f102316b)) {
            return true;
        }
        int bitLength = bigInteger.bitLength();
        return AbstractC15317c.r(AbstractC15329o.U(bitLength, bigInteger), AbstractC15329o.U(bitLength, bigInteger2));
    }

    public static short r(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 15) {
            return bigInteger.shortValue();
        }
        throw new ArithmeticException("BigInteger out of int range");
    }
}
