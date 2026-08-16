package sh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.G0;

public class v extends AbstractC14545v {

    public final C13486b f109622b;

    public final C13486b f109623c;

    public final byte[] f109624d;

    public v(C13486b c13486b, C13486b c13486b2, byte[] bArr) {
        this.f109622b = c13486b;
        this.f109623c = c13486b2;
        this.f109624d = org.bouncycastle.util.a.p(bArr);
    }

    public static v u(Object obj) {
        if (obj instanceof v) {
            return (v) obj;
        }
        if (obj != null) {
            return new v(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f109622b);
        c14518h.a(this.f109623c);
        c14518h.a(new C0(y()));
        return new G0(c14518h);
    }

    public C13486b v() {
        return this.f109623c;
    }

    public C13486b x() {
        return this.f109622b;
    }

    public byte[] y() {
        return org.bouncycastle.util.a.p(this.f109624d);
    }

    public v(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109622b = C13486b.v(e10.I(0));
        this.f109623c = C13486b.v(e10.I(1));
        this.f109624d = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(2)).H());
    }
}
