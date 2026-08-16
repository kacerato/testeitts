package Sh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class b extends AbstractC14545v {

    public static final byte[] f23301d = new byte[0];

    public static final int f23302e = 512;

    public final int f23303b;

    public final byte[] f23304c;

    public b(int i10) {
        this.f23303b = i10;
        this.f23304c = f23301d;
    }

    public static b v(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        if (this.f23303b != 512) {
            c14518h.a(new C14539s(this.f23303b));
        }
        if (this.f23304c.length != 0) {
            c14518h.a(new C0(u()));
        }
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f23304c);
    }

    public int x() {
        return this.f23303b;
    }

    public b(int i10, byte[] bArr) {
        this.f23303b = i10;
        this.f23304c = org.bouncycastle.util.a.p(bArr);
    }

    public b(E e10) {
        if (e10.size() > 2) {
            throw new IllegalArgumentException("sequence size greater than 2");
        }
        if (e10.size() == 2) {
            this.f23303b = C14539s.F(e10.I(0)).O();
            this.f23304c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(1)).H());
        } else if (e10.size() != 1) {
            this.f23303b = 512;
            this.f23304c = f23301d;
        } else if (e10.I(0) instanceof C14539s) {
            this.f23303b = C14539s.F(e10.I(0)).O();
            this.f23304c = f23301d;
        } else {
            this.f23303b = 512;
            this.f23304c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(0)).H());
        }
    }
}
