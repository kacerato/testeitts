package uh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class C15632x extends AbstractC14545v {

    public byte[] f120755b;

    public int f120756c;

    public C15632x(oh.E e10) {
        this.f120755b = AbstractC14551y.F(e10.I(0)).H();
        this.f120756c = e10.size() == 2 ? C14539s.F(e10.I(1)).O() : 12;
    }

    public static C15632x v(Object obj) {
        if (obj instanceof C15632x) {
            return (C15632x) obj;
        }
        if (obj != null) {
            return new C15632x(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(new C0(this.f120755b));
        if (this.f120756c != 12) {
            c14518h.a(new C14539s(this.f120756c));
        }
        return new G0(c14518h);
    }

    public int u() {
        return this.f120756c;
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f120755b);
    }

    public C15632x(byte[] bArr, int i10) {
        this.f120755b = org.bouncycastle.util.a.p(bArr);
        this.f120756c = i10;
    }
}
