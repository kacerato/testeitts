package yj;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class C16196a extends AbstractC14545v {

    public C14539s f130336b;

    public AbstractC14551y f130337c;

    public C16196a(E e10) {
        this.f130337c = (AbstractC14551y) e10.I(0);
        this.f130336b = (C14539s) e10.I(1);
    }

    public static C16196a v(Object obj) {
        if (obj instanceof C16196a) {
            return (C16196a) obj;
        }
        if (obj != null) {
            return new C16196a(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f130337c);
        c14518h.a(this.f130336b);
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f130337c.H());
    }

    public int x() {
        return this.f130336b.O();
    }

    public C16196a(byte[] bArr, int i10) {
        this.f130337c = new C0(org.bouncycastle.util.a.p(bArr));
        this.f130336b = new C14539s(i10);
    }
}
