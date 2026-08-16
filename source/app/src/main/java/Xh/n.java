package Xh;

import hi.C13510w;
import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class n extends AbstractC14545v {

    public static final BigInteger f28983e = BigInteger.valueOf(1);

    public C13510w f28984b;

    public byte[] f28985c;

    public BigInteger f28986d;

    public n(C13510w c13510w, byte[] bArr, int i10) {
        this.f28984b = c13510w;
        this.f28985c = org.bouncycastle.util.a.p(bArr);
        this.f28986d = BigInteger.valueOf(i10);
    }

    public static n u(Object obj) {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj != null) {
            return new n(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f28984b);
        c14518h.a(new C0(this.f28985c));
        if (!this.f28986d.equals(f28983e)) {
            c14518h.a(new C14539s(this.f28986d));
        }
        return new G0(c14518h);
    }

    public BigInteger v() {
        return this.f28986d;
    }

    public C13510w x() {
        return this.f28984b;
    }

    public byte[] y() {
        return org.bouncycastle.util.a.p(this.f28985c);
    }

    public n(oh.E e10) {
        this.f28984b = C13510w.w(e10.I(0));
        this.f28985c = org.bouncycastle.util.a.p(AbstractC14551y.F(e10.I(1)).H());
        this.f28986d = e10.size() == 3 ? C14539s.F(e10.I(2)).I() : f28983e;
    }
}
