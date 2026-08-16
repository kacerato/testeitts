package uh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14517g0;
import oh.C14518h;
import oh.C14539s;
import oh.InterfaceC14516g;
import oh.K0;

public class C15613d extends AbstractC14545v {

    public C14539s f120649b;

    public I f120650c;

    public oh.G f120651d;

    public r f120652e;

    public oh.G f120653f;

    public AbstractC14551y f120654g;

    public oh.G f120655h;

    public C15613d(oh.E e10) {
        oh.G g10;
        C14539s F10 = C14539s.F(e10.I(0).r());
        this.f120649b = F10;
        if (!F10.J(0)) {
            throw new IllegalArgumentException("AuthEnvelopedData version number must be 0");
        }
        oh.B r10 = e10.I(1).r();
        int i10 = 2;
        if (r10 instanceof oh.M) {
            this.f120650c = I.x((oh.M) r10, false);
            r10 = e10.I(2).r();
            i10 = 3;
        }
        oh.G F11 = oh.G.F(r10);
        this.f120651d = F11;
        if (F11.size() == 0) {
            throw new IllegalArgumentException("AuthEnvelopedData requires at least 1 RecipientInfo");
        }
        this.f120652e = r.y(e10.I(i10).r());
        int i11 = i10 + 2;
        oh.B r11 = e10.I(i10 + 1).r();
        if (r11 instanceof oh.M) {
            this.f120653f = oh.G.G((oh.M) r11, false);
            r11 = e10.I(i11).r();
            i11 = i10 + 3;
        } else if (!this.f120652e.v().A(InterfaceC15621l.f120705m8) && ((g10 = this.f120653f) == null || g10.size() == 0)) {
            throw new IllegalArgumentException("authAttrs must be present with non-data content");
        }
        this.f120654g = AbstractC14551y.F(r11);
        if (e10.size() > i11) {
            this.f120655h = oh.G.G((oh.M) e10.I(i11).r(), false);
        }
    }

    public static C15613d w(Object obj) {
        if (obj instanceof C15613d) {
            return (C15613d) obj;
        }
        if (obj != null) {
            return new C15613d(oh.E.G(obj));
        }
        return null;
    }

    public static C15613d x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    public oh.G A() {
        return this.f120651d;
    }

    public oh.G B() {
        return this.f120655h;
    }

    public C14539s C() {
        return this.f120649b;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(7);
        c14518h.a(this.f120649b);
        I i10 = this.f120650c;
        if (i10 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) i10));
        }
        c14518h.a(this.f120651d);
        c14518h.a(this.f120652e);
        oh.G g10 = this.f120653f;
        if (g10 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) g10));
        }
        c14518h.a(this.f120654g);
        oh.G g11 = this.f120655h;
        if (g11 != null) {
            c14518h.a(new K0(false, 2, (InterfaceC14516g) g11));
        }
        return new C14517g0(c14518h);
    }

    public oh.G u() {
        return this.f120653f;
    }

    public r v() {
        return this.f120652e;
    }

    public AbstractC14551y y() {
        return this.f120654g;
    }

    public I z() {
        return this.f120650c;
    }

    public C15613d(I i10, oh.G g10, r rVar, oh.G g11, AbstractC14551y abstractC14551y, oh.G g12) {
        this.f120649b = new C14539s(0L);
        this.f120650c = i10;
        this.f120651d = g10;
        if (g10.size() == 0) {
            throw new IllegalArgumentException("AuthEnvelopedData requires at least 1 RecipientInfo");
        }
        this.f120652e = rVar;
        this.f120653f = g11;
        if (!rVar.v().A(InterfaceC15621l.f120705m8) && (g11 == null || g11.size() == 0)) {
            throw new IllegalArgumentException("authAttrs must be present with non-data content");
        }
        this.f120654g = abstractC14551y;
        this.f120655h = g12;
    }
}
