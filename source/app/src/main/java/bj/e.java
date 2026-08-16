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
import jk.AbstractC13875e;
import jk.C13873c;

public class e implements InterfaceC2387t {

    public static final BigInteger f33283i = BigInteger.valueOf(1);

    public J f33284g;

    public SecureRandom f33285h;

    public static BigInteger e(BigInteger bigInteger, jk.f fVar) {
        return h(fVar.v(), bigInteger.bitLength() - 1);
    }

    public static BigInteger f(BigInteger bigInteger, SecureRandom secureRandom) {
        return org.bouncycastle.util.b.f(bigInteger.bitLength() - 1, secureRandom);
    }

    public static jk.f g(AbstractC13875e abstractC13875e, byte[] bArr) {
        return abstractC13875e.o(h(new BigInteger(1, org.bouncycastle.util.a.N0(bArr)), abstractC13875e.w()));
    }

    public static BigInteger h(BigInteger bigInteger, int i10) {
        return bigInteger.bitLength() > i10 ? bigInteger.mod(f33283i.shiftLeft(i10)) : bigInteger;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        J j10;
        if (z10) {
            if (interfaceC2379k instanceof x0) {
                x0 x0Var = (x0) interfaceC2379k;
                this.f33285h = x0Var.b();
                interfaceC2379k = x0Var.a();
            } else {
                this.f33285h = Bi.r.h();
            }
            j10 = (L) interfaceC2379k;
        } else {
            j10 = (M) interfaceC2379k;
        }
        this.f33284g = j10;
        Bi.r.a(C3891A.c("DSTU4145", this.f33284g, z10));
    }

    @Override
    public BigInteger[] b(byte[] bArr) {
        G d10 = this.f33284g.d();
        AbstractC13875e a10 = d10.a();
        jk.f g10 = g(a10, bArr);
        if (g10.j()) {
            g10 = a10.o(f33283i);
        }
        BigInteger e10 = d10.e();
        BigInteger e11 = ((L) this.f33284g).e();
        jk.h d11 = d();
        while (true) {
            BigInteger f10 = f(e10, this.f33285h);
            jk.f f11 = d11.a(d10.b(), f10).B().f();
            if (!f11.j()) {
                BigInteger e12 = e(e10, g10.k(f11));
                if (e12.signum() != 0) {
                    BigInteger mod = e12.multiply(e11).add(f10).mod(e10);
                    if (mod.signum() != 0) {
                        return new BigInteger[]{e12, mod};
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @Override
    public boolean c(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger.signum() <= 0 || bigInteger2.signum() <= 0) {
            return false;
        }
        G d10 = this.f33284g.d();
        BigInteger e10 = d10.e();
        if (bigInteger.compareTo(e10) >= 0 || bigInteger2.compareTo(e10) >= 0) {
            return false;
        }
        AbstractC13875e a10 = d10.a();
        jk.f g10 = g(a10, bArr);
        if (g10.j()) {
            g10 = a10.o(f33283i);
        }
        jk.i B10 = C13873c.v(d10.b(), bigInteger2, ((M) this.f33284g).e(), bigInteger).B();
        return !B10.v() && e(e10, g10.k(B10.f())).compareTo(bigInteger) == 0;
    }

    public jk.h d() {
        return new jk.k();
    }

    @Override
    public BigInteger getOrder() {
        return this.f33284g.d().e();
    }
}
