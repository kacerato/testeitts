package Xh;

import fi.C13228d;
import hi.B0;
import hi.h0;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class f extends AbstractC14545v {

    public C14539s f28966b;

    public C13228d f28967c;

    public h0 f28968d;

    public G f28969e;

    public f(C13228d c13228d, h0 h0Var, G g10) {
        this.f28966b = new C14539s(0L);
        this.f28969e = null;
        if (c13228d == null || h0Var == null) {
            throw new IllegalArgumentException("Not all mandatory fields set in CertificationRequestInfo generator.");
        }
        A(g10);
        this.f28967c = c13228d;
        this.f28968d = h0Var;
        this.f28969e = g10;
    }

    public static void A(G g10) {
        if (g10 == null) {
            return;
        }
        Enumeration I10 = g10.I();
        while (I10.hasMoreElements()) {
            C3326a y10 = C3326a.y(I10.nextElement());
            if (y10.u().A(t.f29074Y1) && y10.v().size() != 1) {
                throw new IllegalArgumentException("challengePassword attribute must have one value");
            }
        }
    }

    public static f v(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f28966b);
        c14518h.a(this.f28967c);
        c14518h.a(this.f28968d);
        G g10 = this.f28969e;
        if (g10 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) g10));
        }
        return new G0(c14518h);
    }

    public G u() {
        return this.f28969e;
    }

    public C13228d x() {
        return this.f28967c;
    }

    public h0 y() {
        return this.f28968d;
    }

    public C14539s z() {
        return this.f28966b;
    }

    public f(B0 b02, h0 h0Var, G g10) {
        this(C13228d.x(b02.r()), h0Var, g10);
    }

    public f(oh.E e10) {
        this.f28966b = new C14539s(0L);
        this.f28969e = null;
        this.f28966b = (C14539s) e10.I(0);
        this.f28967c = C13228d.x(e10.I(1));
        this.f28968d = h0.w(e10.I(2));
        if (e10.size() > 3) {
            this.f28969e = G.G((M) e10.I(3), false);
        }
        A(this.f28969e);
        if (this.f28967c == null || this.f28966b == null || this.f28968d == null) {
            throw new IllegalArgumentException("Not all mandatory fields set in CertificationRequestInfo generator.");
        }
    }
}
