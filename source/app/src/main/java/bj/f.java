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
import jk.InterfaceC13874d;

public class f implements InterfaceC13874d, InterfaceC2387t {

    public final c f33286g;

    public J f33287h;

    public SecureRandom f33288i;

    public f() {
        this.f33286g = new x();
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        J j10;
        SecureRandom secureRandom;
        if (!z10) {
            j10 = (M) interfaceC2379k;
        } else {
            if (interfaceC2379k instanceof x0) {
                x0 x0Var = (x0) interfaceC2379k;
                this.f33287h = (L) x0Var.a();
                secureRandom = x0Var.b();
                Bi.r.a(C3891A.c("ECDSA", this.f33287h, z10));
                this.f33288i = g((z10 || this.f33286g.c()) ? false : true, secureRandom);
            }
            j10 = (L) interfaceC2379k;
        }
        this.f33287h = j10;
        secureRandom = null;
        Bi.r.a(C3891A.c("ECDSA", this.f33287h, z10));
        this.f33288i = g((z10 || this.f33286g.c()) ? false : true, secureRandom);
    }

    @Override
    public BigInteger[] b(byte[] bArr) {
        G d10 = this.f33287h.d();
        BigInteger e10 = d10.e();
        BigInteger d11 = d(e10, bArr);
        BigInteger e11 = ((L) this.f33287h).e();
        if (this.f33286g.c()) {
            this.f33286g.d(e10, e11, bArr);
        } else {
            this.f33286g.a(e10, this.f33288i);
        }
        jk.h e12 = e();
        while (true) {
            BigInteger b10 = this.f33286g.b();
            BigInteger mod = e12.a(d10.b(), b10).B().f().v().mod(e10);
            BigInteger bigInteger = InterfaceC13874d.f93853a;
            if (!mod.equals(bigInteger)) {
                BigInteger mod2 = org.bouncycastle.util.b.n(e10, b10).multiply(d11.add(e11.multiply(mod))).mod(e10);
                if (!mod2.equals(bigInteger)) {
                    return new BigInteger[]{mod, mod2};
                }
            }
        }
    }

    @Override
    public boolean c(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger s10;
        jk.f f10;
        G d10 = this.f33287h.d();
        BigInteger e10 = d10.e();
        BigInteger d11 = d(e10, bArr);
        BigInteger bigInteger3 = InterfaceC13874d.f93854b;
        if (bigInteger.compareTo(bigInteger3) < 0 || bigInteger.compareTo(e10) >= 0 || bigInteger2.compareTo(bigInteger3) < 0 || bigInteger2.compareTo(e10) >= 0) {
            return false;
        }
        BigInteger o10 = org.bouncycastle.util.b.o(e10, bigInteger2);
        jk.i v10 = C13873c.v(d10.b(), d11.multiply(o10).mod(e10), ((M) this.f33287h).e(), bigInteger.multiply(o10).mod(e10));
        if (v10.v()) {
            return false;
        }
        AbstractC13875e i10 = v10.i();
        if (i10 == null || (s10 = i10.s()) == null || s10.compareTo(InterfaceC13874d.f93858f) > 0 || (f10 = f(i10.t(), v10)) == null || f10.j()) {
            return v10.B().f().v().mod(e10).equals(bigInteger);
        }
        jk.f q10 = v10.q();
        while (i10.D(bigInteger)) {
            if (i10.o(bigInteger).k(f10).equals(q10)) {
                return true;
            }
            bigInteger = bigInteger.add(e10);
        }
        return false;
    }

    public BigInteger d(BigInteger bigInteger, byte[] bArr) {
        int bitLength = bigInteger.bitLength();
        int length = bArr.length * 8;
        BigInteger bigInteger2 = new BigInteger(1, bArr);
        return bitLength < length ? bigInteger2.shiftRight(length - bitLength) : bigInteger2;
    }

    public jk.h e() {
        return new jk.k();
    }

    public jk.f f(int i10, jk.i iVar) {
        if (i10 != 1) {
            if (i10 == 2 || i10 == 3 || i10 == 4) {
                return iVar.s(0).p();
            }
            if (i10 != 6 && i10 != 7) {
                return null;
            }
        }
        return iVar.s(0);
    }

    public SecureRandom g(boolean z10, SecureRandom secureRandom) {
        if (z10) {
            return Bi.r.i(secureRandom);
        }
        return null;
    }

    @Override
    public BigInteger getOrder() {
        return this.f33287h.d().e();
    }

    public f(c cVar) {
        this.f33286g = cVar;
    }
}
