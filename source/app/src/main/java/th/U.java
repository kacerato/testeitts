package th;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class U extends AbstractC14545v {

    public final oh.E f117541b;

    public oh.E f117542c;

    public oh.E f117543d;

    public U(oh.E e10) {
        Enumeration J10 = e10.J();
        this.f117541b = oh.E.G(J10.nextElement());
        while (J10.hasMoreElements()) {
            oh.M R10 = oh.M.R(J10.nextElement());
            if (R10.p(0)) {
                this.f117542c = oh.E.H(R10, true);
            } else if (R10.p(1)) {
                this.f117543d = oh.E.H(R10, true);
            }
        }
    }

    private void u(C14518h c14518h, int i10, InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g != null) {
            c14518h.a(new K0(true, i10, interfaceC14516g));
        }
    }

    public static U w(Object obj) {
        if (obj instanceof U) {
            return (U) obj;
        }
        if (obj != null) {
            return new U(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f117541b);
        u(c14518h, 0, this.f117542c);
        u(c14518h, 1, this.f117543d);
        return new G0(c14518h);
    }

    public hi.r[] v() {
        oh.E e10 = this.f117543d;
        if (e10 == null) {
            return null;
        }
        int size = e10.size();
        hi.r[] rVarArr = new hi.r[size];
        for (int i10 = 0; i10 != size; i10++) {
            rVarArr[i10] = hi.r.u(this.f117543d.I(i10));
        }
        return rVarArr;
    }

    public wh.c[] x() {
        oh.E e10 = this.f117542c;
        if (e10 == null) {
            return null;
        }
        int size = e10.size();
        wh.c[] cVarArr = new wh.c[size];
        for (int i10 = 0; i10 != size; i10++) {
            cVarArr[i10] = wh.c.u(this.f117542c.I(i10));
        }
        return cVarArr;
    }

    public L[] y() {
        int size = this.f117541b.size();
        L[] lArr = new L[size];
        for (int i10 = 0; i10 != size; i10++) {
            lArr[i10] = L.v(this.f117541b.I(i10));
        }
        return lArr;
    }
}
