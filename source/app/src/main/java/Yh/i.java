package yh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;

public class i extends AbstractC14545v {

    public final C14549x f130329b;

    public final byte[] f130330c;

    public i(C14549x c14549x) {
        this(c14549x, null);
    }

    public static i v(Object obj) {
        if (obj instanceof i) {
            return (i) obj;
        }
        if (obj != null) {
            return new i(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f130329b);
        if (this.f130330c != null) {
            c14518h.a(new C0(this.f130330c));
        }
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f130329b;
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f130330c);
    }

    public i(C14549x c14549x, byte[] bArr) {
        this.f130329b = c14549x;
        this.f130330c = org.bouncycastle.util.a.p(bArr);
    }

    public i(E e10) {
        if (e10.size() == 2) {
            this.f130329b = C14549x.K(e10.I(0));
            this.f130330c = AbstractC14551y.F(e10.I(1)).H();
        } else if (e10.size() == 1) {
            this.f130329b = C14549x.K(e10.I(0));
            this.f130330c = null;
        } else {
            throw new IllegalArgumentException("unknown sequence length: " + e10.size());
        }
    }
}
