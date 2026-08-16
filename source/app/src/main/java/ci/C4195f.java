package ci;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14516g;
import oh.M;
import oh.V0;

public class C4195f extends AbstractC14545v {

    public C14549x f34838b;

    public InterfaceC14516g f34839c;

    public C4195f(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f34838b = c14549x;
        this.f34839c = interfaceC14516g;
    }

    public static C4195f w(Object obj) {
        if (obj instanceof C4195f) {
            return (C4195f) obj;
        }
        if (obj != null) {
            return new C4195f(E.G(obj));
        }
        return null;
    }

    public static C4195f x(AbstractC14545v abstractC14545v) {
        return w(abstractC14545v);
    }

    public static C4195f y(M m10, boolean z10) {
        return w(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f34838b);
        c14518h.a(this.f34839c);
        return new V0(c14518h);
    }

    public C14549x u() {
        return this.f34838b;
    }

    public InterfaceC14516g v() {
        return this.f34839c;
    }

    public C4195f(E e10) {
        if (e10.size() == 2) {
            this.f34838b = C14549x.K(e10.I(0));
            this.f34839c = e10.I(1);
        } else {
            throw new IllegalArgumentException("wrong sequence size in constructor: " + e10.size());
        }
    }
}
