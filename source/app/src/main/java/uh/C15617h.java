package uh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class C15617h extends AbstractC14545v {

    public byte[] f120680b;

    public int f120681c;

    public C15617h(oh.E e10) {
        this.f120680b = AbstractC14551y.F(e10.I(0)).H();
        this.f120681c = e10.size() == 2 ? C14539s.F(e10.I(1)).O() : 12;
    }

    public static C15617h v(Object obj) {
        if (obj instanceof C15617h) {
            return (C15617h) obj;
        }
        if (obj != null) {
            return new C15617h(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(new C0(this.f120680b));
        if (this.f120681c != 12) {
            c14518h.a(new C14539s(this.f120681c));
        }
        return new G0(c14518h);
    }

    public int u() {
        return this.f120681c;
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f120680b);
    }

    public C15617h(byte[] bArr, int i10) {
        this.f120680b = org.bouncycastle.util.a.p(bArr);
        this.f120681c = i10;
    }
}
