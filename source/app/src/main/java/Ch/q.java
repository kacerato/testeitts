package Ch;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class q extends AbstractC14545v {

    public E f4361b;

    public E f4362c;

    public p f4363d;

    public q(E e10) {
        if (e10.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            M S10 = M.S(J10.nextElement(), 128);
            int g10 = S10.g();
            if (g10 == 0) {
                E e11 = (E) S10.O();
                Enumeration J11 = e11.J();
                while (J11.hasMoreElements()) {
                    hi.r.u(J11.nextElement());
                }
                this.f4361b = e11;
            } else if (g10 == 1) {
                E e12 = (E) S10.O();
                Enumeration J12 = e12.J();
                while (J12.hasMoreElements()) {
                    Vh.a.v(J12.nextElement());
                }
                this.f4362c = e12;
            } else {
                if (g10 != 2) {
                    throw new IllegalArgumentException("invalid tag: " + S10.g());
                }
                this.f4363d = p.u(S10.O());
            }
        }
    }

    public static q v(Object obj) {
        if (obj instanceof q) {
            return (q) obj;
        }
        if (obj != null) {
            return new q(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        E e10 = this.f4361b;
        if (e10 != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) e10));
        }
        E e11 = this.f4362c;
        if (e11 != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) e11));
        }
        p pVar = this.f4363d;
        if (pVar != null) {
            c14518h.a(new K0(true, 2, (InterfaceC14516g) pVar.r()));
        }
        return new G0(c14518h);
    }

    public hi.r[] u() {
        E e10 = this.f4361b;
        if (e10 == null) {
            return new hi.r[0];
        }
        int size = e10.size();
        hi.r[] rVarArr = new hi.r[size];
        for (int i10 = 0; i10 < size; i10++) {
            rVarArr[i10] = hi.r.u(this.f4361b.I(i10));
        }
        return rVarArr;
    }

    public Vh.a[] x() {
        E e10 = this.f4362c;
        if (e10 == null) {
            return new Vh.a[0];
        }
        int size = e10.size();
        Vh.a[] aVarArr = new Vh.a[size];
        for (int i10 = 0; i10 < size; i10++) {
            aVarArr[i10] = Vh.a.v(this.f4362c.I(i10));
        }
        return aVarArr;
    }

    public p y() {
        return this.f4363d;
    }

    public q(hi.r[] rVarArr, Vh.a[] aVarArr, p pVar) {
        if (rVarArr != null) {
            this.f4361b = new G0(rVarArr);
        }
        if (aVarArr != null) {
            this.f4362c = new G0(aVarArr);
        }
        this.f4363d = pVar;
    }
}
