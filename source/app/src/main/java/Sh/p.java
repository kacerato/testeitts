package sh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.G0;

public class p extends AbstractC14545v {

    public final C15302a f109605b;

    public final C13486b f109606c;

    public final byte[] f109607d;

    public p(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109605b = C15302a.w(e10.I(0));
        this.f109606c = C13486b.v(e10.I(1));
        this.f109607d = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(2)).H());
    }

    public static p v(Object obj) {
        if (obj instanceof p) {
            return (p) obj;
        }
        if (obj != null) {
            return new p(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f109605b);
        c14518h.a(this.f109606c);
        c14518h.a(new C0(this.f109607d));
        return new G0(c14518h);
    }

    public C15302a u() {
        return this.f109605b;
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f109607d);
    }

    public C13486b y() {
        return this.f109606c;
    }

    public p(C15302a c15302a, C13486b c13486b, byte[] bArr) {
        this.f109605b = c15302a;
        this.f109606c = c13486b;
        this.f109607d = org.bouncycastle.util.a.p(bArr);
    }
}
