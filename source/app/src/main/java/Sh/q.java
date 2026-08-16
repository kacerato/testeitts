package sh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.G0;
import uh.C15624o;

public class q extends AbstractC14545v {

    public final J f109608b;

    public final C15624o f109609c;

    public final C13486b f109610d;

    public final C13486b f109611e;

    public final byte[] f109612f;

    public q(oh.E e10) {
        if (e10.size() != 5) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109608b = J.u(e10.I(0));
        this.f109609c = C15624o.w(e10.I(1));
        this.f109610d = C13486b.v(e10.I(2));
        this.f109611e = C13486b.v(e10.I(3));
        this.f109612f = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(4)).H());
    }

    public static q v(Object obj) {
        if (obj instanceof q) {
            return (q) obj;
        }
        if (obj != null) {
            return new q(oh.E.G(obj));
        }
        return null;
    }

    public C13486b A() {
        return this.f109611e;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(5);
        c14518h.a(this.f109608b);
        c14518h.a(this.f109609c);
        c14518h.a(this.f109610d);
        c14518h.a(this.f109611e);
        c14518h.a(new C0(this.f109612f));
        return new G0(c14518h);
    }

    public C15624o u() {
        return this.f109609c;
    }

    public J x() {
        return this.f109608b;
    }

    public C13486b y() {
        return this.f109610d;
    }

    public byte[] z() {
        return org.bouncycastle.util.a.p(this.f109612f);
    }

    public q(J j10, C15624o c15624o, C13486b c13486b, C13486b c13486b2, byte[] bArr) {
        this.f109608b = j10;
        this.f109609c = c15624o;
        this.f109610d = c13486b;
        this.f109611e = c13486b2;
        this.f109612f = org.bouncycastle.util.a.p(bArr);
    }
}
