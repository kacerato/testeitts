package th;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class C15438n extends AbstractC14545v {

    public final C15433i f117616b;

    public wh.l f117617c;

    public wh.p f117618d;

    public C15438n(oh.E e10) {
        AbstractC14545v O10;
        this.f117616b = C15433i.w(e10.I(0));
        if (e10.size() >= 2) {
            if (e10.size() == 2) {
                oh.M S10 = oh.M.S(e10.I(1), 128);
                int g10 = S10.g();
                O10 = S10.O();
                if (g10 == 0) {
                    this.f117617c = wh.l.u(O10);
                    return;
                }
            } else {
                this.f117617c = wh.l.u(oh.M.S(e10.I(1), 128).O());
                O10 = oh.M.S(e10.I(2), 128).O();
            }
            this.f117618d = wh.p.v(O10);
        }
    }

    public static C15438n v(Object obj) {
        if (obj instanceof C15438n) {
            return (C15438n) obj;
        }
        if (obj != null) {
            return new C15438n(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f117616b);
        wh.l lVar = this.f117617c;
        if (lVar != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) lVar));
        }
        wh.p pVar = this.f117618d;
        if (pVar != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) pVar));
        }
        return new G0(c14518h);
    }

    public C15433i u() {
        return this.f117616b;
    }

    public wh.l x() {
        return this.f117617c;
    }

    public wh.p y() {
        return this.f117618d;
    }

    public C15438n(C15433i c15433i) {
        this(c15433i, (wh.l) null, (wh.p) null);
    }

    public C15438n(C15433i c15433i, wh.l lVar, wh.p pVar) {
        if (c15433i == null) {
            throw new IllegalArgumentException("'certOrEncCert' cannot be null");
        }
        this.f117616b = c15433i;
        this.f117617c = lVar;
        this.f117618d = pVar;
    }

    public C15438n(C15433i c15433i, wh.m mVar, wh.p pVar) {
        if (c15433i == null) {
            throw new IllegalArgumentException("'certOrEncCert' cannot be null");
        }
        this.f117616b = c15433i;
        this.f117617c = mVar != null ? new wh.l(mVar) : null;
        this.f117618d = pVar;
    }
}
