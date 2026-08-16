package Ci;

import Bi.InterfaceC2373e;
import Bi.InterfaceC2379k;
import Bi.r;
import Xi.C3364q0;
import Xi.C3365r0;
import Xi.G;
import Xi.L;
import Xi.M;
import java.math.BigInteger;
import jk.AbstractC13875e;
import jk.C13873c;
import jk.InterfaceC13874d;

public class i implements InterfaceC2373e {

    public C3364q0 f4434a;

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        C3364q0 c3364q0 = (C3364q0) interfaceC2379k;
        this.f4434a = c3364q0;
        r.a(m.b("ECMQV", c3364q0.c()));
    }

    @Override
    public BigInteger b(InterfaceC2379k interfaceC2379k) {
        if (org.bouncycastle.util.q.f("org.bouncycastle.ec.disable_mqv")) {
            throw new IllegalStateException("ECMQV explicitly disabled");
        }
        C3365r0 c3365r0 = (C3365r0) interfaceC2379k;
        L c10 = this.f4434a.c();
        G d10 = c10.d();
        if (!d10.equals(c3365r0.b().d())) {
            throw new IllegalStateException("ECMQV public key components have wrong domain parameters");
        }
        jk.i B10 = e(d10, c10, this.f4434a.a(), this.f4434a.b(), c3365r0.b(), c3365r0.a()).B();
        if (B10.v()) {
            throw new IllegalStateException("Infinity is not a valid agreement value for MQV");
        }
        return B10.f().v();
    }

    @Override
    public int c() {
        return (this.f4434a.c().d().a().w() + 7) / 8;
    }

    public final jk.i e(G g10, L l10, L l11, M m10, M m11, M m12) {
        BigInteger e10 = g10.e();
        int bitLength = (e10.bitLength() + 1) / 2;
        BigInteger shiftLeft = InterfaceC13874d.f93854b.shiftLeft(bitLength);
        AbstractC13875e a10 = g10.a();
        jk.i a11 = C13873c.a(a10, m10.e());
        jk.i a12 = C13873c.a(a10, m11.e());
        jk.i a13 = C13873c.a(a10, m12.e());
        BigInteger mod = l10.e().multiply(a11.f().v().mod(shiftLeft).setBit(bitLength)).add(l11.e()).mod(e10);
        BigInteger bit = a13.f().v().mod(shiftLeft).setBit(bitLength);
        BigInteger mod2 = g10.c().multiply(mod).mod(e10);
        return C13873c.v(a12, bit.multiply(mod2).mod(e10), a13, mod2);
    }
}
