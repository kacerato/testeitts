package Dh;

import hi.C13486b;
import hi.K;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;

public class d extends AbstractC14545v {

    public static final C13486b f5180e = new C13486b(Sh.d.f23337c);

    public C13486b f5181b;

    public byte[] f5182c;

    public K f5183d;

    public d(C13486b c13486b, byte[] bArr) {
        this(c13486b, bArr, null);
    }

    public static d w(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        if (!this.f5181b.equals(f5180e)) {
            c14518h.a(this.f5181b);
        }
        c14518h.a(new C0(this.f5182c).r());
        K k10 = this.f5183d;
        if (k10 != null) {
            c14518h.a(k10);
        }
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f5182c);
    }

    public C13486b v() {
        return this.f5181b;
    }

    public K x() {
        return this.f5183d;
    }

    public d(C13486b c13486b, byte[] bArr, K k10) {
        this.f5181b = c13486b == null ? f5180e : c13486b;
        this.f5182c = org.bouncycastle.util.a.p(bArr);
        this.f5183d = k10;
    }

    public d(E e10) {
        if (e10.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        int i10 = 0;
        if (e10.I(0) instanceof AbstractC14551y) {
            this.f5181b = f5180e;
        } else {
            this.f5181b = C13486b.v(e10.I(0).r());
            i10 = 1;
        }
        int i11 = i10 + 1;
        this.f5182c = AbstractC14551y.F(e10.I(i10).r()).H();
        if (e10.size() > i11) {
            this.f5183d = K.u(e10.I(i11));
        }
    }

    public d(byte[] bArr) {
        this(null, bArr, null);
    }

    public d(byte[] bArr, K k10) {
        this(null, bArr, k10);
    }
}
