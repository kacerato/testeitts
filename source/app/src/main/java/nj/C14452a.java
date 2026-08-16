package nj;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class C14452a extends AbstractC14545v {

    public byte[] f98252b;

    public int f98253c;

    public C14452a(E e10) {
        this.f98252b = AbstractC14551y.F(e10.I(0)).H();
        this.f98253c = e10.size() == 2 ? C14539s.F(e10.I(1)).O() : 12;
    }

    public static C14452a v(Object obj) {
        if (obj instanceof C14452a) {
            return (C14452a) obj;
        }
        if (obj != null) {
            return new C14452a(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(new C0(this.f98252b));
        if (this.f98253c != 12) {
            c14518h.a(new C14539s(this.f98253c));
        }
        return new G0(c14518h);
    }

    public int u() {
        return this.f98253c;
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f98252b);
    }

    public C14452a(byte[] bArr, int i10) {
        this.f98252b = org.bouncycastle.util.a.p(bArr);
        this.f98253c = i10;
    }
}
