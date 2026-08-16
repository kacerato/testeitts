package Dh;

import hi.K;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class c extends AbstractC14545v {

    public AbstractC14551y f5178b;

    public K f5179c;

    public c(E e10) {
        if (e10.size() < 1 || e10.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        this.f5178b = AbstractC14551y.F(e10.I(0));
        if (e10.size() > 1) {
            this.f5179c = K.u(e10.I(1));
        }
    }

    public static c v(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj != null) {
            return new c(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f5178b);
        K k10 = this.f5179c;
        if (k10 != null) {
            c14518h.a(k10);
        }
        return new G0(c14518h);
    }

    public byte[] u() {
        return this.f5178b.H();
    }

    public K x() {
        return this.f5179c;
    }

    public c(byte[] bArr) {
        this.f5178b = new C0(org.bouncycastle.util.a.p(bArr));
    }

    public c(byte[] bArr, K k10) {
        this.f5178b = new C0(org.bouncycastle.util.a.p(bArr));
        this.f5179c = k10;
    }
}
