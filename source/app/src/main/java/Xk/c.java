package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class c extends AbstractC14545v {

    public int f29492b;

    public byte[] f29493c;

    public byte[] f29494d;

    public byte[] f29495e;

    public d f29496f;

    public c(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this(i10, bArr, bArr2, bArr3, null);
    }

    public static c w(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj != null) {
            return new c(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C14539s(this.f29492b));
        c14518h.a(new C0(this.f29493c));
        c14518h.a(new C0(this.f29494d));
        c14518h.a(new C0(this.f29495e));
        d dVar = this.f29496f;
        if (dVar != null) {
            c14518h.a(new d(dVar.u()));
        }
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f29495e);
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f29494d);
    }

    public d x() {
        return this.f29496f;
    }

    public int y() {
        return this.f29492b;
    }

    public byte[] z() {
        return org.bouncycastle.util.a.p(this.f29493c);
    }

    public c(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, d dVar) {
        this.f29492b = i10;
        this.f29493c = bArr;
        this.f29494d = bArr2;
        this.f29495e = bArr3;
        this.f29496f = dVar;
    }

    public c(E e10) {
        int O10 = C14539s.F(e10.I(0)).O();
        this.f29492b = O10;
        if (O10 != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.f29493c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(1)).H());
        this.f29494d = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(2)).H());
        this.f29495e = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(3)).H());
        if (e10.size() == 5) {
            this.f29496f = d.v(e10.I(4));
        }
    }
}
