package bj;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2387t;
import Xi.G;
import Xi.J;
import Xi.L;
import Xi.M;
import Xi.x0;
import java.math.BigInteger;
import java.security.SecureRandom;
import jk.C13873c;
import jk.InterfaceC13874d;

public class g implements InterfaceC2387t {

    public J f33289g;

    public SecureRandom f33290h;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        J j10;
        if (z10) {
            if (interfaceC2379k instanceof x0) {
                x0 x0Var = (x0) interfaceC2379k;
                this.f33290h = x0Var.b();
                interfaceC2379k = x0Var.a();
            } else {
                this.f33290h = Bi.r.h();
            }
            j10 = (L) interfaceC2379k;
        } else {
            j10 = (M) interfaceC2379k;
        }
        this.f33289g = j10;
        Bi.r.a(C3891A.c("ECGOST3410", this.f33289g, z10));
    }

    @Override
    public BigInteger[] b(byte[] bArr) {
        BigInteger bigInteger = new BigInteger(1, org.bouncycastle.util.a.N0(bArr));
        G d10 = this.f33289g.d();
        BigInteger e10 = d10.e();
        BigInteger e11 = ((L) this.f33289g).e();
        jk.h d11 = d();
        while (true) {
            BigInteger f10 = org.bouncycastle.util.b.f(e10.bitLength(), this.f33290h);
            BigInteger bigInteger2 = InterfaceC13874d.f93853a;
            if (!f10.equals(bigInteger2)) {
                BigInteger mod = d11.a(d10.b(), f10).B().f().v().mod(e10);
                if (mod.equals(bigInteger2)) {
                    continue;
                } else {
                    BigInteger mod2 = f10.multiply(bigInteger).add(e11.multiply(mod)).mod(e10);
                    if (!mod2.equals(bigInteger2)) {
                        return new BigInteger[]{mod, mod2};
                    }
                }
            }
        }
    }

    @Override
    public boolean c(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigInteger3 = new BigInteger(1, org.bouncycastle.util.a.N0(bArr));
        BigInteger e10 = this.f33289g.d().e();
        BigInteger bigInteger4 = InterfaceC13874d.f93854b;
        if (bigInteger.compareTo(bigInteger4) < 0 || bigInteger.compareTo(e10) >= 0 || bigInteger2.compareTo(bigInteger4) < 0 || bigInteger2.compareTo(e10) >= 0) {
            return false;
        }
        BigInteger o10 = org.bouncycastle.util.b.o(e10, bigInteger3);
        jk.i B10 = C13873c.v(this.f33289g.d().b(), bigInteger2.multiply(o10).mod(e10), ((M) this.f33289g).e(), e10.subtract(bigInteger).multiply(o10).mod(e10)).B();
        if (B10.v()) {
            return false;
        }
        return B10.f().v().mod(e10).equals(bigInteger);
    }

    public jk.h d() {
        return new jk.k();
    }

    @Override
    public BigInteger getOrder() {
        return this.f33289g.d().e();
    }
}
