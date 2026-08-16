package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class b extends AbstractC14545v {

    public byte[] f29491b;

    public b(E e10) {
        this.f29491b = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(0)).H());
    }

    public static b u(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C0(this.f29491b));
        return new G0(c14518h);
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f29491b);
    }

    public b(byte[] bArr) {
        this.f29491b = bArr;
    }
}
