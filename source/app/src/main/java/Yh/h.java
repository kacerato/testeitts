package yh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class h extends AbstractC14545v {

    public final byte[] f130326b;

    public final byte[] f130327c;

    public final byte[] f130328d;

    public h(E e10) {
        if (e10.size() == 2) {
            this.f130326b = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(0)).H());
            this.f130328d = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(1)).H());
            this.f130327c = null;
        } else if (e10.size() == 3) {
            this.f130326b = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(0)).H());
            this.f130327c = org.bouncycastle.util.a.p(AbstractC14551y.G(M.R(e10.I(1)), false).H());
            this.f130328d = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(2)).H());
        } else {
            throw new IllegalArgumentException("unknown sequence length: " + e10.size());
        }
    }

    public static h v(Object obj) {
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
        C14518h c14518h = new C14518h(3);
        c14518h.a(new C0(this.f130326b));
        if (this.f130327c != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) new C0(this.f130326b)));
        }
        c14518h.a(new C0(this.f130328d));
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f130326b);
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f130328d);
    }

    public byte[] y() {
        return org.bouncycastle.util.a.p(this.f130327c);
    }

    public h(byte[] bArr, byte[] bArr2) {
        this(bArr, null, bArr2);
    }

    public h(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.f130326b = org.bouncycastle.util.a.p(bArr);
        this.f130327c = org.bouncycastle.util.a.p(bArr2);
        this.f130328d = org.bouncycastle.util.a.p(bArr3);
    }
}
