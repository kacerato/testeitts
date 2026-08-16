package hi;

import java.math.BigInteger;
import java.util.Enumeration;
import java.util.Vector;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class Q extends AbstractC14545v {

    public C13511x f90720b;

    public oh.E f90721c;

    public Q(C13511x c13511x, C14518h c14518h) {
        this.f90720b = c13511x;
        this.f90721c = new G0(c14518h);
    }

    public static C14518h u(Vector vector) {
        C14539s c14539s;
        C14518h c14518h = new C14518h(vector.size());
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            Object nextElement = elements.nextElement();
            if (nextElement instanceof BigInteger) {
                c14539s = new C14539s((BigInteger) nextElement);
            } else {
                if (!(nextElement instanceof Integer)) {
                    throw new IllegalArgumentException();
                }
                c14539s = new C14539s(((Integer) nextElement).intValue());
            }
            c14518h.a(c14539s);
        }
        return c14518h;
    }

    public static Q v(Object obj) {
        if (obj instanceof Q) {
            return (Q) obj;
        }
        if (obj != null) {
            return new Q(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f90720b);
        c14518h.a(this.f90721c);
        return new G0(c14518h);
    }

    public C14539s[] x() {
        C14539s[] c14539sArr = new C14539s[this.f90721c.size()];
        for (int i10 = 0; i10 != this.f90721c.size(); i10++) {
            c14539sArr[i10] = C14539s.F(this.f90721c.I(i10));
        }
        return c14539sArr;
    }

    public C13511x y() {
        return this.f90720b;
    }

    public Q(String str, Vector vector) {
        this(str, u(vector));
    }

    public Q(String str, C14518h c14518h) {
        this(new C13511x(str), c14518h);
    }

    public Q(oh.E e10) {
        if (e10.size() == 2) {
            this.f90720b = C13511x.u(e10.I(0));
            this.f90721c = oh.E.G(e10.I(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
