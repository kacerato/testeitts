package hi;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14530n;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class C13485a0 extends AbstractC14545v {

    public C14530n f90757b;

    public C14530n f90758c;

    public C13485a0(oh.E e10) {
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            oh.M m10 = (oh.M) J10.nextElement();
            if (m10.g() == 0) {
                this.f90757b = C14530n.K(m10, false);
            } else if (m10.g() == 1) {
                this.f90758c = C14530n.K(m10, false);
            }
        }
    }

    public static C13485a0 u(Object obj) {
        if (obj instanceof C13485a0) {
            return (C13485a0) obj;
        }
        if (obj != null) {
            return new C13485a0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        C14530n c14530n = this.f90757b;
        if (c14530n != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) c14530n));
        }
        C14530n c14530n2 = this.f90758c;
        if (c14530n2 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c14530n2));
        }
        return new G0(c14518h);
    }

    public C14530n v() {
        return this.f90758c;
    }

    public C14530n x() {
        return this.f90757b;
    }
}
