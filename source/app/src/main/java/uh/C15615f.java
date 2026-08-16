package uh;

import hi.C13486b;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14517g0;
import oh.C14518h;
import oh.C14539s;
import oh.InterfaceC14516g;
import oh.K0;

public class C15615f extends AbstractC14545v {

    public C14539s f120667b;

    public I f120668c;

    public oh.G f120669d;

    public C13486b f120670e;

    public C13486b f120671f;

    public C15624o f120672g;

    public oh.G f120673h;

    public AbstractC14551y f120674i;

    public oh.G f120675j;

    public C15615f(oh.E e10) {
        int i10;
        this.f120667b = (C14539s) e10.I(0);
        InterfaceC14516g I10 = e10.I(1);
        if (I10 instanceof oh.M) {
            this.f120668c = I.x((oh.M) I10, false);
            I10 = e10.I(2);
            i10 = 3;
        } else {
            i10 = 2;
        }
        this.f120669d = oh.G.F(I10);
        this.f120670e = C13486b.v(e10.I(i10));
        int i11 = i10 + 2;
        InterfaceC14516g I11 = e10.I(i10 + 1);
        if (I11 instanceof oh.M) {
            this.f120671f = C13486b.w((oh.M) I11, false);
            I11 = e10.I(i11);
            i11 = i10 + 3;
        }
        this.f120672g = C15624o.w(I11);
        int i12 = i11 + 1;
        InterfaceC14516g I12 = e10.I(i11);
        if (I12 instanceof oh.M) {
            this.f120673h = oh.G.G((oh.M) I12, false);
            I12 = e10.I(i12);
            i12 = i11 + 2;
        }
        this.f120674i = AbstractC14551y.F(I12);
        if (e10.size() > i12) {
            this.f120675j = oh.G.G((oh.M) e10.I(i12), false);
        }
    }

    public static C15615f A(oh.M m10, boolean z10) {
        return z(oh.E.H(m10, z10));
    }

    public static int u(I i10) {
        int i11 = 0;
        if (i10 == null) {
            return 0;
        }
        Enumeration I10 = i10.v().I();
        while (true) {
            if (!I10.hasMoreElements()) {
                break;
            }
            Object nextElement = I10.nextElement();
            if (nextElement instanceof oh.M) {
                oh.M m10 = (oh.M) nextElement;
                if (m10.g() == 2) {
                    i11 = 1;
                } else if (m10.g() == 3) {
                    i11 = 3;
                    break;
                }
            }
        }
        if (i10.u() != null) {
            Enumeration I11 = i10.u().I();
            while (I11.hasMoreElements()) {
                Object nextElement2 = I11.nextElement();
                if ((nextElement2 instanceof oh.M) && ((oh.M) nextElement2).g() == 1) {
                    return 3;
                }
            }
        }
        return i11;
    }

    public static C15615f z(Object obj) {
        if (obj instanceof C15615f) {
            return (C15615f) obj;
        }
        if (obj != null) {
            return new C15615f(oh.E.G(obj));
        }
        return null;
    }

    public AbstractC14551y B() {
        return this.f120674i;
    }

    public C13486b C() {
        return this.f120670e;
    }

    public I D() {
        return this.f120668c;
    }

    public oh.G E() {
        return this.f120669d;
    }

    public oh.G F() {
        return this.f120675j;
    }

    public C14539s G() {
        return this.f120667b;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(9);
        c14518h.a(this.f120667b);
        I i10 = this.f120668c;
        if (i10 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) i10));
        }
        c14518h.a(this.f120669d);
        c14518h.a(this.f120670e);
        C13486b c13486b = this.f120671f;
        if (c13486b != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c13486b));
        }
        c14518h.a(this.f120672g);
        oh.G g10 = this.f120673h;
        if (g10 != null) {
            c14518h.a(new K0(false, 2, (InterfaceC14516g) g10));
        }
        c14518h.a(this.f120674i);
        oh.G g11 = this.f120675j;
        if (g11 != null) {
            c14518h.a(new K0(false, 3, (InterfaceC14516g) g11));
        }
        return new C14517g0(c14518h);
    }

    public oh.G v() {
        return this.f120673h;
    }

    public C13486b x() {
        return this.f120671f;
    }

    public C15624o y() {
        return this.f120672g;
    }

    public C15615f(I i10, oh.G g10, C13486b c13486b, C13486b c13486b2, C15624o c15624o, oh.G g11, AbstractC14551y abstractC14551y, oh.G g12) {
        if (!(c13486b2 == null && g11 == null) && (c13486b2 == null || g11 == null)) {
            throw new IllegalArgumentException("digestAlgorithm and authAttrs must be set together");
        }
        this.f120667b = new C14539s(u(i10));
        this.f120668c = i10;
        this.f120670e = c13486b;
        this.f120671f = c13486b2;
        this.f120669d = g10;
        this.f120672g = c15624o;
        this.f120673h = g11;
        this.f120674i = abstractC14551y;
        this.f120675j = g12;
    }
}
