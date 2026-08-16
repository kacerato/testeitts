package Vh;

import java.util.Enumeration;
import oh.AbstractC14536q;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14530n;
import oh.C14539s;
import oh.C14554z0;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class d extends AbstractC14545v {

    public AbstractC14536q f27023b;

    public C14539s f27024c;

    public C14530n f27025d;

    public d(E e10) {
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            M m10 = (M) J10.nextElement();
            int g10 = m10.g();
            if (g10 == 0) {
                this.f27023b = AbstractC14536q.G(m10, true);
            } else if (g10 == 1) {
                this.f27024c = C14539s.G(m10, true);
            } else {
                if (g10 != 2) {
                    throw new IllegalArgumentException("unknown tag number: " + m10.g());
                }
                this.f27025d = C14530n.K(m10, true);
            }
        }
    }

    public static d z(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        AbstractC14536q abstractC14536q = this.f27023b;
        if (abstractC14536q != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) abstractC14536q));
        }
        C14539s c14539s = this.f27024c;
        if (c14539s != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) c14539s));
        }
        C14530n c14530n = this.f27025d;
        if (c14530n != null) {
            c14518h.a(new K0(true, 2, (InterfaceC14516g) c14530n));
        }
        return new G0(c14518h);
    }

    public C14539s u() {
        return this.f27024c;
    }

    public C14530n v() {
        return this.f27025d;
    }

    public C14554z0 x() {
        AbstractC14536q abstractC14536q = this.f27023b;
        return (abstractC14536q == null || (abstractC14536q instanceof C14554z0)) ? (C14554z0) abstractC14536q : new C14554z0(this.f27023b.getString(), false);
    }

    public AbstractC14536q y() {
        return this.f27023b;
    }
}
