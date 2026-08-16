package Vh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14538r0;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class a extends AbstractC14545v {

    public l f27013b;

    public C13486b f27014c;

    public C14538r0 f27015d;

    public E f27016e;

    public a(l lVar, C13486b c13486b, C14538r0 c14538r0, E e10) {
        this.f27013b = lVar;
        this.f27014c = c13486b;
        this.f27015d = c14538r0;
        this.f27016e = e10;
    }

    public static a v(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(E.G(obj));
        }
        return null;
    }

    public static a w(M m10, boolean z10) {
        return v(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f27013b);
        c14518h.a(this.f27014c);
        c14518h.a(this.f27015d);
        E e10 = this.f27016e;
        if (e10 != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) e10));
        }
        return new G0(c14518h);
    }

    public E u() {
        return this.f27016e;
    }

    public C14538r0 x() {
        return this.f27015d;
    }

    public C13486b y() {
        return this.f27014c;
    }

    public l z() {
        return this.f27013b;
    }

    public a(E e10) {
        this.f27013b = l.u(e10.I(0));
        this.f27014c = C13486b.v(e10.I(1));
        this.f27015d = (C14538r0) e10.I(2);
        if (e10.size() > 3) {
            this.f27016e = E.H((M) e10.I(3), true);
        }
    }
}
