package hi;

import java.util.Enumeration;
import java.util.Vector;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;

public class f0 extends AbstractC14545v {

    public Vector f90791b = new Vector();

    public f0(Vector vector) {
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            this.f90791b.addElement(elements.nextElement());
        }
    }

    public static f0 v(Object obj) {
        if (obj instanceof f0) {
            return (f0) obj;
        }
        if (obj != null) {
            return new f0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(this.f90791b.size());
        Enumeration elements = this.f90791b.elements();
        while (elements.hasMoreElements()) {
            c14518h.a((C13495g) elements.nextElement());
        }
        return new G0(c14518h);
    }

    public Vector u() {
        return this.f90791b;
    }

    public f0(oh.E e10) {
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            this.f90791b.addElement(C13495g.y(oh.E.G(J10.nextElement())));
        }
    }
}
