package Xi;

import Bi.InterfaceC2379k;
import java.math.BigInteger;

public class C3336c0 implements InterfaceC2379k {

    public BigInteger f29330b;

    public BigInteger f29331c;

    public BigInteger f29332d;

    public C3342f0 f29333e;

    public C3336c0(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f29330b = bigInteger;
        this.f29331c = bigInteger2;
        this.f29332d = bigInteger3;
    }

    public BigInteger a() {
        return this.f29332d;
    }

    public BigInteger b() {
        return this.f29330b;
    }

    public BigInteger c() {
        return this.f29331c;
    }

    public C3342f0 d() {
        return this.f29333e;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C3336c0)) {
            return false;
        }
        C3336c0 c3336c0 = (C3336c0) obj;
        return c3336c0.b().equals(this.f29330b) && c3336c0.c().equals(this.f29331c) && c3336c0.a().equals(this.f29332d);
    }

    public int hashCode() {
        return (this.f29330b.hashCode() ^ this.f29331c.hashCode()) ^ this.f29332d.hashCode();
    }

    public C3336c0(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, C3342f0 c3342f0) {
        this.f29332d = bigInteger3;
        this.f29330b = bigInteger;
        this.f29331c = bigInteger2;
        this.f29333e = c3342f0;
    }
}
