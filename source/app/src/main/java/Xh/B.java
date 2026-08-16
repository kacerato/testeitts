package Xh;

import hi.C13486b;
import java.math.BigInteger;
import oh.A0;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class B extends AbstractC14545v {

    public static final C13486b f28931f;

    public static final C13486b f28932g;

    public static final C14539s f28933h;

    public static final C14539s f28934i;

    public C13486b f28935b;

    public C13486b f28936c;

    public C14539s f28937d;

    public C14539s f28938e;

    static {
        C13486b c13486b = new C13486b(Bj.b.f1911i, A0.f98776c);
        f28931f = c13486b;
        f28932g = new C13486b(t.f29037O0, c13486b);
        f28933h = new C14539s(20L);
        f28934i = new C14539s(1L);
    }

    public B() {
        this.f28935b = f28931f;
        this.f28936c = f28932g;
        this.f28937d = f28933h;
        this.f28938e = f28934i;
    }

    public static B v(Object obj) {
        if (obj instanceof B) {
            return (B) obj;
        }
        if (obj != null) {
            return new B(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        if (!this.f28935b.equals(f28931f)) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) this.f28935b));
        }
        if (!this.f28936c.equals(f28932g)) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) this.f28936c));
        }
        if (!this.f28937d.A(f28933h)) {
            c14518h.a(new K0(true, 2, (InterfaceC14516g) this.f28937d));
        }
        if (!this.f28938e.A(f28934i)) {
            c14518h.a(new K0(true, 3, (InterfaceC14516g) this.f28938e));
        }
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f28935b;
    }

    public C13486b x() {
        return this.f28936c;
    }

    public BigInteger y() {
        return this.f28937d.I();
    }

    public BigInteger z() {
        return this.f28938e.I();
    }

    public B(C13486b c13486b, C13486b c13486b2, C14539s c14539s, C14539s c14539s2) {
        this.f28935b = c13486b;
        this.f28936c = c13486b2;
        this.f28937d = c14539s;
        this.f28938e = c14539s2;
    }

    public B(oh.E e10) {
        this.f28935b = f28931f;
        this.f28936c = f28932g;
        this.f28937d = f28933h;
        this.f28938e = f28934i;
        for (int i10 = 0; i10 != e10.size(); i10++) {
            M m10 = (M) e10.I(i10);
            int g10 = m10.g();
            if (g10 == 0) {
                this.f28935b = C13486b.w(m10, true);
            } else if (g10 == 1) {
                this.f28936c = C13486b.w(m10, true);
            } else if (g10 == 2) {
                this.f28937d = C14539s.G(m10, true);
            } else {
                if (g10 != 3) {
                    throw new IllegalArgumentException("unknown tag");
                }
                this.f28938e = C14539s.G(m10, true);
            }
        }
    }
}
