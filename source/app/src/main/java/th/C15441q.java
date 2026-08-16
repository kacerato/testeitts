package th;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;

public class C15441q extends AbstractC14545v {

    public final L f117626b;

    public C14539s f117627c;

    public F f117628d;

    public C15441q(oh.E e10) {
        Enumeration J10 = e10.J();
        this.f117626b = L.v(J10.nextElement());
        while (J10.hasMoreElements()) {
            Object nextElement = J10.nextElement();
            if (nextElement instanceof C14539s) {
                this.f117627c = C14539s.F(nextElement);
            } else {
                this.f117628d = F.u(nextElement);
            }
        }
    }

    private void u(C14518h c14518h, InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g != null) {
            c14518h.a(interfaceC14516g);
        }
    }

    public static C15441q y(Object obj) {
        if (obj instanceof C15441q) {
            return (C15441q) obj;
        }
        if (obj != null) {
            return new C15441q(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f117626b);
        u(c14518h, this.f117627c);
        u(c14518h, this.f117628d);
        return new G0(c14518h);
    }

    public C14539s v() {
        return this.f117627c;
    }

    public F x() {
        return this.f117628d;
    }

    public L z() {
        return this.f117626b;
    }

    public C15441q(L l10) {
        this(l10, null, null);
    }

    public C15441q(L l10, C14539s c14539s, F f10) {
        if (l10 == null) {
            throw new IllegalArgumentException("'pkiStatusInfo' cannot be null");
        }
        this.f117626b = l10;
        this.f117627c = c14539s;
        this.f117628d = f10;
    }
}
