package ci;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class C4197h extends AbstractC14545v {

    public C13486b f34846b;

    public byte[] f34847c;

    public C4197h(C13486b c13486b, byte[] bArr) {
        this.f34846b = c13486b;
        this.f34847c = org.bouncycastle.util.a.p(bArr);
    }

    public static C4197h w(Object obj) {
        if (obj instanceof C4197h) {
            return (C4197h) obj;
        }
        if (obj != null) {
            return new C4197h(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f34846b);
        c14518h.a(new C0(this.f34847c));
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f34846b;
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f34847c);
    }

    public C4197h(E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("sequence has wrong number of elements");
        }
        this.f34846b = C13486b.v(e10.I(0));
        this.f34847c = AbstractC14551y.F(e10.I(1)).H();
    }
}
