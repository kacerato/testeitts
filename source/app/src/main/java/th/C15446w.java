package th;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class C15446w extends AbstractC14545v {

    public static final F f117638i = new F("CMP-KEM");

    public final F f117639b;

    public final AbstractC14551y f117640c;

    public final AbstractC14551y f117641d;

    public final AbstractC14551y f117642e;

    public final C14539s f117643f;

    public final C13486b f117644g;

    public final AbstractC14551y f117645h;

    public C15446w(AbstractC14551y abstractC14551y, AbstractC14551y abstractC14551y2, AbstractC14551y abstractC14551y3, long j10, C13486b c13486b, AbstractC14551y abstractC14551y4) {
        this(abstractC14551y, abstractC14551y2, abstractC14551y3, new C14539s(j10), c13486b, abstractC14551y4);
    }

    public static oh.M C(oh.E e10, int i10) {
        InterfaceC14516g I10 = e10.I(i10);
        if (I10 instanceof oh.M) {
            return (oh.M) I10;
        }
        return null;
    }

    public static void u(C14518h c14518h, int i10, InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g != null) {
            c14518h.a(new K0(true, i10, interfaceC14516g));
        }
    }

    public static C15446w w(Object obj) {
        if (obj instanceof C15446w) {
            return (C15446w) obj;
        }
        if (obj != null) {
            return new C15446w(oh.E.G(obj));
        }
        return null;
    }

    public AbstractC14551y A() {
        return this.f117641d;
    }

    public AbstractC14551y B() {
        return this.f117640c;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(7);
        c14518h.a(this.f117639b);
        u(c14518h, 0, this.f117640c);
        u(c14518h, 1, this.f117641d);
        u(c14518h, 2, this.f117642e);
        c14518h.a(this.f117643f);
        c14518h.a(this.f117644g);
        c14518h.a(this.f117645h);
        return new G0(c14518h);
    }

    public AbstractC14551y v() {
        return this.f117645h;
    }

    public C14539s x() {
        return this.f117643f;
    }

    public C13486b y() {
        return this.f117644g;
    }

    public AbstractC14551y z() {
        return this.f117642e;
    }

    public C15446w(AbstractC14551y abstractC14551y, AbstractC14551y abstractC14551y2, AbstractC14551y abstractC14551y3, C14539s c14539s, C13486b c13486b, AbstractC14551y abstractC14551y4) {
        this.f117639b = f117638i;
        this.f117640c = abstractC14551y;
        this.f117641d = abstractC14551y2;
        this.f117642e = abstractC14551y3;
        this.f117643f = c14539s;
        this.f117644g = c13486b;
        this.f117645h = abstractC14551y4;
    }

    public C15446w(oh.E e10) {
        int i10;
        AbstractC14551y abstractC14551y;
        AbstractC14551y abstractC14551y2;
        oh.B L10;
        oh.B L11;
        oh.B L12;
        if (e10.size() < 4 || e10.size() > 7) {
            throw new IllegalArgumentException("sequence size should be between 4 and 7 inclusive");
        }
        F u10 = F.u(e10.I(0));
        this.f117639b = u10;
        F f10 = f117638i;
        if (!f10.equals(u10)) {
            throw new IllegalArgumentException("staticString field should be " + ((Object) f10));
        }
        oh.M C10 = C(e10, 1);
        AbstractC14551y abstractC14551y3 = null;
        if (C10 == null || (L12 = oh.V.L(C10, 0, true, 4)) == null) {
            i10 = 1;
            abstractC14551y = null;
        } else {
            abstractC14551y = (AbstractC14551y) L12;
            C10 = C(e10, 2);
            i10 = 2;
        }
        if (C10 == null || (L11 = oh.V.L(C10, 1, true, 4)) == null) {
            abstractC14551y2 = null;
        } else {
            abstractC14551y2 = (AbstractC14551y) L11;
            i10++;
            C10 = C(e10, i10);
        }
        if (C10 != null && (L10 = oh.V.L(C10, 2, true, 4)) != null) {
            abstractC14551y3 = (AbstractC14551y) L10;
            i10++;
            C10 = C(e10, i10);
        }
        if (C10 != null) {
            throw new IllegalArgumentException("unknown tag: " + oh.V.y(C10));
        }
        this.f117640c = abstractC14551y;
        this.f117641d = abstractC14551y2;
        this.f117642e = abstractC14551y3;
        this.f117643f = C14539s.F(e10.I(i10));
        this.f117644g = C13486b.v(e10.I(i10 + 1));
        this.f117645h = AbstractC14551y.F(e10.I(i10 + 2));
        if (i10 + 3 != e10.size()) {
            throw new IllegalArgumentException("unexpected data at end of sequence");
        }
    }
}
