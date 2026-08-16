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

public class o extends AbstractC14545v {

    public C13486b f27063b;

    public C14538r0 f27064c;

    public E f27065d;

    public o(C13486b c13486b, C14538r0 c14538r0) {
        this.f27063b = c13486b;
        this.f27064c = c14538r0;
    }

    public static o v(Object obj) {
        if (obj instanceof o) {
            return (o) obj;
        }
        if (obj != null) {
            return new o(E.G(obj));
        }
        return null;
    }

    public static o w(M m10, boolean z10) {
        return v(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f27063b);
        c14518h.a(this.f27064c);
        E e10 = this.f27065d;
        if (e10 != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) e10));
        }
        return new G0(c14518h);
    }

    public E u() {
        return this.f27065d;
    }

    public C14538r0 x() {
        return this.f27064c;
    }

    public C13486b y() {
        return this.f27063b;
    }

    public o(C13486b c13486b, C14538r0 c14538r0, E e10) {
        this.f27063b = c13486b;
        this.f27064c = c14538r0;
        this.f27065d = e10;
    }

    public o(E e10) {
        this.f27063b = C13486b.v(e10.I(0));
        this.f27064c = (C14538r0) e10.I(1);
        if (e10.size() == 3) {
            this.f27065d = E.H((M) e10.I(2), true);
        }
    }
}
