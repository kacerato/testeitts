package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class f extends AbstractC14545v {

    public C14539s f29499b;

    public byte[] f29500c;

    public f(E e10) {
        if (e10.size() == 2) {
            this.f29499b = C14539s.F(e10.I(0));
            this.f29500c = AbstractC14551y.F(e10.I(1)).H();
        } else {
            throw new IllegalArgumentException("size of seq = " + e10.size());
        }
    }

    public static f u(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(this.f29499b);
        c14518h.a(new C0(this.f29500c));
        return new G0(c14518h);
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f29500c);
    }

    public f(byte[] bArr) {
        this.f29499b = new C14539s(0L);
        this.f29500c = bArr;
    }
}
