package uh;

import oh.AbstractC14536q;
import oh.AbstractC14545v;
import oh.C14512e;
import oh.C14518h;
import oh.C14554z0;
import oh.G0;
import oh.M0;

public class G extends AbstractC14545v {

    public C14512e f120579b;

    public oh.Q f120580c;

    public AbstractC14536q f120581d;

    public C15612c f120582e;

    public G(C14512e c14512e, oh.Q q10, AbstractC14536q abstractC14536q, C15612c c15612c) {
        this.f120579b = c14512e;
        this.f120580c = q10;
        this.f120581d = abstractC14536q;
        this.f120582e = c15612c;
    }

    public static G w(Object obj) {
        if (obj instanceof G) {
            return (G) obj;
        }
        if (obj != null) {
            return new G(oh.E.G(obj));
        }
        return null;
    }

    public boolean A() {
        return this.f120579b.J();
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f120579b);
        oh.Q q10 = this.f120580c;
        if (q10 != null) {
            c14518h.a(q10);
        }
        AbstractC14536q abstractC14536q = this.f120581d;
        if (abstractC14536q != null) {
            c14518h.a(abstractC14536q);
        }
        C15612c c15612c = this.f120582e;
        if (c15612c != null) {
            c14518h.a(c15612c);
        }
        return new G0(c14518h);
    }

    public M0 u() {
        oh.Q q10 = this.f120580c;
        return (q10 == null || (q10 instanceof M0)) ? (M0) q10 : new M0(this.f120580c.getString());
    }

    public oh.Q v() {
        return this.f120580c;
    }

    public C14554z0 x() {
        AbstractC14536q abstractC14536q = this.f120581d;
        return (abstractC14536q == null || (abstractC14536q instanceof C14554z0)) ? (C14554z0) abstractC14536q : new C14554z0(this.f120581d.getString(), false);
    }

    public AbstractC14536q y() {
        return this.f120581d;
    }

    public C15612c z() {
        return this.f120582e;
    }

    public G(oh.E e10) {
        this.f120579b = C14512e.G(e10.I(0));
        int i10 = 1;
        if (1 < e10.size() && (e10.I(1) instanceof oh.Q)) {
            this.f120580c = oh.Q.F(e10.I(1));
            i10 = 2;
        }
        if (i10 < e10.size() && (e10.I(i10) instanceof AbstractC14536q)) {
            this.f120581d = AbstractC14536q.F(e10.I(i10));
            i10++;
        }
        if (i10 < e10.size()) {
            this.f120582e = C15612c.v(e10.I(i10));
        }
    }
}
