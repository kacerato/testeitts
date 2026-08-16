package Qh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class a extends AbstractC14545v {

    public C14539s f22338b;

    public AbstractC14551y f22339c;

    public a(E e10) {
        this.f22339c = (AbstractC14551y) e10.I(0);
        this.f22338b = (C14539s) e10.I(1);
    }

    public static a v(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f22339c);
        c14518h.a(this.f22338b);
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f22339c.H());
    }

    public int x() {
        return this.f22338b.O();
    }

    public a(byte[] bArr, int i10) {
        this.f22339c = new C0(org.bouncycastle.util.a.p(bArr));
        this.f22338b = new C14539s(i10);
    }
}
