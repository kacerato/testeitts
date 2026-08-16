package th;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class C15447x extends AbstractC14545v {

    public final L f117646b;

    public C15426b f117647c;

    public oh.E f117648d;

    public oh.E f117649e;

    public C15447x(oh.E e10) {
        Enumeration J10 = e10.J();
        this.f117646b = L.v(J10.nextElement());
        while (J10.hasMoreElements()) {
            oh.M S10 = oh.M.S(J10.nextElement(), 128);
            int g10 = S10.g();
            if (g10 == 0) {
                this.f117647c = C15426b.u(S10.O());
            } else if (g10 == 1) {
                this.f117648d = oh.E.G(S10.O());
            } else {
                if (g10 != 2) {
                    throw new IllegalArgumentException("unknown tag number: " + S10.g());
                }
                this.f117649e = oh.E.G(S10.O());
            }
        }
    }

    private void u(C14518h c14518h, int i10, InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g != null) {
            c14518h.a(new K0(true, i10, interfaceC14516g));
        }
    }

    public static C15447x w(Object obj) {
        if (obj instanceof C15447x) {
            return (C15447x) obj;
        }
        if (obj != null) {
            return new C15447x(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f117646b);
        u(c14518h, 0, this.f117647c);
        u(c14518h, 1, this.f117648d);
        u(c14518h, 2, this.f117649e);
        return new G0(c14518h);
    }

    public C15426b[] v() {
        oh.E e10 = this.f117648d;
        if (e10 == null) {
            return null;
        }
        int size = e10.size();
        C15426b[] c15426bArr = new C15426b[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15426bArr[i10] = C15426b.u(this.f117648d.I(i10));
        }
        return c15426bArr;
    }

    public C15438n[] x() {
        oh.E e10 = this.f117649e;
        if (e10 == null) {
            return null;
        }
        int size = e10.size();
        C15438n[] c15438nArr = new C15438n[size];
        for (int i10 = 0; i10 != size; i10++) {
            c15438nArr[i10] = C15438n.v(this.f117649e.I(i10));
        }
        return c15438nArr;
    }

    public C15426b y() {
        return this.f117647c;
    }

    public L z() {
        return this.f117646b;
    }
}
