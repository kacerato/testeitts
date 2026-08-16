package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class u extends AbstractC14545v {

    public byte[] f29620b;

    public byte[] f29621c;

    public u(E e10) {
        this.f29620b = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(0)).H());
        this.f29621c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(1)).H());
    }

    public static u u(Object obj) {
        if (obj instanceof u) {
            return (u) obj;
        }
        if (obj != null) {
            return new u(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C0(this.f29620b));
        c14518h.a(new C0(this.f29621c));
        return new G0(c14518h);
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f29621c);
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f29620b);
    }

    public u(byte[] bArr, byte[] bArr2) {
        this.f29620b = bArr;
        this.f29621c = bArr2;
    }
}
