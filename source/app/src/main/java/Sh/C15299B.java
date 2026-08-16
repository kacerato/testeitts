package sh;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.M;

public class C15299B extends AbstractC14545v {

    public static final I[] f109471e = new I[0];

    public static final y[] f109472f = new y[0];

    public final oh.E f109473b;

    public final oh.E f109474c;

    public final oh.E f109475d;

    public C15299B(oh.E e10) {
        if (e10.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f109473b = oh.E.G(e10.I(0));
        this.f109474c = oh.E.G(e10.I(1));
        this.f109475d = oh.E.G(e10.I(2));
    }

    public static C15299B w(Object obj) {
        if (obj instanceof C15299B) {
            return (C15299B) obj;
        }
        if (obj != null) {
            return new C15299B(oh.E.G(obj));
        }
        return null;
    }

    public static C15299B x(M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f109473b);
        c14518h.a(this.f109474c);
        c14518h.a(this.f109475d);
        return new G0(c14518h);
    }

    public oh.E u() {
        return this.f109474c;
    }

    public oh.E v() {
        return this.f109473b;
    }

    public oh.E y() {
        return this.f109475d;
    }

    public C15299B(G g10) {
        this.f109473b = new G0(g10);
        this.f109474c = new G0();
        this.f109475d = new G0();
    }

    public C15299B(G[] gArr, I[] iArr, y[] yVarArr) {
        this.f109473b = new G0(gArr);
        this.f109474c = new G0(iArr);
        this.f109475d = new G0(yVarArr);
    }
}
