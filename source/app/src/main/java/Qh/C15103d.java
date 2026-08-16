package qh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class C15103d extends AbstractC14545v {

    public final C13486b f108141b;

    public final AbstractC14551y f108142c;

    public C15103d(C13486b c13486b, byte[] bArr) {
        this.f108141b = c13486b;
        this.f108142c = new C0(org.bouncycastle.util.a.p(bArr));
    }

    public static C15103d v(Object obj) {
        if (obj instanceof C15103d) {
            return (C15103d) obj;
        }
        if (obj != null) {
            return new C15103d(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f108141b);
        c14518h.a(this.f108142c);
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f108142c.H());
    }

    public C13486b x() {
        return this.f108141b;
    }

    public C15103d(E e10) {
        this.f108141b = C13486b.v(e10.I(0));
        this.f108142c = AbstractC14551y.F(e10.I(1));
    }
}
