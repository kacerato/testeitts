package Ci;

import Bi.InterfaceC2373e;
import Bi.InterfaceC2379k;
import Xi.C3335c;
import Xi.C3363q;
import Xi.C3366s;
import Xi.r;
import Xi.x0;
import java.math.BigInteger;

public class b implements InterfaceC2373e {

    public static final BigInteger f4384c = BigInteger.valueOf(1);

    public r f4385a;

    public C3363q f4386b;

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        if (interfaceC2379k instanceof x0) {
            interfaceC2379k = ((x0) interfaceC2379k).a();
        }
        C3335c c3335c = (C3335c) interfaceC2379k;
        if (!(c3335c instanceof r)) {
            throw new IllegalArgumentException("DHEngine expects DHPrivateKeyParameters");
        }
        r rVar = (r) c3335c;
        this.f4385a = rVar;
        this.f4386b = rVar.d();
        Bi.r.a(m.a("DHB", this.f4385a));
    }

    @Override
    public BigInteger b(InterfaceC2379k interfaceC2379k) {
        C3366s c3366s = (C3366s) interfaceC2379k;
        if (!c3366s.d().equals(this.f4386b)) {
            throw new IllegalArgumentException("Diffie-Hellman public key has wrong parameters.");
        }
        BigInteger f10 = this.f4386b.f();
        BigInteger e10 = c3366s.e();
        if (e10 != null) {
            BigInteger bigInteger = f4384c;
            if (e10.compareTo(bigInteger) > 0 && e10.compareTo(f10.subtract(bigInteger)) < 0) {
                BigInteger modPow = e10.modPow(this.f4385a.e(), f10);
                if (modPow.equals(bigInteger)) {
                    throw new IllegalStateException("Shared key can't be 1");
                }
                return modPow;
            }
        }
        throw new IllegalArgumentException("Diffie-Hellman public key is weak");
    }

    @Override
    public int c() {
        return (this.f4385a.d().f().bitLength() + 7) / 8;
    }
}
