package Ci;

import Bi.InterfaceC2373e;
import Bi.InterfaceC2379k;
import Bi.r;
import Xi.G;
import Xi.L;
import Xi.M;
import java.math.BigInteger;
import jk.C13873c;
import jk.InterfaceC13874d;

public class e implements InterfaceC2373e {

    public L f4430a;

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        L l10 = (L) interfaceC2379k;
        this.f4430a = l10;
        r.a(m.b("ECDH", l10));
    }

    @Override
    public BigInteger b(InterfaceC2379k interfaceC2379k) {
        M m10 = (M) interfaceC2379k;
        G d10 = this.f4430a.d();
        if (!d10.equals(m10.d())) {
            throw new IllegalStateException("ECDH public key has wrong domain parameters");
        }
        BigInteger e10 = this.f4430a.e();
        jk.i a10 = C13873c.a(d10.a(), m10.e());
        if (a10.v()) {
            throw new IllegalStateException("Infinity is not a valid public key for ECDH");
        }
        BigInteger c10 = d10.c();
        if (!c10.equals(InterfaceC13874d.f93854b)) {
            e10 = d10.d().multiply(e10).mod(d10.e());
            a10 = C13873c.s(a10, c10);
        }
        jk.i B10 = a10.z(e10).B();
        if (B10.v()) {
            throw new IllegalStateException("Infinity is not a valid agreement value for ECDH");
        }
        return B10.f().v();
    }

    @Override
    public int c() {
        return (this.f4430a.d().a().w() + 7) / 8;
    }
}
