package Ci;

import Bi.InterfaceC2373e;
import Bi.InterfaceC2379k;
import Bi.r;
import Xi.C3359o;
import Xi.C3361p;
import Xi.C3363q;
import Xi.C3366s;
import java.math.BigInteger;

public class k implements InterfaceC2373e {

    public static final BigInteger f4438b = BigInteger.valueOf(1);

    public C3359o f4439a;

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        C3359o c3359o = (C3359o) interfaceC2379k;
        this.f4439a = c3359o;
        r.a(m.a("MQV", c3359o.c()));
    }

    @Override
    public BigInteger b(InterfaceC2379k interfaceC2379k) {
        C3361p c3361p = (C3361p) interfaceC2379k;
        Xi.r c10 = this.f4439a.c();
        if (!this.f4439a.c().d().equals(c3361p.b().d())) {
            throw new IllegalStateException("MQV public key components have wrong domain parameters");
        }
        if (this.f4439a.c().d().g() == null) {
            throw new IllegalStateException("MQV key domain parameters do not have Q set");
        }
        BigInteger e10 = e(c10.d(), c10, c3361p.b(), this.f4439a.a(), this.f4439a.b(), c3361p.a());
        if (e10.equals(f4438b)) {
            throw new IllegalStateException("1 is not a valid agreement value for MQV");
        }
        return e10;
    }

    @Override
    public int c() {
        return (this.f4439a.c().d().f().bitLength() + 7) / 8;
    }

    public final BigInteger e(C3363q c3363q, Xi.r rVar, C3366s c3366s, Xi.r rVar2, C3366s c3366s2, C3366s c3366s3) {
        BigInteger g10 = c3363q.g();
        BigInteger pow = BigInteger.valueOf(2L).pow((g10.bitLength() + 1) / 2);
        return c3366s3.e().multiply(c3366s.e().modPow(c3366s3.e().mod(pow).add(pow), c3363q.f())).modPow(rVar2.e().add(c3366s2.e().mod(pow).add(pow).multiply(rVar.e())).mod(g10), c3363q.f());
    }
}
