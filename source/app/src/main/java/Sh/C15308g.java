package sh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.G0;

public class C15308g extends AbstractC14545v {

    public final C13486b f109563b;

    public final oh.E f109564c;

    public final wh.p f109565d;

    public C15308g(C13486b c13486b, byte[][] bArr, wh.p pVar) {
        this.f109563b = c13486b;
        C14518h c14518h = new C14518h(bArr.length);
        for (int i10 = 0; i10 != bArr.length; i10++) {
            c14518h.a(new C0(org.bouncycastle.util.a.p(bArr[i10])));
        }
        this.f109564c = new G0(c14518h);
        this.f109565d = pVar;
    }

    public static C15308g w(Object obj) {
        if (obj instanceof C15308g) {
            return (C15308g) obj;
        }
        if (obj != null) {
            return new C15308g(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f109563b);
        c14518h.a(this.f109564c);
        c14518h.a(this.f109565d);
        return new G0(c14518h);
    }

    public byte[][] u() {
        int size = this.f109564c.size();
        byte[][] bArr = new byte[size];
        for (int i10 = 0; i10 != size; i10++) {
            bArr[i10] = org.bouncycastle.util.a.p(AbstractC14551y.F(this.f109564c.I(i10)).H());
        }
        return bArr;
    }

    public C13486b v() {
        return this.f109563b;
    }

    public wh.p x() {
        return this.f109565d;
    }

    public C15308g(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109563b = C13486b.v(e10.I(0));
        this.f109564c = oh.E.G(e10.I(1));
        this.f109565d = wh.p.v(e10.I(2));
    }
}
