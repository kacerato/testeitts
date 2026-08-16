package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class d extends AbstractC14545v {

    public byte[] f29497b;

    public d(E e10) {
        this.f29497b = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(0)).H());
    }

    public static d v(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C0(this.f29497b));
        return new G0(c14518h);
    }

    public byte[] u() {
        return this.f29497b;
    }

    public d(byte[] bArr) {
        this.f29497b = bArr;
    }
}
