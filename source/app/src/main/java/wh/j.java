package wh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import uh.C15634z;

public class j extends AbstractC14545v {

    public final C15634z f127516b;

    public final AbstractC14551y f127517c;

    public j(E e10) {
        InterfaceC14516g I10;
        if (e10.size() == 1) {
            this.f127516b = null;
            I10 = e10.I(0);
        } else {
            if (e10.size() != 2) {
                throw new IllegalArgumentException("sequence wrong length for DhSigStatic");
            }
            this.f127516b = C15634z.u(e10.I(0));
            I10 = e10.I(1);
        }
        this.f127517c = AbstractC14551y.F(I10);
    }

    public static j v(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj != null) {
            return new j(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        C15634z c15634z = this.f127516b;
        if (c15634z != null) {
            c14518h.a(c15634z);
        }
        c14518h.a(this.f127517c);
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f127517c.H());
    }

    public C15634z x() {
        return this.f127516b;
    }

    public j(C15634z c15634z, byte[] bArr) {
        this.f127516b = c15634z;
        this.f127517c = new C0(org.bouncycastle.util.a.p(bArr));
    }

    public j(byte[] bArr) {
        this(null, bArr);
    }
}
