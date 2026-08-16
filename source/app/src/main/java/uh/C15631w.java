package uh;

import ci.C4196g;
import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C15631w extends AbstractC14545v implements InterfaceC14514f {

    public b0 f120752b;

    public C4196g f120753c;

    public oh.E f120754d;

    public C15631w(C4196g c4196g) {
        this.f120753c = c4196g;
    }

    public static C15631w v(Object obj) {
        if (obj == null || (obj instanceof C15631w)) {
            return (C15631w) obj;
        }
        if (obj instanceof oh.M) {
            return new C15631w(oh.M.S(obj, 128));
        }
        throw new IllegalArgumentException("unknown object in getInstance");
    }

    public static C15631w w(oh.M m10, boolean z10) {
        if (z10) {
            return v(m10.O());
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    @Override
    public oh.B r() {
        b0 b0Var = this.f120752b;
        if (b0Var != null) {
            return new K0(false, 0, (InterfaceC14516g) b0Var);
        }
        C4196g c4196g = this.f120753c;
        return c4196g != null ? new K0(false, 1, (InterfaceC14516g) c4196g) : new K0(false, 2, (InterfaceC14516g) this.f120754d);
    }

    public C4196g u() {
        return this.f120753c;
    }

    public b0 x() {
        return this.f120752b;
    }

    public C15631w(oh.M m10) {
        if (m10.g() == 0) {
            this.f120752b = b0.w(m10, false);
        } else if (m10.g() == 1) {
            this.f120753c = C4196g.z(m10, false);
        } else {
            if (m10.g() != 2) {
                throw new IllegalArgumentException("unknown tag in Evidence");
            }
            this.f120754d = oh.E.H(m10, false);
        }
    }

    public C15631w(b0 b0Var) {
        this.f120752b = b0Var;
    }
}
