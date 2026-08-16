package ki;

import java.math.BigInteger;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14538r0;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.M;

public class h extends AbstractC14545v {

    public AbstractC14508c f95247b;

    public C14539s f95248c;

    public h(E e10) {
        if (e10.size() == 2) {
            this.f95247b = AbstractC14508c.H(e10.I(0));
            this.f95248c = C14539s.F(e10.I(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }

    public static h u(Object obj) {
        if (obj instanceof h) {
            return (h) obj;
        }
        if (obj != null) {
            return new h(E.G(obj));
        }
        return null;
    }

    public static h v(M m10, boolean z10) {
        return u(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f95247b);
        c14518h.a(this.f95248c);
        return new G0(c14518h);
    }

    public BigInteger x() {
        return this.f95248c.H();
    }

    public byte[] y() {
        return this.f95247b.F();
    }

    public h(C14538r0 c14538r0, C14539s c14539s) {
        if (c14538r0 == null) {
            throw new IllegalArgumentException("'seed' cannot be null");
        }
        if (c14539s == null) {
            throw new IllegalArgumentException("'pgenCounter' cannot be null");
        }
        this.f95247b = c14538r0;
        this.f95248c = c14539s;
    }

    public h(byte[] bArr, int i10) {
        if (bArr == null) {
            throw new IllegalArgumentException("'seed' cannot be null");
        }
        this.f95247b = new C14538r0(bArr);
        this.f95248c = new C14539s(i10);
    }
}
