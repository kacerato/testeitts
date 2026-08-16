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

public class z extends AbstractC14545v {

    public final int f29639b;

    public final int f29640c;

    public final byte[] f29641d;

    public final byte[] f29642e;

    public final byte[] f29643f;

    public final byte[] f29644g;

    public final int f29645h;

    public final byte[] f29646i;

    public z(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.f29639b = 0;
        this.f29640c = i10;
        this.f29641d = org.bouncycastle.util.a.p(bArr);
        this.f29642e = org.bouncycastle.util.a.p(bArr2);
        this.f29643f = org.bouncycastle.util.a.p(bArr3);
        this.f29644g = org.bouncycastle.util.a.p(bArr4);
        this.f29646i = org.bouncycastle.util.a.p(bArr5);
        this.f29645h = -1;
    }

    public static z w(Object obj) {
        if (obj instanceof z) {
            return (z) obj;
        }
        if (obj != null) {
            return new z(E.G(obj));
        }
        return null;
    }

    public byte[] A() {
        return org.bouncycastle.util.a.p(this.f29642e);
    }

    public byte[] B() {
        return org.bouncycastle.util.a.p(this.f29641d);
    }

    public int C() {
        return this.f29639b;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(this.f29645h >= 0 ? new C14539s(1L) : new C14539s(0L));
        C14518h c14518h2 = new C14518h();
        c14518h2.a(new C14539s(this.f29640c));
        c14518h2.a(new C0(this.f29641d));
        c14518h2.a(new C0(this.f29642e));
        c14518h2.a(new C0(this.f29643f));
        c14518h2.a(new C0(this.f29644g));
        if (this.f29645h >= 0) {
            c14518h2.a(new K0(false, 0, (InterfaceC14516g) new C14539s(this.f29645h)));
        }
        c14518h.a(new G0(c14518h2));
        c14518h.a(new K0(true, 0, (InterfaceC14516g) new C0(this.f29646i)));
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f29646i);
    }

    public int v() {
        return this.f29640c;
    }

    public int x() {
        return this.f29645h;
    }

    public byte[] y() {
        return org.bouncycastle.util.a.p(this.f29643f);
    }

    public byte[] z() {
        return org.bouncycastle.util.a.p(this.f29644g);
    }

    public z(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, int i11) {
        this.f29639b = 1;
        this.f29640c = i10;
        this.f29641d = org.bouncycastle.util.a.p(bArr);
        this.f29642e = org.bouncycastle.util.a.p(bArr2);
        this.f29643f = org.bouncycastle.util.a.p(bArr3);
        this.f29644g = org.bouncycastle.util.a.p(bArr4);
        this.f29646i = org.bouncycastle.util.a.p(bArr5);
        this.f29645h = i11;
    }

    public z(E e10) {
        int i10;
        C14539s F10 = C14539s.F(e10.I(0));
        if (!F10.J(0) && !F10.J(1)) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        this.f29639b = F10.O();
        if (e10.size() != 2 && e10.size() != 3) {
            throw new IllegalArgumentException("key sequence wrong size");
        }
        E G10 = E.G(e10.I(1));
        this.f29640c = C14539s.F(G10.I(0)).O();
        this.f29641d = org.bouncycastle.util.a.p(AbstractC14551y.F(G10.I(1)).H());
        this.f29642e = org.bouncycastle.util.a.p(AbstractC14551y.F(G10.I(2)).H());
        this.f29643f = org.bouncycastle.util.a.p(AbstractC14551y.F(G10.I(3)).H());
        this.f29644g = org.bouncycastle.util.a.p(AbstractC14551y.F(G10.I(4)).H());
        if (G10.size() == 6) {
            M R10 = M.R(G10.I(5));
            if (R10.g() != 0) {
                throw new IllegalArgumentException("unknown tag in XMSSPrivateKey");
            }
            i10 = C14539s.G(R10, false).O();
        } else {
            if (G10.size() != 5) {
                throw new IllegalArgumentException("keySeq should be 5 or 6 in length");
            }
            i10 = -1;
        }
        this.f29645h = i10;
        if (e10.size() == 3) {
            this.f29646i = org.bouncycastle.util.a.p(AbstractC14551y.G(M.R(e10.I(2)), true).H());
        } else {
            this.f29646i = null;
        }
    }
}
