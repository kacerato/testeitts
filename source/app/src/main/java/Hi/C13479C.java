package hi;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class C13479C extends AbstractC14545v {

    public Hashtable f90605b;

    public Vector f90606c;

    public C13479C(C13478B c13478b) {
        this.f90605b = new Hashtable();
        Vector vector = new Vector();
        this.f90606c = vector;
        vector.addElement(c13478b.x());
        this.f90605b.put(c13478b.x(), c13478b);
    }

    public static InterfaceC14516g A(C13479C c13479c, C14549x c14549x) {
        if (c13479c == null) {
            return null;
        }
        return c13479c.B(c14549x);
    }

    public static C13479C C(Object obj) {
        if (obj instanceof C13479C) {
            return (C13479C) obj;
        }
        if (obj != null) {
            return new C13479C(oh.E.G(obj));
        }
        return null;
    }

    public static C13479C D(oh.M m10, boolean z10) {
        return C(oh.E.H(m10, z10));
    }

    public static C13478B w(C13479C c13479c, C14549x c14549x) {
        if (c13479c == null) {
            return null;
        }
        return c13479c.x(c14549x);
    }

    public InterfaceC14516g B(C14549x c14549x) {
        C13478B x10 = x(c14549x);
        if (x10 != null) {
            return x10.A();
        }
        return null;
    }

    public C14549x[] E() {
        return z(false);
    }

    public Enumeration F() {
        return this.f90606c.elements();
    }

    public final C14549x[] G(Vector vector) {
        int size = vector.size();
        C14549x[] c14549xArr = new C14549x[size];
        for (int i10 = 0; i10 != size; i10++) {
            c14549xArr[i10] = (C14549x) vector.elementAt(i10);
        }
        return c14549xArr;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(this.f90606c.size());
        Enumeration elements = this.f90606c.elements();
        while (elements.hasMoreElements()) {
            c14518h.a((C13478B) this.f90605b.get((C14549x) elements.nextElement()));
        }
        return new G0(c14518h);
    }

    public boolean u(C13479C c13479c) {
        if (this.f90605b.size() != c13479c.f90605b.size()) {
            return false;
        }
        Enumeration keys = this.f90605b.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            if (!this.f90605b.get(nextElement).equals(c13479c.f90605b.get(nextElement))) {
                return false;
            }
        }
        return true;
    }

    public C14549x[] v() {
        return z(true);
    }

    public C13478B x(C14549x c14549x) {
        return (C13478B) this.f90605b.get(c14549x);
    }

    public C14549x[] y() {
        return G(this.f90606c);
    }

    public final C14549x[] z(boolean z10) {
        Vector vector = new Vector();
        for (int i10 = 0; i10 != this.f90606c.size(); i10++) {
            Object elementAt = this.f90606c.elementAt(i10);
            if (((C13478B) this.f90605b.get(elementAt)).B() == z10) {
                vector.addElement(elementAt);
            }
        }
        return G(vector);
    }

    public C13479C(oh.E e10) {
        this.f90605b = new Hashtable();
        this.f90606c = new Vector();
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            C13478B z10 = C13478B.z(J10.nextElement());
            if (this.f90605b.containsKey(z10.x()) && !org.bouncycastle.util.q.f("org.bouncycastle.x509.ignore_repeated_extensions")) {
                throw new IllegalArgumentException("repeated extension found: " + ((Object) z10.x()));
            }
            this.f90605b.put(z10.x(), z10);
            this.f90606c.addElement(z10.x());
        }
    }

    public C13479C(C13478B[] c13478bArr) {
        this.f90605b = new Hashtable();
        this.f90606c = new Vector();
        if (c13478bArr == null || c13478bArr.length == 0) {
            throw new IllegalArgumentException("extension array cannot be null or empty");
        }
        for (int i10 = 0; i10 != c13478bArr.length; i10++) {
            C13478B c13478b = c13478bArr[i10];
            this.f90606c.addElement(c13478b.x());
            this.f90605b.put(c13478b.x(), c13478b);
        }
    }
}
