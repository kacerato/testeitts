package Oi;

import Xi.C3363q;
import Xi.C3371v;
import java.math.BigInteger;
import java.security.SecureRandom;

public class C2935k {

    public static final BigInteger f20217d = BigInteger.valueOf(2);

    public int f20218a;

    public int f20219b;

    public SecureRandom f20220c;

    public C3363q a() {
        BigInteger[] a10 = C2936l.a(this.f20218a, this.f20219b, this.f20220c);
        BigInteger bigInteger = a10[0];
        BigInteger bigInteger2 = a10[1];
        return new C3363q(bigInteger, C2936l.b(bigInteger, bigInteger2, this.f20220c), bigInteger2, f20217d, (C3371v) null);
    }

    public void b(int i10, int i11, SecureRandom secureRandom) {
        this.f20218a = i10;
        this.f20219b = i11;
        this.f20220c = secureRandom;
    }
}
