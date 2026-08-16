package yh;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.M;

public class d extends AbstractC14545v {

    public AbstractC14551y f130311b;

    public C14549x f130312c;

    public d(E e10) {
        Enumeration J10 = e10.J();
        this.f130311b = (AbstractC14551y) J10.nextElement();
        this.f130312c = (C14549x) J10.nextElement();
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

    public static d x(M m10, boolean z10) {
        return w(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f130311b);
        c14518h.a(this.f130312c);
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f130312c;
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f130311b.H());
    }

    public d(byte[] bArr, C14549x c14549x) {
        this.f130311b = new C0(org.bouncycastle.util.a.p(bArr));
        this.f130312c = c14549x;
    }
}
