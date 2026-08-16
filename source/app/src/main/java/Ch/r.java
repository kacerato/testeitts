package Ch;

import hi.C13511x;
import hi.Q;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.J;

public class r extends AbstractC14545v {

    public Q f4364b;

    public C13511x f4365c;

    public r(Q q10, C13511x c13511x) {
        this.f4364b = q10;
        this.f4365c = c13511x;
    }

    public static r v(Object obj) {
        if (obj instanceof r) {
            return (r) obj;
        }
        if (obj != null) {
            return new r(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        Q q10 = this.f4364b;
        if (q10 != null) {
            c14518h.a(q10);
        }
        C13511x c13511x = this.f4365c;
        if (c13511x != null) {
            c14518h.a(c13511x);
        }
        return new G0(c14518h);
    }

    public C13511x u() {
        return this.f4365c;
    }

    public Q x() {
        return this.f4364b;
    }

    public r(E e10) {
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            InterfaceC14516g interfaceC14516g = (InterfaceC14516g) J10.nextElement();
            if ((interfaceC14516g instanceof C13511x) || (interfaceC14516g instanceof J)) {
                this.f4365c = C13511x.u(interfaceC14516g);
            } else {
                if (!(interfaceC14516g instanceof Q) && !(interfaceC14516g instanceof E)) {
                    throw new IllegalArgumentException("Invalid element in 'SPUserNotice': " + interfaceC14516g.getClass().getName());
                }
                this.f4364b = Q.v(interfaceC14516g);
            }
        }
    }
}
