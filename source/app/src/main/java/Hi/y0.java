package hi;

import java.io.IOException;
import oh.AbstractC14551y;
import oh.C14512e;
import oh.C14549x;
import oh.InterfaceC14516g;

public class y0 {

    public boolean f91008a;

    public AbstractC14551y f91009b;

    public static final C14549x f90984c = new C14549x("2.5.29.9");

    public static final C14549x f90985d = new C14549x("2.5.29.14");

    public static final C14549x f90986e = new C14549x("2.5.29.15");

    public static final C14549x f90987f = new C14549x("2.5.29.16");

    public static final C14549x f90988g = new C14549x("2.5.29.17");

    public static final C14549x f90989h = new C14549x("2.5.29.18");

    public static final C14549x f90990i = new C14549x("2.5.29.19");

    public static final C14549x f90991j = new C14549x("2.5.29.20");

    public static final C14549x f90992k = new C14549x("2.5.29.21");

    public static final C14549x f90993l = new C14549x("2.5.29.23");

    public static final C14549x f90994m = new C14549x("2.5.29.24");

    public static final C14549x f90995n = new C14549x("2.5.29.27");

    public static final C14549x f90996o = new C14549x("2.5.29.28");

    public static final C14549x f90997p = new C14549x("2.5.29.29");

    public static final C14549x f90998q = new C14549x("2.5.29.30");

    public static final C14549x f90999r = new C14549x("2.5.29.31");

    public static final C14549x f91000s = new C14549x("2.5.29.32");

    public static final C14549x f91001t = new C14549x("2.5.29.33");

    public static final C14549x f91002u = new C14549x("2.5.29.35");

    public static final C14549x f91003v = new C14549x("2.5.29.36");

    public static final C14549x f91004w = new C14549x("2.5.29.37");

    public static final C14549x f91005x = new C14549x("2.5.29.46");

    public static final C14549x f91006y = new C14549x("2.5.29.54");

    public static final C14549x f91007z = new C14549x("1.3.6.1.5.5.7.1.1");

    public static final C14549x f90977A = new C14549x("1.3.6.1.5.5.7.1.11");

    public static final C14549x f90978B = new C14549x("1.3.6.1.5.5.7.1.12");

    public static final C14549x f90979C = new C14549x("1.3.6.1.5.5.7.1.2");

    public static final C14549x f90980D = new C14549x("1.3.6.1.5.5.7.1.3");

    public static final C14549x f90981E = new C14549x("1.3.6.1.5.5.7.1.4");

    public static final C14549x f90982F = new C14549x("2.5.29.56");

    public static final C14549x f90983G = new C14549x("2.5.29.55");

    public y0(C14512e c14512e, AbstractC14551y abstractC14551y) {
        this.f91008a = c14512e.J();
        this.f91009b = abstractC14551y;
    }

    public static oh.B a(y0 y0Var) throws IllegalArgumentException {
        try {
            return oh.B.B(y0Var.c().H());
        } catch (IOException e10) {
            throw new IllegalArgumentException("can't convert extension: " + ((Object) e10));
        }
    }

    public InterfaceC14516g b() {
        return a(this);
    }

    public AbstractC14551y c() {
        return this.f91009b;
    }

    public boolean d() {
        return this.f91008a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof y0)) {
            return false;
        }
        y0 y0Var = (y0) obj;
        return y0Var.c().A(c()) && y0Var.d() == d();
    }

    public int hashCode() {
        return d() ? c().hashCode() : ~c().hashCode();
    }

    public y0(boolean z10, AbstractC14551y abstractC14551y) {
        this.f91008a = z10;
        this.f91009b = abstractC14551y;
    }
}
