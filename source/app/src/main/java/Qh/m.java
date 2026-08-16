package qh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;

public class m extends AbstractC14545v {

    public final C14549x f108172b;

    public final AbstractC14551y f108173c;

    public m(C14549x c14549x, byte[] bArr) {
        this.f108172b = c14549x;
        this.f108173c = new C0(org.bouncycastle.util.a.p(bArr));
    }

    public static m u(Object obj) {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj != null) {
            return new m(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f108172b);
        c14518h.a(this.f108173c);
        return new G0(c14518h);
    }

    public C14549x v() {
        return this.f108172b;
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f108173c.H());
    }

    public m(E e10) {
        this.f108172b = C14549x.K(e10.I(0));
        this.f108173c = AbstractC14551y.F(e10.I(1));
    }
}
