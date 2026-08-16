package hi;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14512e;
import oh.C14518h;
import oh.C14549x;
import oh.G0;

public class z0 extends AbstractC14545v {

    public Hashtable f91045b;

    public Vector f91046c;

    public static final C14549x f91022d = new C14549x("2.5.29.9");

    public static final C14549x f91023e = new C14549x("2.5.29.14");

    public static final C14549x f91024f = new C14549x("2.5.29.15");

    public static final C14549x f91025g = new C14549x("2.5.29.16");

    public static final C14549x f91026h = new C14549x("2.5.29.17");

    public static final C14549x f91027i = new C14549x("2.5.29.18");

    public static final C14549x f91028j = new C14549x("2.5.29.19");

    public static final C14549x f91029k = new C14549x("2.5.29.20");

    public static final C14549x f91030l = new C14549x("2.5.29.21");

    public static final C14549x f91031m = new C14549x("2.5.29.23");

    public static final C14549x f91032n = new C14549x("2.5.29.24");

    public static final C14549x f91033o = new C14549x("2.5.29.27");

    public static final C14549x f91034p = new C14549x("2.5.29.28");

    public static final C14549x f91035q = new C14549x("2.5.29.29");

    public static final C14549x f91036r = new C14549x("2.5.29.30");

    public static final C14549x f91037s = new C14549x("2.5.29.31");

    public static final C14549x f91038t = new C14549x("2.5.29.32");

    public static final C14549x f91039u = new C14549x("2.5.29.33");

    public static final C14549x f91040v = new C14549x("2.5.29.35");

    public static final C14549x f91041w = new C14549x("2.5.29.36");

    public static final C14549x f91042x = new C14549x("2.5.29.37");

    public static final C14549x f91043y = new C14549x("2.5.29.46");

    public static final C14549x f91044z = new C14549x("2.5.29.54");

    public static final C14549x f91014A = new C14549x("1.3.6.1.5.5.7.1.1");

    public static final C14549x f91015B = new C14549x("1.3.6.1.5.5.7.1.11");

    public static final C14549x f91016C = new C14549x("1.3.6.1.5.5.7.1.12");

    public static final C14549x f91017D = new C14549x("1.3.6.1.5.5.7.1.2");

    public static final C14549x f91018E = new C14549x("1.3.6.1.5.5.7.1.3");

    public static final C14549x f91019F = new C14549x("1.3.6.1.5.5.7.1.4");

    public static final C14549x f91020G = new C14549x("2.5.29.56");

    public static final C14549x f91021H = new C14549x("2.5.29.55");

    public z0(Hashtable hashtable) {
        this((Vector) null, hashtable);
    }

    public static z0 A(oh.M m10, boolean z10) {
        return z(oh.E.H(m10, z10));
    }

    private C14549x[] D(Vector vector) {
        int size = vector.size();
        C14549x[] c14549xArr = new C14549x[size];
        for (int i10 = 0; i10 != size; i10++) {
            c14549xArr[i10] = (C14549x) vector.elementAt(i10);
        }
        return c14549xArr;
    }

    private C14549x[] y(boolean z10) {
        Vector vector = new Vector();
        for (int i10 = 0; i10 != this.f91046c.size(); i10++) {
            Object elementAt = this.f91046c.elementAt(i10);
            if (((y0) this.f91045b.get(elementAt)).d() == z10) {
                vector.addElement(elementAt);
            }
        }
        return D(vector);
    }

    public static z0 z(Object obj) {
        if (obj == null || (obj instanceof z0)) {
            return (z0) obj;
        }
        if (obj instanceof oh.E) {
            return new z0((oh.E) obj);
        }
        if (obj instanceof C13479C) {
            return new z0((oh.E) ((C13479C) obj).r());
        }
        if (obj instanceof oh.M) {
            return z(oh.M.S(obj, 128).L().r());
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public C14549x[] B() {
        return y(false);
    }

    public Enumeration C() {
        return this.f91046c.elements();
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(this.f91046c.size());
        Enumeration elements = this.f91046c.elements();
        while (elements.hasMoreElements()) {
            C14518h c14518h2 = new C14518h(3);
            C14549x c14549x = (C14549x) elements.nextElement();
            y0 y0Var = (y0) this.f91045b.get(c14549x);
            c14518h2.a(c14549x);
            if (y0Var.d()) {
                c14518h2.a(C14512e.f98877g);
            }
            c14518h2.a(y0Var.c());
            c14518h.a(new G0(c14518h2));
        }
        return new G0(c14518h);
    }

    public boolean u(z0 z0Var) {
        if (this.f91045b.size() != z0Var.f91045b.size()) {
            return false;
        }
        Enumeration keys = this.f91045b.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            if (!this.f91045b.get(nextElement).equals(z0Var.f91045b.get(nextElement))) {
                return false;
            }
        }
        return true;
    }

    public C14549x[] v() {
        return y(true);
    }

    public y0 w(C14549x c14549x) {
        return (y0) this.f91045b.get(c14549x);
    }

    public C14549x[] x() {
        return D(this.f91046c);
    }

    public z0(Vector vector, Hashtable hashtable) {
        this.f91045b = new Hashtable();
        this.f91046c = new Vector();
        Enumeration keys = vector == null ? hashtable.keys() : vector.elements();
        while (keys.hasMoreElements()) {
            this.f91046c.addElement(C14549x.K(keys.nextElement()));
        }
        Enumeration elements = this.f91046c.elements();
        while (elements.hasMoreElements()) {
            C14549x K10 = C14549x.K(elements.nextElement());
            this.f91045b.put(K10, (y0) hashtable.get(K10));
        }
    }

    public z0(Vector vector, Vector vector2) {
        this.f91045b = new Hashtable();
        this.f91046c = new Vector();
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            this.f91046c.addElement(elements.nextElement());
        }
        Enumeration elements2 = this.f91046c.elements();
        int i10 = 0;
        while (elements2.hasMoreElements()) {
            this.f91045b.put((C14549x) elements2.nextElement(), (y0) vector2.elementAt(i10));
            i10++;
        }
    }

    public z0(oh.E e10) {
        this.f91045b = new Hashtable();
        this.f91046c = new Vector();
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            oh.E G10 = oh.E.G(J10.nextElement());
            if (G10.size() == 3) {
                this.f91045b.put(G10.I(0), new y0(C14512e.G(G10.I(1)), AbstractC14551y.F(G10.I(2))));
            } else {
                if (G10.size() != 2) {
                    throw new IllegalArgumentException("Bad sequence size: " + G10.size());
                }
                this.f91045b.put(G10.I(0), new y0(false, AbstractC14551y.F(G10.I(1))));
            }
            this.f91046c.addElement(G10.I(0));
        }
    }
}
