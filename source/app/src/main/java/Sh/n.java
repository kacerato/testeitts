package sh;

import fi.C13228d;
import hi.C13486b;
import java.io.IOException;
import java.math.BigInteger;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class n extends AbstractC14545v {

    public static final C14539s f109596e = new C14539s(0);

    public final b f109597b;

    public final C13486b f109598c;

    public final AbstractC14508c f109599d;

    public n(C13228d c13228d, C13486b c13486b, AbstractC14508c abstractC14508c, oh.G g10, C13486b c13486b2, AbstractC14508c abstractC14508c2) {
        this.f109597b = new b(c13228d, c13486b, abstractC14508c, g10);
        this.f109598c = c13486b2;
        this.f109599d = abstractC14508c2;
    }

    public static n w(Object obj) {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj != null) {
            return new n(oh.E.G(obj));
        }
        return null;
    }

    public AbstractC14508c A() {
        return AbstractC14508c.H(this.f109597b.A().I(1));
    }

    public C13486b B() {
        return C13486b.v(this.f109597b.A().I(0));
    }

    public BigInteger C() {
        return this.f109597b.B().I();
    }

    public oh.B D() throws IOException {
        return oh.B.B(A().J());
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f109597b);
        c14518h.a(this.f109598c);
        c14518h.a(this.f109599d);
        return new G0(c14518h);
    }

    public oh.G v() {
        return this.f109597b.y();
    }

    public AbstractC14508c x() {
        return this.f109599d;
    }

    public C13486b y() {
        return this.f109598c;
    }

    public C13228d z() {
        return this.f109597b.z();
    }

    public static class b extends AbstractC14545v {

        public final C14539s f109600b;

        public final C13228d f109601c;

        public final oh.E f109602d;

        public final oh.G f109603e;

        public b(C13228d c13228d, C13486b c13486b, AbstractC14508c abstractC14508c, oh.G g10) {
            this.f109600b = n.f109596e;
            this.f109601c = c13228d;
            this.f109602d = new G0(new InterfaceC14516g[]{c13486b, abstractC14508c});
            this.f109603e = g10;
        }

        public C14539s B() {
            return this.f109600b;
        }

        public oh.G y() {
            return this.f109603e;
        }

        public C13228d z() {
            return this.f109601c;
        }

        public final oh.E A() {
            return this.f109602d;
        }

        @Override
        public oh.B r() {
            C14518h c14518h = new C14518h(4);
            c14518h.a(this.f109600b);
            c14518h.a(this.f109601c);
            c14518h.a(this.f109602d);
            c14518h.a(new K0(false, 0, (InterfaceC14516g) this.f109603e));
            return new G0(c14518h);
        }

        public b(oh.E e10) {
            if (e10.size() != 4) {
                throw new IllegalArgumentException("incorrect sequence size for CertificationRequestInfo");
            }
            this.f109600b = C14539s.F(e10.I(0));
            this.f109601c = C13228d.x(e10.I(1));
            oh.E G10 = oh.E.G(e10.I(2));
            this.f109602d = G10;
            if (G10.size() != 2) {
                throw new IllegalArgumentException("incorrect subjectPublicKeyInfo size for CertificationRequestInfo");
            }
            M m10 = (M) e10.I(3);
            if (m10.g() != 0) {
                throw new IllegalArgumentException("incorrect tag number on attributes for CertificationRequestInfo");
            }
            this.f109603e = oh.G.G(m10, false);
        }
    }

    public n(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109597b = new b(oh.E.G(e10.I(0)));
        this.f109598c = C13486b.v(e10.I(1));
        this.f109599d = AbstractC14508c.H(e10.I(2));
    }
}
