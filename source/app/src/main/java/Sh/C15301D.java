package sh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.G0;

public class C15301D extends AbstractC14545v {

    public final C13486b f109478b;

    public final C13486b f109479c;

    public final byte[] f109480d;

    public C15301D(C13486b c13486b, C13486b c13486b2, byte[] bArr) {
        this.f109478b = c13486b;
        this.f109479c = c13486b2;
        this.f109480d = org.bouncycastle.util.a.p(bArr);
    }

    public static C15301D u(Object obj) {
        if (obj instanceof C15301D) {
            return (C15301D) obj;
        }
        if (obj != null) {
            return new C15301D(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f109478b);
        c14518h.a(this.f109479c);
        c14518h.a(new C0(y()));
        return new G0(c14518h);
    }

    public C13486b v() {
        return this.f109478b;
    }

    public C13486b x() {
        return this.f109479c;
    }

    public byte[] y() {
        return org.bouncycastle.util.a.p(this.f109480d);
    }

    public C15301D(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109478b = C13486b.v(e10.I(0));
        this.f109479c = C13486b.v(e10.I(1));
        this.f109480d = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(2)).H());
    }
}
