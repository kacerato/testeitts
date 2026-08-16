package hi;

import fi.C13228d;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class j0 extends AbstractC14545v {

    public oh.E f90820b;

    public C14539s f90821c;

    public C14539s f90822d;

    public C13486b f90823e;

    public C13228d f90824f;

    public o0 f90825g;

    public o0 f90826h;

    public C13228d f90827i;

    public h0 f90828j;

    public AbstractC14508c f90829k;

    public AbstractC14508c f90830l;

    public C13479C f90831m;

    public j0(oh.E e10) {
        int i10;
        boolean z10;
        boolean z11;
        this.f90820b = e10;
        if (e10.I(0) instanceof oh.M) {
            this.f90821c = C14539s.G((oh.M) e10.I(0), true);
            i10 = 0;
        } else {
            this.f90821c = new C14539s(0L);
            i10 = -1;
        }
        if (this.f90821c.J(0)) {
            z11 = false;
            z10 = true;
        } else if (this.f90821c.J(1)) {
            z10 = false;
            z11 = true;
        } else {
            if (!this.f90821c.J(2)) {
                throw new IllegalArgumentException("version number not recognised");
            }
            z10 = false;
            z11 = false;
        }
        this.f90822d = C14539s.F(e10.I(i10 + 1));
        this.f90823e = C13486b.v(e10.I(i10 + 2));
        this.f90824f = C13228d.x(e10.I(i10 + 3));
        oh.E e11 = (oh.E) e10.I(i10 + 4);
        this.f90825g = o0.v(e11.I(0));
        this.f90826h = o0.v(e11.I(1));
        this.f90827i = C13228d.x(e10.I(i10 + 5));
        int i11 = i10 + 6;
        this.f90828j = h0.w(e10.I(i11));
        int size = (e10.size() - i11) - 1;
        if (size != 0 && z10) {
            throw new IllegalArgumentException("version 1 certificate contains extra data");
        }
        while (size > 0) {
            oh.M m10 = (oh.M) e10.I(i11 + size);
            int g10 = m10.g();
            if (g10 == 1) {
                this.f90829k = AbstractC14508c.I(m10, false);
            } else if (g10 == 2) {
                this.f90830l = AbstractC14508c.I(m10, false);
            } else {
                if (g10 != 3) {
                    throw new IllegalArgumentException("Unknown tag encountered in structure: " + m10.g());
                }
                if (z11) {
                    throw new IllegalArgumentException("version 2 certificate cannot contain extensions");
                }
                this.f90831m = C13479C.C(oh.E.H(m10, true));
            }
            size--;
        }
    }

    public static j0 w(Object obj) {
        if (obj instanceof j0) {
            return (j0) obj;
        }
        if (obj != null) {
            return new j0(oh.E.G(obj));
        }
        return null;
    }

    public static j0 x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    public C14539s A() {
        return this.f90822d;
    }

    public C13486b B() {
        return this.f90823e;
    }

    public o0 C() {
        return this.f90825g;
    }

    public C13228d D() {
        return this.f90827i;
    }

    public h0 E() {
        return this.f90828j;
    }

    public AbstractC14508c F() {
        return this.f90830l;
    }

    public C14539s G() {
        return this.f90821c;
    }

    public int H() {
        return this.f90821c.O() + 1;
    }

    @Override
    public oh.B r() {
        if (org.bouncycastle.util.q.d("org.bouncycastle.x509.allow_non-der_tbscert") != null && !org.bouncycastle.util.q.f("org.bouncycastle.x509.allow_non-der_tbscert")) {
            C14518h c14518h = new C14518h();
            if (!this.f90821c.J(0)) {
                c14518h.a(new K0(true, 0, (InterfaceC14516g) this.f90821c));
            }
            c14518h.a(this.f90822d);
            c14518h.a(this.f90823e);
            c14518h.a(this.f90824f);
            C14518h c14518h2 = new C14518h(2);
            c14518h2.a(this.f90825g);
            c14518h2.a(this.f90826h);
            c14518h.a(new G0(c14518h2));
            InterfaceC14516g interfaceC14516g = this.f90827i;
            if (interfaceC14516g == null) {
                interfaceC14516g = new G0();
            }
            c14518h.a(interfaceC14516g);
            c14518h.a(this.f90828j);
            AbstractC14508c abstractC14508c = this.f90829k;
            if (abstractC14508c != null) {
                c14518h.a(new K0(false, 1, (InterfaceC14516g) abstractC14508c));
            }
            AbstractC14508c abstractC14508c2 = this.f90830l;
            if (abstractC14508c2 != null) {
                c14518h.a(new K0(false, 2, (InterfaceC14516g) abstractC14508c2));
            }
            C13479C c13479c = this.f90831m;
            if (c13479c != null) {
                c14518h.a(new K0(true, 3, (InterfaceC14516g) c13479c));
            }
            return new G0(c14518h);
        }
        return this.f90820b;
    }

    public o0 u() {
        return this.f90826h;
    }

    public C13479C v() {
        return this.f90831m;
    }

    public C13228d y() {
        return this.f90824f;
    }

    public AbstractC14508c z() {
        return this.f90829k;
    }
}
