package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class q extends AbstractC14545v {

    public int f29607b;

    public byte[] f29608c;

    public byte[] f29609d;

    public byte[] f29610e;

    public r f29611f;

    public q(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.f29607b = i10;
        if (i10 != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.f29608c = bArr;
        this.f29609d = bArr2;
        this.f29610e = bArr3;
    }

    public static q v(Object obj) {
        if (obj instanceof q) {
            return (q) obj;
        }
        if (obj != null) {
            return new q(E.G(obj));
        }
        return null;
    }

    public byte[] A() {
        return this.f29608c;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C14539s(this.f29607b));
        c14518h.a(new C0(this.f29608c));
        c14518h.a(new C0(this.f29609d));
        c14518h.a(new C0(this.f29610e));
        return new G0(c14518h);
    }

    public byte[] u() {
        return this.f29610e;
    }

    public r x() {
        return this.f29611f;
    }

    public byte[] y() {
        return this.f29609d;
    }

    public int z() {
        return this.f29607b;
    }

    public q(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, r rVar) {
        this.f29607b = i10;
        if (i10 != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.f29608c = bArr;
        this.f29609d = bArr2;
        this.f29610e = bArr3;
        this.f29611f = rVar;
    }

    public q(E e10) {
        int O10 = C14539s.F(e10.I(0)).O();
        this.f29607b = O10;
        if (O10 != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.f29608c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(1)).H());
        this.f29609d = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(2)).H());
        this.f29611f = r.v(e10.I(3));
        this.f29610e = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(4)).H());
    }
}
