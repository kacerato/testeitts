package Xi;

import Bi.InterfaceC2379k;
import java.math.BigInteger;

public class C3363q implements InterfaceC2379k {

    public static final int f29397i = 160;

    public BigInteger f29398b;

    public BigInteger f29399c;

    public BigInteger f29400d;

    public BigInteger f29401e;

    public int f29402f;

    public int f29403g;

    public C3371v f29404h;

    public C3363q(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, null, 0);
    }

    public static int a(int i10) {
        if (i10 != 0 && i10 < 160) {
            return i10;
        }
        return 160;
    }

    public BigInteger b() {
        return this.f29398b;
    }

    public BigInteger c() {
        return this.f29401e;
    }

    public int d() {
        return this.f29403g;
    }

    public int e() {
        return this.f29402f;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C3363q)) {
            return false;
        }
        C3363q c3363q = (C3363q) obj;
        if (g() != null) {
            if (!g().equals(c3363q.g())) {
                return false;
            }
        } else if (c3363q.g() != null) {
            return false;
        }
        return c3363q.f().equals(this.f29399c) && c3363q.b().equals(this.f29398b);
    }

    public BigInteger f() {
        return this.f29399c;
    }

    public BigInteger g() {
        return this.f29400d;
    }

    public C3371v h() {
        return this.f29404h;
    }

    public int hashCode() {
        return (f().hashCode() ^ b().hashCode()) ^ (g() != null ? g().hashCode() : 0);
    }

    public C3363q(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, 0);
    }

    public C3363q(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i10) {
        this(bigInteger, bigInteger2, bigInteger3, a(i10), i10, null, null);
    }

    public C3363q(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i10, int i11) {
        this(bigInteger, bigInteger2, bigInteger3, i10, i11, null, null);
    }

    public C3363q(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i10, int i11, BigInteger bigInteger4, C3371v c3371v) {
        if (i11 != 0) {
            if (i11 > bigInteger.bitLength()) {
                throw new IllegalArgumentException("when l value specified, it must satisfy 2^(l-1) <= p");
            }
            if (i11 < i10) {
                throw new IllegalArgumentException("when l value specified, it may not be less than m value");
            }
        }
        if (i10 > bigInteger.bitLength() && !org.bouncycastle.util.q.f("org.bouncycastle.dh.allow_unsafe_p_value")) {
            throw new IllegalArgumentException("unsafe p value so small specific l required");
        }
        this.f29398b = bigInteger2;
        this.f29399c = bigInteger;
        this.f29400d = bigInteger3;
        this.f29402f = i10;
        this.f29403g = i11;
        this.f29401e = bigInteger4;
        this.f29404h = c3371v;
    }

    public C3363q(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, C3371v c3371v) {
        this(bigInteger, bigInteger2, bigInteger3, 160, 0, bigInteger4, c3371v);
    }
}
