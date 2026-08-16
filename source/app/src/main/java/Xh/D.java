package Xh;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14517g0;
import oh.C14518h;
import oh.C14539s;
import oh.G;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class D extends AbstractC14545v implements t {

    public C14539s f28942b;

    public G f28943c;

    public g f28944d;

    public G f28945e;

    public G f28946f;

    public G f28947g;

    public D(C14539s c14539s, G g10, g gVar, G g11, G g12, G g13) {
        this.f28942b = c14539s;
        this.f28943c = g10;
        this.f28944d = gVar;
        this.f28945e = g11;
        this.f28946f = g12;
        this.f28947g = g13;
    }

    public static D z(Object obj) {
        if (obj instanceof D) {
            return (D) obj;
        }
        if (obj != null) {
            return new D(oh.E.G(obj));
        }
        return null;
    }

    public G A() {
        return this.f28947g;
    }

    public C14539s B() {
        return this.f28942b;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(6);
        c14518h.a(this.f28942b);
        c14518h.a(this.f28943c);
        c14518h.a(this.f28944d);
        G g10 = this.f28945e;
        if (g10 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) g10));
        }
        G g11 = this.f28946f;
        if (g11 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) g11));
        }
        c14518h.a(this.f28947g);
        return new C14517g0(c14518h);
    }

    public G u() {
        return this.f28946f;
    }

    public G v() {
        return this.f28945e;
    }

    public g x() {
        return this.f28944d;
    }

    public G y() {
        return this.f28943c;
    }

    public D(oh.E e10) {
        Enumeration J10 = e10.J();
        this.f28942b = (C14539s) J10.nextElement();
        this.f28943c = (G) J10.nextElement();
        this.f28944d = g.w(J10.nextElement());
        while (J10.hasMoreElements()) {
            oh.B b10 = (oh.B) J10.nextElement();
            if (b10 instanceof M) {
                M m10 = (M) b10;
                int g10 = m10.g();
                if (g10 == 0) {
                    this.f28945e = G.G(m10, false);
                } else {
                    if (g10 != 1) {
                        throw new IllegalArgumentException("unknown tag value " + m10.g());
                    }
                    this.f28946f = G.G(m10, false);
                }
            } else {
                this.f28947g = (G) b10;
            }
        }
    }
}
