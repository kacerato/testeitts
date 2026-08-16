package Xh;

import hi.C13486b;
import oh.A0;
import oh.AbstractC14545v;
import oh.C0;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class x extends AbstractC14545v {

    public static final C13486b f29164e;

    public static final C13486b f29165f;

    public static final C13486b f29166g;

    public C13486b f29167b;

    public C13486b f29168c;

    public C13486b f29169d;

    static {
        C13486b c13486b = new C13486b(Bj.b.f1911i, A0.f98776c);
        f29164e = c13486b;
        f29165f = new C13486b(t.f29037O0, c13486b);
        f29166g = new C13486b(t.f29041P0, new C0(new byte[0]));
    }

    public x() {
        this.f29167b = f29164e;
        this.f29168c = f29165f;
        this.f29169d = f29166g;
    }

    public static x v(Object obj) {
        if (obj instanceof x) {
            return (x) obj;
        }
        if (obj != null) {
            return new x(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        if (!this.f29167b.equals(f29164e)) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) this.f29167b));
        }
        if (!this.f29168c.equals(f29165f)) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) this.f29168c));
        }
        if (!this.f29169d.equals(f29166g)) {
            c14518h.a(new K0(true, 2, (InterfaceC14516g) this.f29169d));
        }
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f29167b;
    }

    public C13486b x() {
        return this.f29168c;
    }

    public C13486b y() {
        return this.f29169d;
    }

    public x(C13486b c13486b, C13486b c13486b2, C13486b c13486b3) {
        this.f29167b = c13486b;
        this.f29168c = c13486b2;
        this.f29169d = c13486b3;
    }

    public x(oh.E e10) {
        this.f29167b = f29164e;
        this.f29168c = f29165f;
        this.f29169d = f29166g;
        for (int i10 = 0; i10 != e10.size(); i10++) {
            M m10 = (M) e10.I(i10);
            int g10 = m10.g();
            if (g10 == 0) {
                this.f29167b = C13486b.w(m10, true);
            } else if (g10 == 1) {
                this.f29168c = C13486b.w(m10, true);
            } else {
                if (g10 != 2) {
                    throw new IllegalArgumentException("unknown tag");
                }
                this.f29169d = C13486b.w(m10, true);
            }
        }
    }
}
