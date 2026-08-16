package bj;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2387t;
import Xi.C3334b0;
import Xi.C3336c0;
import Xi.C3338d0;
import Xi.C3340e0;
import Xi.x0;
import java.math.BigInteger;
import java.security.SecureRandom;

public class o implements InterfaceC2387t {

    public C3334b0 f33318g;

    public SecureRandom f33319h;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        C3334b0 c3334b0;
        if (z10) {
            if (interfaceC2379k instanceof x0) {
                x0 x0Var = (x0) interfaceC2379k;
                this.f33319h = x0Var.b();
                interfaceC2379k = x0Var.a();
            } else {
                this.f33319h = Bi.r.h();
            }
            c3334b0 = (C3338d0) interfaceC2379k;
        } else {
            c3334b0 = (C3340e0) interfaceC2379k;
        }
        this.f33318g = c3334b0;
        Bi.r.a(C3891A.d("GOST3410", this.f33318g, z10));
    }

    @Override
    public BigInteger[] b(byte[] bArr) {
        BigInteger f10;
        BigInteger bigInteger = new BigInteger(1, org.bouncycastle.util.a.N0(bArr));
        C3336c0 d10 = this.f33318g.d();
        do {
            f10 = org.bouncycastle.util.b.f(d10.c().bitLength(), this.f33319h);
        } while (f10.compareTo(d10.c()) >= 0);
        BigInteger mod = d10.a().modPow(f10, d10.b()).mod(d10.c());
        return new BigInteger[]{mod, f10.multiply(bigInteger).add(((C3338d0) this.f33318g).e().multiply(mod)).mod(d10.c())};
    }

    @Override
    public boolean c(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigInteger3 = new BigInteger(1, org.bouncycastle.util.a.N0(bArr));
        C3336c0 d10 = this.f33318g.d();
        BigInteger valueOf = BigInteger.valueOf(0L);
        if (valueOf.compareTo(bigInteger) >= 0 || d10.c().compareTo(bigInteger) <= 0 || valueOf.compareTo(bigInteger2) >= 0 || d10.c().compareTo(bigInteger2) <= 0) {
            return false;
        }
        BigInteger modPow = bigInteger3.modPow(d10.c().subtract(new BigInteger("2")), d10.c());
        return d10.a().modPow(bigInteger2.multiply(modPow).mod(d10.c()), d10.b()).multiply(((C3340e0) this.f33318g).e().modPow(d10.c().subtract(bigInteger).multiply(modPow).mod(d10.c()), d10.b())).mod(d10.b()).mod(d10.c()).equals(bigInteger);
    }

    @Override
    public BigInteger getOrder() {
        return this.f33318g.d().c();
    }
}
