package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class g extends AbstractC14545v {

    public int f29501b;

    public byte[] f29502c;

    public h f29503d;

    public byte[] f29504e;

    public byte[] f29505f;

    public g(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this(i10, bArr, bArr2, bArr3, null);
    }

    public static g v(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj != null) {
            return new g(E.G(obj));
        }
        return null;
    }

    public int A() {
        return this.f29501b;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C14539s(this.f29501b));
        c14518h.a(new C0(this.f29502c));
        h hVar = this.f29503d;
        if (hVar != null) {
            c14518h.a(new h(hVar.x(), this.f29503d.v()));
        }
        c14518h.a(new C0(this.f29504e));
        c14518h.a(new C0(this.f29505f));
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f29504e);
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f29505f);
    }

    public h y() {
        return this.f29503d;
    }

    public byte[] z() {
        return org.bouncycastle.util.a.p(this.f29502c);
    }

    public g(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, h hVar) {
        this.f29501b = i10;
        this.f29502c = bArr;
        this.f29503d = hVar;
        this.f29504e = bArr2;
        this.f29505f = bArr3;
    }

    public g(E e10) {
        int i10 = 0;
        int O10 = C14539s.F(e10.I(0)).O();
        this.f29501b = O10;
        if (O10 != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.f29502c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(1)).H());
        if (e10.size() == 5) {
            this.f29503d = h.u(e10.I(2));
        } else {
            i10 = 1;
        }
        this.f29504e = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(3 - i10)).H());
        this.f29505f = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(4 - i10)).H());
    }
}
