package Mh;

import fi.C13226b;
import java.util.Enumeration;
import oh.AbstractC14536q;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.C14554z0;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.J;
import oh.M;

public class f extends AbstractC14545v {

    public static final C14549x f15281e = new C14549x(((Object) Kh.a.f11393o) + ".1");

    public C14549x f15282b;

    public String f15283c;

    public C13226b f15284d;

    public f(C14549x c14549x, String str, C13226b c13226b) {
        this.f15282b = c14549x;
        this.f15283c = str;
        this.f15284d = c13226b;
    }

    public static f u(Object obj) {
        if (obj == null || (obj instanceof f)) {
            return (f) obj;
        }
        if (obj instanceof E) {
            return new f((E) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static f v(M m10, boolean z10) {
        return u(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        C14549x c14549x = this.f15282b;
        if (c14549x != null) {
            c14518h.a(c14549x);
        }
        if (this.f15283c != null) {
            c14518h.a(new C14554z0(this.f15283c, true));
        }
        C13226b c13226b = this.f15284d;
        if (c13226b != null) {
            c14518h.a(c13226b);
        }
        return new G0(c14518h);
    }

    public C14549x x() {
        return this.f15282b;
    }

    public C13226b y() {
        return this.f15284d;
    }

    public String z() {
        return this.f15283c;
    }

    public f(E e10) {
        if (e10.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        Enumeration J10 = e10.J();
        if (J10.hasMoreElements()) {
            InterfaceC14516g interfaceC14516g = (InterfaceC14516g) J10.nextElement();
            if (interfaceC14516g instanceof C14549x) {
                this.f15282b = (C14549x) interfaceC14516g;
            } else if (interfaceC14516g instanceof AbstractC14536q) {
                this.f15283c = AbstractC14536q.F(interfaceC14516g).getString();
            } else {
                if (!(interfaceC14516g instanceof J)) {
                    throw new IllegalArgumentException("Bad object encountered: " + ((Object) interfaceC14516g.getClass()));
                }
                this.f15284d = C13226b.u(interfaceC14516g);
            }
        }
        if (J10.hasMoreElements()) {
            InterfaceC14516g interfaceC14516g2 = (InterfaceC14516g) J10.nextElement();
            if (interfaceC14516g2 instanceof AbstractC14536q) {
                this.f15283c = AbstractC14536q.F(interfaceC14516g2).getString();
            } else {
                if (!(interfaceC14516g2 instanceof J)) {
                    throw new IllegalArgumentException("Bad object encountered: " + ((Object) interfaceC14516g2.getClass()));
                }
                this.f15284d = C13226b.u(interfaceC14516g2);
            }
        }
        if (J10.hasMoreElements()) {
            InterfaceC14516g interfaceC14516g3 = (InterfaceC14516g) J10.nextElement();
            if (interfaceC14516g3 instanceof J) {
                this.f15284d = C13226b.u(interfaceC14516g3);
                return;
            }
            throw new IllegalArgumentException("Bad object encountered: " + ((Object) interfaceC14516g3.getClass()));
        }
    }
}
