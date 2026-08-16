package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class x extends AbstractC14545v {

    public final int f29629b;

    public final long f29630c;

    public final long f29631d;

    public final byte[] f29632e;

    public final byte[] f29633f;

    public final byte[] f29634g;

    public final byte[] f29635h;

    public final byte[] f29636i;

    public x(long j10, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.f29629b = 0;
        this.f29630c = j10;
        this.f29632e = org.bouncycastle.util.a.p(bArr);
        this.f29633f = org.bouncycastle.util.a.p(bArr2);
        this.f29634g = org.bouncycastle.util.a.p(bArr3);
        this.f29635h = org.bouncycastle.util.a.p(bArr4);
        this.f29636i = org.bouncycastle.util.a.p(bArr5);
        this.f29631d = -1L;
    }

    public static x w(Object obj) {
        if (obj instanceof x) {
            return (x) obj;
        }
        if (obj != null) {
            return new x(E.G(obj));
        }
        return null;
    }

    public byte[] A() {
        return org.bouncycastle.util.a.p(this.f29633f);
    }

    public byte[] B() {
        return org.bouncycastle.util.a.p(this.f29632e);
    }

    public int C() {
        return this.f29629b;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(this.f29631d >= 0 ? new C14539s(1L) : new C14539s(0L));
        C14518h c14518h2 = new C14518h();
        c14518h2.a(new C14539s(this.f29630c));
        c14518h2.a(new C0(this.f29632e));
        c14518h2.a(new C0(this.f29633f));
        c14518h2.a(new C0(this.f29634g));
        c14518h2.a(new C0(this.f29635h));
        if (this.f29631d >= 0) {
            c14518h2.a(new K0(false, 0, (InterfaceC14516g) new C14539s(this.f29631d)));
        }
        c14518h.a(new G0(c14518h2));
        c14518h.a(new K0(true, 0, (InterfaceC14516g) new C0(this.f29636i)));
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f29636i);
    }

    public long v() {
        return this.f29630c;
    }

    public long x() {
        return this.f29631d;
    }

    public byte[] y() {
        return org.bouncycastle.util.a.p(this.f29634g);
    }

    public byte[] z() {
        return org.bouncycastle.util.a.p(this.f29635h);
    }

    public x(long j10, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, long j11) {
        this.f29629b = 1;
        this.f29630c = j10;
        this.f29632e = org.bouncycastle.util.a.p(bArr);
        this.f29633f = org.bouncycastle.util.a.p(bArr2);
        this.f29634g = org.bouncycastle.util.a.p(bArr3);
        this.f29635h = org.bouncycastle.util.a.p(bArr4);
        this.f29636i = org.bouncycastle.util.a.p(bArr5);
        this.f29631d = j11;
    }

    public x(E e10) {
        long j10;
        C14539s F10 = C14539s.F(e10.I(0));
        if (!F10.J(0) && !F10.J(1)) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        this.f29629b = F10.O();
        if (e10.size() != 2 && e10.size() != 3) {
            throw new IllegalArgumentException("key sequence wrong size");
        }
        E G10 = E.G(e10.I(1));
        this.f29630c = C14539s.F(G10.I(0)).R();
        this.f29632e = org.bouncycastle.util.a.p(AbstractC14551y.F(G10.I(1)).H());
        this.f29633f = org.bouncycastle.util.a.p(AbstractC14551y.F(G10.I(2)).H());
        this.f29634g = org.bouncycastle.util.a.p(AbstractC14551y.F(G10.I(3)).H());
        this.f29635h = org.bouncycastle.util.a.p(AbstractC14551y.F(G10.I(4)).H());
        if (G10.size() == 6) {
            M R10 = M.R(G10.I(5));
            if (R10.g() != 0) {
                throw new IllegalArgumentException("unknown tag in XMSSPrivateKey");
            }
            j10 = C14539s.G(R10, false).R();
        } else {
            if (G10.size() != 5) {
                throw new IllegalArgumentException("keySeq should be 5 or 6 in length");
            }
            j10 = -1;
        }
        this.f29631d = j10;
        if (e10.size() == 3) {
            this.f29636i = org.bouncycastle.util.a.p(AbstractC14551y.G(M.R(e10.I(2)), true).H());
        } else {
            this.f29636i = null;
        }
    }
}
