package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class t extends AbstractC14545v {

    public int f29616b;

    public byte[] f29617c;

    public byte[] f29618d;

    public u f29619e;

    public t(int i10, byte[] bArr, byte[] bArr2) {
        this(i10, bArr, bArr2, null);
    }

    public static t u(Object obj) {
        if (obj instanceof t) {
            return (t) obj;
        }
        if (obj != null) {
            return new t(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C14539s(this.f29616b));
        c14518h.a(new C0(this.f29617c));
        c14518h.a(new C0(this.f29618d));
        u uVar = this.f29619e;
        if (uVar != null) {
            c14518h.a(new u(uVar.x(), this.f29619e.v()));
        }
        return new G0(c14518h);
    }

    public u v() {
        return this.f29619e;
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f29618d);
    }

    public byte[] y() {
        return org.bouncycastle.util.a.p(this.f29617c);
    }

    public int z() {
        return this.f29616b;
    }

    public t(int i10, byte[] bArr, byte[] bArr2, u uVar) {
        this.f29616b = i10;
        this.f29617c = bArr;
        this.f29618d = bArr2;
        this.f29619e = uVar;
    }

    public t(E e10) {
        int O10 = C14539s.F(e10.I(0)).O();
        this.f29616b = O10;
        if (O10 != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.f29617c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(1)).H());
        this.f29618d = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(2)).H());
        if (e10.size() == 4) {
            this.f29619e = u.u(e10.I(3));
        }
    }
}
