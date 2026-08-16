package hi;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C13492e extends AbstractC14545v implements InterfaceC14514f {

    public InterfaceC14516g f90785b;

    public oh.B f90786c;

    public C13492e(C13482F c13482f) {
        this.f90785b = c13482f;
        this.f90786c = c13482f.r();
    }

    public static C13492e u(Object obj) {
        if (obj == null || (obj instanceof C13492e)) {
            return (C13492e) obj;
        }
        if (obj instanceof s0) {
            return new C13492e(s0.v(obj));
        }
        if (obj instanceof C13482F) {
            return new C13492e((C13482F) obj);
        }
        if (obj instanceof oh.M) {
            return new C13492e(s0.w((oh.M) obj, false));
        }
        if (obj instanceof oh.E) {
            return new C13492e(C13482F.w(obj));
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public static C13492e v(oh.M m10, boolean z10) {
        return u(m10.O());
    }

    @Override
    public oh.B r() {
        return this.f90786c;
    }

    public InterfaceC14516g x() {
        return this.f90785b;
    }

    public C13492e(s0 s0Var) {
        this.f90785b = s0Var;
        this.f90786c = new K0(false, 0, (InterfaceC14516g) s0Var);
    }
}
