package sh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14530n;
import oh.G0;

public class C15300C extends AbstractC14545v {

    public final byte[] f109476b;

    public final C14530n f109477c;

    public C15300C(oh.E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109476b = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(0)).H());
        this.f109477c = C14530n.J(e10.I(1));
    }

    public static C15300C u(Object obj) {
        if (obj instanceof C15300C) {
            return (C15300C) obj;
        }
        if (obj != null) {
            return new C15300C(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(new C0(this.f109476b));
        c14518h.a(this.f109477c);
        return new G0(c14518h);
    }

    public C14530n v() {
        return this.f109477c;
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f109476b);
    }

    public C15300C(byte[] bArr, C14530n c14530n) {
        this.f109476b = org.bouncycastle.util.a.p(bArr);
        this.f109477c = c14530n;
    }
}
