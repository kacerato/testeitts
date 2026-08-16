package hi;

import oh.AbstractC14545v;
import oh.C14549x;
import oh.InterfaceC14516g;

public class C13488c extends AbstractC14545v {

    public final C13486b f90763b;

    public C13488c(C13486b c13486b) {
        this.f90763b = c13486b;
    }

    public static C13488c u(C13479C c13479c) {
        return w(C13479C.A(c13479c, C13478B.f90526L));
    }

    public static C13488c w(Object obj) {
        if (obj instanceof C13488c) {
            return (C13488c) obj;
        }
        if (obj != null) {
            return new C13488c(C13486b.v(obj));
        }
        return null;
    }

    public static C13488c x(oh.M m10, boolean z10) {
        return w(C13486b.w(m10, z10));
    }

    @Override
    public oh.B r() {
        return this.f90763b.r();
    }

    public C13486b v() {
        return this.f90763b;
    }

    public C13488c(C14549x c14549x) {
        this(c14549x, null);
    }

    public C13488c(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f90763b = new C13486b(c14549x, interfaceC14516g);
    }
}
