package bj;

import Bi.C2371c;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2387t;
import Oi.C2940p;
import Xi.I;
import Xi.J;
import Xi.L;
import Xi.M;
import Xi.x0;
import java.math.BigInteger;
import java.security.SecureRandom;
import jk.C13873c;
import jk.InterfaceC13874d;
import org.bouncycastle.crypto.DataLengthException;

public class i implements InterfaceC2387t {

    public boolean f33291g;

    public J f33292h;

    public SecureRandom f33293i;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        J j10;
        this.f33291g = z10;
        if (z10) {
            if (interfaceC2379k instanceof x0) {
                x0 x0Var = (x0) interfaceC2379k;
                this.f33293i = x0Var.b();
                interfaceC2379k = x0Var.a();
            } else {
                this.f33293i = Bi.r.h();
            }
            j10 = (L) interfaceC2379k;
        } else {
            j10 = (M) interfaceC2379k;
        }
        this.f33292h = j10;
        Bi.r.a(C3891A.c("ECNR", this.f33292h, z10));
    }

    @Override
    public BigInteger[] b(byte[] bArr) {
        C2371c a10;
        BigInteger mod;
        if (!this.f33291g) {
            throw new IllegalStateException("not initialised for signing");
        }
        BigInteger order = getOrder();
        BigInteger bigInteger = new BigInteger(1, bArr);
        L l10 = (L) this.f33292h;
        if (bigInteger.compareTo(order) >= 0) {
            throw new DataLengthException("input too large for ECNR key");
        }
        do {
            C2940p c2940p = new C2940p();
            c2940p.b(new I(l10.d(), this.f33293i));
            a10 = c2940p.a();
            mod = ((M) a10.b()).e().f().v().add(bigInteger).mod(order);
        } while (mod.equals(InterfaceC13874d.f93853a));
        return new BigInteger[]{mod, ((L) a10.a()).e().subtract(mod.multiply(l10.e())).mod(order)};
    }

    @Override
    public boolean c(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        if (this.f33291g) {
            throw new IllegalStateException("not initialised for verifying");
        }
        M m10 = (M) this.f33292h;
        BigInteger e10 = m10.d().e();
        int bitLength = e10.bitLength();
        BigInteger bigInteger3 = new BigInteger(1, bArr);
        if (bigInteger3.bitLength() > bitLength) {
            throw new DataLengthException("input too large for ECNR key.");
        }
        BigInteger d10 = d(m10, bigInteger, bigInteger2);
        return d10 != null && d10.equals(bigInteger3.mod(e10));
    }

    public final BigInteger d(M m10, BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger e10 = m10.d().e();
        if (bigInteger.compareTo(InterfaceC13874d.f93854b) < 0 || bigInteger.compareTo(e10) >= 0 || bigInteger2.compareTo(InterfaceC13874d.f93853a) < 0 || bigInteger2.compareTo(e10) >= 0) {
            return null;
        }
        jk.i B10 = C13873c.v(m10.d().b(), bigInteger2, m10.e(), bigInteger).B();
        if (B10.v()) {
            return null;
        }
        return bigInteger.subtract(B10.f().v()).mod(e10);
    }

    public byte[] e(BigInteger bigInteger, BigInteger bigInteger2) {
        if (this.f33291g) {
            throw new IllegalStateException("not initialised for verifying/recovery");
        }
        BigInteger d10 = d((M) this.f33292h, bigInteger, bigInteger2);
        if (d10 != null) {
            return org.bouncycastle.util.b.c(d10);
        }
        return null;
    }

    @Override
    public BigInteger getOrder() {
        return this.f33292h.d().e();
    }
}
