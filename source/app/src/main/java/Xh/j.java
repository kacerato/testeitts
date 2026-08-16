package Xh;

import hi.C13486b;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.G0;

public class j extends AbstractC14545v {

    public C13486b f28977b;

    public AbstractC14551y f28978c;

    public j(C13486b c13486b, byte[] bArr) {
        this.f28977b = c13486b;
        this.f28978c = new C0(org.bouncycastle.util.a.p(bArr));
    }

    public static j w(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj != null) {
            return new j(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f28977b);
        c14518h.a(this.f28978c);
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f28978c.H());
    }

    public C13486b v() {
        return this.f28977b;
    }

    public j(oh.E e10) {
        Enumeration J10 = e10.J();
        this.f28977b = C13486b.v(J10.nextElement());
        this.f28978c = AbstractC14551y.F(J10.nextElement());
    }
}
