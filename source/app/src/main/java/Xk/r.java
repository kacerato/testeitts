package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class r extends AbstractC14545v {

    public byte[] f29612b;

    public byte[] f29613c;

    public r(E e10) {
        this.f29612b = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(0)).H());
        this.f29613c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(1)).H());
    }

    public static r v(Object obj) {
        if (obj instanceof r) {
            return (r) obj;
        }
        if (obj != null) {
            return new r(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C0(this.f29612b));
        c14518h.a(new C0(this.f29613c));
        return new G0(c14518h);
    }

    public byte[] u() {
        return this.f29613c;
    }

    public byte[] x() {
        return this.f29612b;
    }

    public r(byte[] bArr, byte[] bArr2) {
        this.f29612b = bArr;
        this.f29613c = bArr2;
    }
}
