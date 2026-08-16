package yj;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class C16197b extends AbstractC14545v {

    public AbstractC14551y f130338b;

    public C16197b(E e10) {
        this.f130338b = e10.size() == 1 ? (AbstractC14551y) e10.I(0) : null;
    }

    public static C16197b v(Object obj) {
        if (obj instanceof C16197b) {
            return (C16197b) obj;
        }
        if (obj != null) {
            return new C16197b(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(1);
        AbstractC14551y abstractC14551y = this.f130338b;
        if (abstractC14551y != null) {
            c14518h.a(abstractC14551y);
        }
        return new G0(c14518h);
    }

    public byte[] u() {
        AbstractC14551y abstractC14551y = this.f130338b;
        if (abstractC14551y != null) {
            return org.bouncycastle.util.a.p(abstractC14551y.H());
        }
        return null;
    }

    public C16197b(byte[] bArr) {
        this.f130338b = new C0(org.bouncycastle.util.a.p(bArr));
    }
}
