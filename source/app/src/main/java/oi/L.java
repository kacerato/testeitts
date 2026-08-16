package Oi;

import Bi.InterfaceC2379k;
import Xi.F0;
import Xi.G0;
import Xi.x0;
import java.math.BigInteger;
import java.security.SecureRandom;

public class L {

    public static BigInteger f20150c = BigInteger.valueOf(2);

    public F0 f20151a;

    public SecureRandom f20152b;

    public BigInteger a() {
        F0 f02 = this.f20151a;
        if (f02 == null) {
            throw new IllegalStateException("generator not initialised");
        }
        BigInteger f10 = f02.f();
        int bitLength = f10.bitLength() - 1;
        while (true) {
            BigInteger f11 = org.bouncycastle.util.b.f(bitLength, this.f20152b);
            if (f11.compareTo(f20150c) >= 0 && org.bouncycastle.util.b.p(f10, f11)) {
                return f11;
            }
        }
    }

    public void b(InterfaceC2379k interfaceC2379k) {
        SecureRandom h10;
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            this.f20151a = (F0) x0Var.a();
            h10 = x0Var.b();
        } else {
            this.f20151a = (F0) interfaceC2379k;
            h10 = Bi.r.h();
        }
        this.f20152b = h10;
        if (this.f20151a instanceof G0) {
            throw new IllegalArgumentException("generator requires RSA public key");
        }
    }
}
