package Oi;

import Xi.C3345h;
import Xi.C3363q;
import java.math.BigInteger;
import java.security.SecureRandom;

public class C2929e {

    public static final BigInteger f20206d = BigInteger.valueOf(1);

    public int f20207a;

    public int f20208b;

    public SecureRandom f20209c;

    public static class a {

        public static final BigInteger f20210a = BigInteger.valueOf(2);

        public static BigInteger[] a(int i10, int i11, SecureRandom secureRandom) {
            BigInteger h10;
            BigInteger add;
            int i12 = i10 - 1;
            while (true) {
                h10 = org.bouncycastle.util.b.h(i12, 2, secureRandom);
                add = h10.shiftLeft(1).add(C2929e.f20206d);
                if (!add.isProbablePrime(i11) || (i11 > 2 && !h10.isProbablePrime(i11))) {
                }
            }
            return new BigInteger[]{add, h10};
        }

        public static BigInteger b(BigInteger bigInteger, SecureRandom secureRandom) {
            BigInteger modPow;
            BigInteger subtract = bigInteger.subtract(f20210a);
            do {
                BigInteger bigInteger2 = f20210a;
                modPow = org.bouncycastle.util.b.g(bigInteger2, subtract, secureRandom).modPow(bigInteger2, bigInteger);
            } while (modPow.equals(C2929e.f20206d));
            return modPow;
        }
    }

    public C3345h b() {
        BigInteger b10;
        BigInteger bigInteger = a.a(this.f20207a, this.f20208b, this.f20209c)[1];
        BigInteger b11 = a.b(bigInteger, this.f20209c);
        do {
            b10 = a.b(bigInteger, this.f20209c);
        } while (b11.equals(b10));
        return new C3345h(bigInteger, b11, b10, Ii.L.x());
    }

    public C3345h c(C3363q c3363q) {
        BigInteger b10;
        BigInteger f10 = c3363q.f();
        BigInteger b11 = c3363q.b();
        do {
            b10 = a.b(f10, this.f20209c);
        } while (b11.equals(b10));
        return new C3345h(f10, b11, b10, Ii.L.x());
    }

    public void d(int i10, int i11, SecureRandom secureRandom) {
        this.f20207a = i10;
        this.f20208b = i11;
        this.f20209c = secureRandom;
    }
}
