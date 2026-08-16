package Dh;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.M0;
import oh.Q;

public class a extends AbstractC14545v {

    public Q f5175b;

    public C14549x f5176c;

    public a(C14549x c14549x) {
        this.f5176c = c14549x;
        this.f5175b = null;
    }

    public static a y(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        Q q10 = this.f5175b;
        if (q10 != null) {
            c14518h.a(q10);
        }
        c14518h.a(this.f5176c);
        return new G0(c14518h);
    }

    public M0 u() {
        Q q10 = this.f5175b;
        return (q10 == null || (q10 instanceof M0)) ? (M0) q10 : new M0(this.f5175b.getString());
    }

    public Q v() {
        return this.f5175b;
    }

    public C14549x x() {
        return this.f5176c;
    }

    public a(C14549x c14549x, Q q10) {
        this.f5176c = c14549x;
        this.f5175b = q10;
    }

    public a(E e10) {
        int i10 = 0;
        InterfaceC14516g I10 = e10.I(0);
        if (I10.r() instanceof Q) {
            this.f5175b = Q.F(I10);
            i10 = 1;
        }
        this.f5176c = C14549x.K(e10.I(i10));
    }
}
