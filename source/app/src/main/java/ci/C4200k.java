package ci;

import hi.C13479C;
import oh.AbstractC14545v;
import oh.B;
import oh.C14512e;
import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class C4200k extends AbstractC14545v {

    public C14539s f34859b;

    public C4197h f34860c;

    public C14549x f34861d;

    public C14539s f34862e;

    public C14512e f34863f;

    public C13479C f34864g;

    public C4200k(C4197h c4197h, C14549x c14549x, C14539s c14539s, C14512e c14512e, C13479C c13479c) {
        this.f34859b = new C14539s(1L);
        this.f34860c = c4197h;
        this.f34861d = c14549x;
        this.f34862e = c14539s;
        this.f34863f = c14512e;
        this.f34864g = c13479c;
    }

    public static C4200k y(Object obj) {
        if (obj instanceof C4200k) {
            return (C4200k) obj;
        }
        if (obj != null) {
            return new C4200k(E.G(obj));
        }
        return null;
    }

    public C14539s A() {
        return this.f34862e;
    }

    public C14549x B() {
        return this.f34861d;
    }

    public C14539s C() {
        return this.f34859b;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(6);
        c14518h.a(this.f34859b);
        c14518h.a(this.f34860c);
        C14549x c14549x = this.f34861d;
        if (c14549x != null) {
            c14518h.a(c14549x);
        }
        C14539s c14539s = this.f34862e;
        if (c14539s != null) {
            c14518h.a(c14539s);
        }
        C14512e c14512e = this.f34863f;
        if (c14512e != null && c14512e.J()) {
            c14518h.a(this.f34863f);
        }
        C13479C c13479c = this.f34864g;
        if (c13479c != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) c13479c));
        }
        return new G0(c14518h);
    }

    public final void u(Object obj, int i10, int i11) {
        if (obj != null || i10 > i11) {
            throw new IllegalArgumentException("badly placed optional in sequence");
        }
    }

    public C14512e v() {
        C14512e c14512e = this.f34863f;
        return c14512e == null ? C14512e.f98876f : c14512e;
    }

    public C13479C x() {
        return this.f34864g;
    }

    public C4197h z() {
        return this.f34860c;
    }

    public C4200k(E e10) {
        int size = e10.size();
        this.f34859b = C14539s.F(e10.I(0));
        this.f34860c = C4197h.w(e10.I(1));
        for (int i10 = 2; i10 < size; i10++) {
            if (e10.I(i10) instanceof C14549x) {
                u(this.f34861d, i10, 2);
                this.f34861d = C14549x.K(e10.I(i10));
            } else if (e10.I(i10) instanceof C14539s) {
                u(this.f34862e, i10, 3);
                this.f34862e = C14539s.F(e10.I(i10));
            } else if (e10.I(i10) instanceof C14512e) {
                u(this.f34863f, i10, 4);
                this.f34863f = C14512e.G(e10.I(i10));
            } else {
                if (!(e10.I(i10) instanceof M)) {
                    throw new IllegalArgumentException("unidentified structure in sequence");
                }
                u(this.f34864g, i10, 5);
                M m10 = (M) e10.I(i10);
                if (m10.g() == 0) {
                    this.f34864g = C13479C.D(m10, false);
                }
            }
        }
    }
}
