package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class h extends AbstractC14545v {

    public byte[] f29506b;

    public byte[] f29507c;

    public h(E e10) {
        this.f29506b = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(0)).H());
        this.f29507c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(1)).H());
    }

    public static h u(Object obj) {
        if (obj instanceof h) {
            return (h) obj;
        }
        if (obj != null) {
            return new h(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C0(this.f29506b));
        c14518h.a(new C0(this.f29507c));
        return new G0(c14518h);
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f29507c);
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f29506b);
    }

    public h(byte[] bArr, byte[] bArr2) {
        this.f29506b = bArr;
        this.f29507c = bArr2;
    }
}
