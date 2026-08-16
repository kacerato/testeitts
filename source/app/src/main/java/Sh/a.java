package Sh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class a extends AbstractC14545v {

    public static final byte[] f23297d = new byte[0];

    public static final int f23298e = 256;

    public final int f23299b;

    public final byte[] f23300c;

    public a(int i10) {
        this.f23299b = i10;
        this.f23300c = f23297d;
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
        C14518h c14518h = new C14518h();
        if (this.f23299b != 256) {
            c14518h.a(new C14539s(this.f23299b));
        }
        if (this.f23300c.length != 0) {
            c14518h.a(new C0(u()));
        }
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f23300c);
    }

    public int x() {
        return this.f23299b;
    }

    public a(int i10, byte[] bArr) {
        this.f23299b = i10;
        this.f23300c = org.bouncycastle.util.a.p(bArr);
    }

    public a(E e10) {
        if (e10.size() > 2) {
            throw new IllegalArgumentException("sequence size greater than 2");
        }
        if (e10.size() == 2) {
            this.f23299b = C14539s.F(e10.I(0)).O();
            this.f23300c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(1)).H());
        } else if (e10.size() != 1) {
            this.f23299b = 256;
            this.f23300c = f23297d;
        } else if (e10.I(0) instanceof C14539s) {
            this.f23299b = C14539s.F(e10.I(0)).O();
            this.f23300c = f23297d;
        } else {
            this.f23299b = 256;
            this.f23300c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(0)).H());
        }
    }
}
