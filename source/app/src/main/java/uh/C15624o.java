package uh;

import oh.AbstractC14545v;
import oh.C0;
import oh.C14517g0;
import oh.C14518h;
import oh.C14527l0;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import oh.V0;
import oh.Z0;

public class C15624o extends AbstractC14545v implements InterfaceC15621l {

    public final C14549x f120725b;

    public final InterfaceC14516g f120726c;

    public final boolean f120727d;

    public C15624o(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f120725b = c14549x;
        this.f120726c = interfaceC14516g;
        boolean z10 = true;
        if (interfaceC14516g != null) {
            oh.B r10 = interfaceC14516g.r();
            if (!(r10 instanceof C0) && !(r10 instanceof V0) && !(r10 instanceof G0)) {
                z10 = false;
            }
        }
        this.f120727d = z10;
    }

    public static C15624o w(Object obj) {
        if (obj instanceof C15624o) {
            return (C15624o) obj;
        }
        if (obj != null) {
            return new C15624o(oh.E.G(obj));
        }
        return null;
    }

    public static C15624o x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f120725b);
        InterfaceC14516g interfaceC14516g = this.f120726c;
        if (interfaceC14516g != null) {
            c14518h.a(this.f120727d ? new Z0(0, interfaceC14516g) : new C14527l0(0, interfaceC14516g));
        }
        return this.f120727d ? new V0(c14518h) : new C14517g0(c14518h);
    }

    public InterfaceC14516g u() {
        return this.f120726c;
    }

    public C14549x v() {
        return this.f120725b;
    }

    public boolean y() {
        return this.f120727d;
    }

    public C15624o(oh.E e10) {
        AbstractC14545v abstractC14545v;
        if (e10.size() < 1 || e10.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        this.f120725b = (C14549x) e10.I(0);
        if (e10.size() > 1) {
            oh.M S10 = oh.M.S(e10.I(1), 128);
            if (!S10.X() || S10.g() != 0) {
                throw new IllegalArgumentException("Bad tag for 'content'");
            }
            abstractC14545v = S10.O();
        } else {
            abstractC14545v = null;
        }
        this.f120726c = abstractC14545v;
        this.f120727d = !(e10 instanceof C14517g0);
    }
}
