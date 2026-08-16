package Ci;

import Bi.C2371c;
import Bi.InterfaceC2379k;
import Oi.C2934j;
import Xi.C3335c;
import Xi.C3355m;
import Xi.C3363q;
import Xi.C3366s;
import Xi.r;
import Xi.x0;
import java.math.BigInteger;
import java.security.SecureRandom;

public class a {

    public static final BigInteger f4379e = BigInteger.valueOf(1);

    public r f4380a;

    public C3363q f4381b;

    public BigInteger f4382c;

    public SecureRandom f4383d;

    public BigInteger a(C3366s c3366s, BigInteger bigInteger) {
        if (!c3366s.d().equals(this.f4381b)) {
            throw new IllegalArgumentException("Diffie-Hellman public key has wrong parameters.");
        }
        BigInteger f10 = this.f4381b.f();
        BigInteger e10 = c3366s.e();
        if (e10 != null) {
            BigInteger bigInteger2 = f4379e;
            if (e10.compareTo(bigInteger2) > 0 && e10.compareTo(f10.subtract(bigInteger2)) < 0) {
                BigInteger modPow = e10.modPow(this.f4382c, f10);
                if (modPow.equals(bigInteger2)) {
                    throw new IllegalStateException("Shared key can't be 1");
                }
                return bigInteger.modPow(this.f4380a.e(), f10).multiply(modPow).mod(f10);
            }
        }
        throw new IllegalArgumentException("Diffie-Hellman public key is weak");
    }

    public BigInteger b() {
        C2934j c2934j = new C2934j();
        c2934j.b(new C3355m(this.f4383d, this.f4381b));
        C2371c a10 = c2934j.a();
        this.f4382c = ((r) a10.a()).e();
        return ((C3366s) a10.b()).e();
    }

    public void c(InterfaceC2379k interfaceC2379k) {
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            this.f4383d = x0Var.b();
            interfaceC2379k = x0Var.a();
        } else {
            this.f4383d = Bi.r.h();
        }
        C3335c c3335c = (C3335c) interfaceC2379k;
        if (!(c3335c instanceof r)) {
            throw new IllegalArgumentException("DHEngine expects DHPrivateKeyParameters");
        }
        r rVar = (r) c3335c;
        this.f4380a = rVar;
        this.f4381b = rVar.d();
        Bi.r.a(m.a("DH", this.f4380a));
    }
}
