package hi;

import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14522j;
import oh.C14538r0;
import oh.C14549x;
import oh.G0;

public class S extends AbstractC14545v {

    public static final int f90722f = 0;

    public static final int f90723g = 1;

    public static final int f90724h = 2;

    public C14522j f90725b;

    public C14549x f90726c;

    public C13486b f90727d;

    public AbstractC14508c f90728e;

    public S(int i10, C14549x c14549x, C13486b c13486b, byte[] bArr) {
        this.f90725b = new C14522j(i10);
        if (i10 == 2) {
            this.f90726c = c14549x;
        }
        this.f90727d = c13486b;
        this.f90728e = new C14538r0(bArr);
    }

    public static S w(Object obj) {
        if (obj instanceof S) {
            return (S) obj;
        }
        if (obj != null) {
            return new S(oh.E.G(obj));
        }
        return null;
    }

    public static S x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f90725b);
        C14549x c14549x = this.f90726c;
        if (c14549x != null) {
            c14518h.a(c14549x);
        }
        c14518h.a(this.f90727d);
        c14518h.a(this.f90728e);
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f90727d;
    }

    public C14522j v() {
        return this.f90725b;
    }

    public AbstractC14508c y() {
        return this.f90728e;
    }

    public C14549x z() {
        return this.f90726c;
    }

    public S(oh.E e10) {
        if (e10.size() > 4 || e10.size() < 3) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        int i10 = 0;
        this.f90725b = C14522j.F(e10.I(0));
        if (e10.size() == 4) {
            i10 = 1;
            this.f90726c = C14549x.K(e10.I(1));
        }
        this.f90727d = C13486b.v(e10.I(i10 + 1));
        this.f90728e = AbstractC14508c.H(e10.I(i10 + 2));
    }
}
