package Ci;

import Bi.InterfaceC2373e;
import Bi.InterfaceC2379k;
import Bi.r;
import Xi.G;
import Xi.L;
import Xi.M;
import java.math.BigInteger;
import jk.C13873c;

public class f implements InterfaceC2373e {

    public L f4431a;

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        L l10 = (L) interfaceC2379k;
        this.f4431a = l10;
        r.a(m.b("ECCDH", l10));
    }

    @Override
    public BigInteger b(InterfaceC2379k interfaceC2379k) {
        M m10 = (M) interfaceC2379k;
        G d10 = this.f4431a.d();
        if (!d10.equals(m10.d())) {
            throw new IllegalStateException("ECDHC public key has wrong domain parameters");
        }
        BigInteger mod = d10.c().multiply(this.f4431a.e()).mod(d10.e());
        jk.i a10 = C13873c.a(d10.a(), m10.e());
        if (a10.v()) {
            throw new IllegalStateException("Infinity is not a valid public key for ECDHC");
        }
        jk.i B10 = a10.z(mod).B();
        if (B10.v()) {
            throw new IllegalStateException("Infinity is not a valid agreement value for ECDHC");
        }
        return B10.f().v();
    }

    @Override
    public int c() {
        return (this.f4431a.d().a().w() + 7) / 8;
    }
}
