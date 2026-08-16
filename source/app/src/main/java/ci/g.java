package Ci;

import Bi.InterfaceC2379k;
import Bi.W;
import Bi.r;
import Xi.C3335c;
import Xi.G;
import Xi.L;
import Xi.M;
import java.math.BigInteger;
import jk.C13873c;

public class g implements W {

    public L f4432a;

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        L l10 = (L) interfaceC2379k;
        this.f4432a = l10;
        r.a(m.b("ECCDH", l10));
    }

    @Override
    public BigInteger b(InterfaceC2379k interfaceC2379k) {
        return e((M) interfaceC2379k).f().v();
    }

    @Override
    public int c() {
        return (this.f4432a.d().a().w() + 7) / 8;
    }

    @Override
    public C3335c d(InterfaceC2379k interfaceC2379k) {
        return new M(e((M) interfaceC2379k), this.f4432a.d());
    }

    public final jk.i e(M m10) {
        G d10 = this.f4432a.d();
        if (!d10.equals(m10.d())) {
            throw new IllegalStateException("ECDHC public key has wrong domain parameters");
        }
        BigInteger mod = d10.c().multiply(this.f4432a.e()).mod(d10.e());
        jk.i a10 = C13873c.a(d10.a(), m10.e());
        if (a10.v()) {
            throw new IllegalStateException("Infinity is not a valid public key for ECDHC");
        }
        jk.i B10 = a10.z(mod).B();
        if (B10.v()) {
            throw new IllegalStateException("Infinity is not a valid agreement value for ECDHC");
        }
        return B10;
    }
}
