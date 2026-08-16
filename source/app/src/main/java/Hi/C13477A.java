package hi;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;

public class C13477A extends AbstractC14545v {

    public Hashtable f90511b = new Hashtable();

    public oh.E f90512c;

    public C13477A(M m10) {
        this.f90512c = new G0(m10);
        this.f90511b.put(m10, m10);
    }

    public static C13477A u(C13479C c13479c) {
        return v(C13479C.A(c13479c, C13478B.f90549y));
    }

    public static C13477A v(Object obj) {
        if (obj instanceof C13477A) {
            return (C13477A) obj;
        }
        if (obj != null) {
            return new C13477A(oh.E.G(obj));
        }
        return null;
    }

    public static C13477A w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        return this.f90512c;
    }

    public int size() {
        return this.f90511b.size();
    }

    public M[] x() {
        M[] mArr = new M[this.f90512c.size()];
        Enumeration J10 = this.f90512c.J();
        int i10 = 0;
        while (J10.hasMoreElements()) {
            mArr[i10] = M.v(J10.nextElement());
            i10++;
        }
        return mArr;
    }

    public boolean y(M m10) {
        return this.f90511b.get(m10) != null;
    }

    public C13477A(Vector vector) {
        C14518h c14518h = new C14518h(vector.size());
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            M v10 = M.v(elements.nextElement());
            c14518h.a(v10);
            this.f90511b.put(v10, v10);
        }
        this.f90512c = new G0(c14518h);
    }

    public C13477A(oh.E e10) {
        this.f90512c = e10;
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            InterfaceC14516g interfaceC14516g = (InterfaceC14516g) J10.nextElement();
            if (!(interfaceC14516g.r() instanceof C14549x)) {
                throw new IllegalArgumentException("Only ASN1ObjectIdentifiers allowed in ExtendedKeyUsage.");
            }
            this.f90511b.put(interfaceC14516g, interfaceC14516g);
        }
    }

    public C13477A(M[] mArr) {
        C14518h c14518h = new C14518h(mArr.length);
        for (int i10 = 0; i10 != mArr.length; i10++) {
            c14518h.a(mArr[i10]);
            Hashtable hashtable = this.f90511b;
            M m10 = mArr[i10];
            hashtable.put(m10, m10);
        }
        this.f90512c = new G0(c14518h);
    }
}
