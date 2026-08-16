package qh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class l extends AbstractC14545v {

    public final C13486b f108169b;

    public final Xh.m f108170c;

    public final AbstractC14551y f108171d;

    public l(C13486b c13486b, Xh.m mVar, byte[] bArr) {
        this.f108169b = c13486b;
        this.f108170c = mVar;
        this.f108171d = new C0(org.bouncycastle.util.a.p(bArr));
    }

    public static l u(Object obj) {
        if (obj instanceof l) {
            return (l) obj;
        }
        if (obj != null) {
            return new l(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f108169b);
        c14518h.a(this.f108170c);
        c14518h.a(this.f108171d);
        return new G0(c14518h);
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f108171d.H());
    }

    public C13486b x() {
        return this.f108169b;
    }

    public Xh.m y() {
        return this.f108170c;
    }

    public l(E e10) {
        this.f108169b = C13486b.v(e10.I(0));
        this.f108170c = Xh.m.v(e10.I(1));
        this.f108171d = AbstractC14551y.F(e10.I(2));
    }
}
