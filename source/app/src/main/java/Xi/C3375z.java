package Xi;

import Bi.InterfaceC2379k;
import java.math.BigInteger;

public class C3375z implements InterfaceC2379k {

    public BigInteger f29446b;

    public BigInteger f29447c;

    public BigInteger f29448d;

    public C f29449e;

    public C3375z(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f29446b = bigInteger3;
        this.f29448d = bigInteger;
        this.f29447c = bigInteger2;
    }

    public BigInteger a() {
        return this.f29446b;
    }

    public BigInteger b() {
        return this.f29448d;
    }

    public BigInteger c() {
        return this.f29447c;
    }

    public C d() {
        return this.f29449e;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C3375z)) {
            return false;
        }
        C3375z c3375z = (C3375z) obj;
        return c3375z.b().equals(this.f29448d) && c3375z.c().equals(this.f29447c) && c3375z.a().equals(this.f29446b);
    }

    public int hashCode() {
        return (b().hashCode() ^ c().hashCode()) ^ a().hashCode();
    }

    public C3375z(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, C c10) {
        this.f29446b = bigInteger3;
        this.f29448d = bigInteger;
        this.f29447c = bigInteger2;
        this.f29449e = c10;
    }
}
