package bj;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.S;
import Xi.G;
import Xi.J;
import Xi.L;
import Xi.M;
import Xi.v0;
import Xi.x0;
import java.math.BigInteger;
import jk.C13873c;
import jk.InterfaceC13874d;
import org.bouncycastle.crypto.CryptoException;

public class y implements S, InterfaceC13874d {

    public final c f33407g;

    public final InterfaceC2392y f33408h;

    public final InterfaceC3894b f33409i;

    public int f33410j;

    public G f33411k;

    public jk.i f33412l;

    public J f33413m;

    public byte[] f33414n;

    public static final class a {

        public static final int f33415a = 0;

        public static final int f33416b = 1;

        public static final int f33417c = 2;
    }

    public y() {
        this(z.f33418a, new Ii.S());
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        byte[] d10;
        jk.i e10;
        if (interfaceC2379k instanceof v0) {
            v0 v0Var = (v0) interfaceC2379k;
            InterfaceC2379k b10 = v0Var.b();
            byte[] a10 = v0Var.a();
            if (a10.length >= 8192) {
                throw new IllegalArgumentException("SM2 user ID must be less than 2^13 bits long");
            }
            d10 = a10;
            interfaceC2379k = b10;
        } else {
            d10 = em.h.d("31323334353637383132333435363738");
        }
        if (z10) {
            if (interfaceC2379k instanceof x0) {
                x0 x0Var = (x0) interfaceC2379k;
                J j10 = (J) x0Var.a();
                this.f33413m = j10;
                G d11 = j10.d();
                this.f33411k = d11;
                this.f33407g.a(d11.e(), x0Var.b());
            } else {
                J j11 = (J) interfaceC2379k;
                this.f33413m = j11;
                G d12 = j11.d();
                this.f33411k = d12;
                this.f33407g.a(d12.e(), Bi.r.h());
            }
            BigInteger e11 = ((L) this.f33413m).e();
            BigInteger subtract = this.f33411k.e().subtract(org.bouncycastle.util.b.f102316b);
            if (e11.compareTo(InterfaceC13874d.f93854b) < 0 || e11.compareTo(subtract) >= 0) {
                throw new IllegalArgumentException("SM2 private key out of range");
            }
            e10 = k().a(this.f33411k.b(), e11).B();
        } else {
            J j12 = (J) interfaceC2379k;
            this.f33413m = j12;
            this.f33411k = j12.d();
            e10 = ((M) this.f33413m).e();
        }
        this.f33412l = e10;
        Bi.r.a(C3891A.c("ECNR", this.f33413m, z10));
        this.f33408h.reset();
        this.f33414n = m(d10);
        this.f33410j = 1;
    }

    @Override
    public boolean b(byte[] bArr) {
        j();
        try {
            BigInteger[] a10 = this.f33409i.a(this.f33411k.e(), bArr);
            return n(a10[0], a10[1]);
        } catch (Exception unused) {
            return false;
        } finally {
            reset();
        }
    }

    @Override
    public byte[] c() throws CryptoException {
        j();
        byte[] l10 = l();
        BigInteger e10 = this.f33411k.e();
        BigInteger i10 = i(e10, l10);
        BigInteger e11 = ((L) this.f33413m).e();
        jk.h k10 = k();
        while (true) {
            BigInteger b10 = this.f33407g.b();
            BigInteger mod = i10.add(k10.a(this.f33411k.b(), b10).B().f().v()).mod(e10);
            BigInteger bigInteger = InterfaceC13874d.f93853a;
            if (!mod.equals(bigInteger) && !mod.add(b10).equals(e10)) {
                BigInteger mod2 = org.bouncycastle.util.b.n(e10, e11.add(InterfaceC13874d.f93854b)).multiply(b10.subtract(mod.multiply(e11)).mod(e10)).mod(e10);
                if (!mod2.equals(bigInteger)) {
                    try {
                        try {
                            return this.f33409i.b(this.f33411k.e(), mod, mod2);
                        } catch (Exception e12) {
                            throw new CryptoException("unable to encode signature: " + e12.getMessage(), e12);
                        }
                    } finally {
                        reset();
                    }
                }
            }
        }
    }

    public final void g(InterfaceC2392y interfaceC2392y, jk.f fVar) {
        byte[] e10 = fVar.e();
        interfaceC2392y.update(e10, 0, e10.length);
    }

    public final void h(InterfaceC2392y interfaceC2392y, byte[] bArr) {
        int length = bArr.length * 8;
        interfaceC2392y.update((byte) (length >>> 8));
        interfaceC2392y.update((byte) length);
        interfaceC2392y.update(bArr, 0, bArr.length);
    }

    public BigInteger i(BigInteger bigInteger, byte[] bArr) {
        return new BigInteger(1, bArr);
    }

    public final void j() {
        int i10 = this.f33410j;
        if (i10 != 1) {
            if (i10 != 2) {
                throw new IllegalStateException("SM2Signer needs to be initialized");
            }
        } else {
            InterfaceC2392y interfaceC2392y = this.f33408h;
            byte[] bArr = this.f33414n;
            interfaceC2392y.update(bArr, 0, bArr.length);
            this.f33410j = 2;
        }
    }

    public jk.h k() {
        return new jk.k();
    }

    public final byte[] l() {
        byte[] bArr = new byte[this.f33408h.f()];
        this.f33408h.c(bArr, 0);
        return bArr;
    }

    public final byte[] m(byte[] bArr) {
        h(this.f33408h, bArr);
        g(this.f33408h, this.f33411k.a().p());
        g(this.f33408h, this.f33411k.a().r());
        g(this.f33408h, this.f33411k.b().f());
        g(this.f33408h, this.f33411k.b().g());
        g(this.f33408h, this.f33412l.f());
        g(this.f33408h, this.f33412l.g());
        return l();
    }

    public final boolean n(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger e10 = this.f33411k.e();
        BigInteger bigInteger3 = InterfaceC13874d.f93854b;
        if (bigInteger.compareTo(bigInteger3) < 0 || bigInteger.compareTo(e10) >= 0 || bigInteger2.compareTo(bigInteger3) < 0 || bigInteger2.compareTo(e10) >= 0) {
            return false;
        }
        BigInteger i10 = i(e10, l());
        BigInteger mod = bigInteger.add(bigInteger2).mod(e10);
        if (mod.equals(InterfaceC13874d.f93853a)) {
            return false;
        }
        jk.i B10 = C13873c.v(this.f33411k.b(), bigInteger2, ((M) this.f33413m).e(), mod).B();
        if (B10.v()) {
            return false;
        }
        return i10.add(B10.f().v()).mod(e10).equals(bigInteger);
    }

    @Override
    public void reset() {
        int i10 = this.f33410j;
        if (i10 != 1) {
            if (i10 != 2) {
                throw new IllegalStateException("SM2Signer needs to be initialized");
            }
            this.f33408h.reset();
            this.f33410j = 1;
        }
    }

    @Override
    public void update(byte b10) {
        j();
        this.f33408h.update(b10);
    }

    public y(InterfaceC2392y interfaceC2392y) {
        this(z.f33418a, interfaceC2392y);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        j();
        this.f33408h.update(bArr, i10, i11);
    }

    public y(InterfaceC3894b interfaceC3894b) {
        this.f33407g = new x();
        this.f33410j = 0;
        this.f33409i = interfaceC3894b;
        this.f33408h = new Ii.S();
    }

    public y(InterfaceC3894b interfaceC3894b, InterfaceC2392y interfaceC2392y) {
        this.f33407g = new x();
        this.f33410j = 0;
        this.f33409i = interfaceC3894b;
        this.f33408h = interfaceC2392y;
    }
}
