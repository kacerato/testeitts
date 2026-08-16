package com.android.tools.r8.graph;

import com.android.dx.rop.code.AccessFlags;
import com.android.tools.r8.dex.C4319t;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5313Ib;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import java.util.function.BooleanSupplier;

public class Q extends AbstractC4458g<Q> {

    public static final boolean f36716f = true;

    public Q(int i10) {
        super(i10, i10);
    }

    public static Q e(int i10) {
        return new Q(i10 & 95807);
    }

    public static Q g(int i10) {
        if (f36716f || (i10 & AccessFlags.INNER_CLASS_FLAGS) == i10) {
            return new Q(i10 & AccessFlags.INNER_CLASS_FLAGS);
        }
        throw new AssertionError();
    }

    public int D() {
        boolean z10 = f36716f;
        if (!z10 && J() && !G()) {
            throw new AssertionError();
        }
        if (!z10 && J() && L()) {
            throw new AssertionError();
        }
        if (!z10 && J() && e()) {
            throw new AssertionError();
        }
        if (!z10 && J() && I()) {
            throw new AssertionError();
        }
        return this.f37197c;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    public boolean G() {
        return AbstractC4458g.d(this.f37197c, 1024);
    }

    public boolean H() {
        return AbstractC4458g.d(this.f37197c, 8192);
    }

    public boolean I() {
        return AbstractC4458g.d(this.f37197c, 16384);
    }

    public boolean J() {
        return AbstractC4458g.d(this.f37197c, 512);
    }

    public final boolean K() {
        return AbstractC4458g.d(this.f37197c, 65536);
    }

    public boolean L() {
        return AbstractC4458g.d(this.f37197c, 32);
    }

    public void M() {
        a(1024);
    }

    public void N() {
        a(8192);
    }

    public void O() {
        b(1024);
    }

    public void P() {
        b(16384);
    }

    public void Q() {
        b(512);
    }

    public void R() {
        b(32);
    }

    public final boolean a(C5313Ib c5313Ib, boolean z10) {
        if (!J()) {
            return (H() || (e() && G())) ? false : true;
        }
        if (c5313Ib.d(C5313Ib.f41139j) && L()) {
            return false;
        }
        return ((c5313Ib.c(C4319t.f35953b) && !G() && !z10) || e() || I()) ? false : true;
    }

    @Override
    public final AbstractC7552hC b() {
        return new C7051eC().b((Iterable) AbstractC4458g.f37194d).a("interface").a("abstract").a("annotation").a("enum").a("super").a("record").a();
    }

    @Override
    public final AbstractC7552hC c() {
        return new C7051eC().b((Iterable) super.c()).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return Q.this.J();
            }
        }).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return Q.this.G();
            }
        }).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return Q.this.H();
            }
        }).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return Q.this.I();
            }
        }).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return Q.this.L();
            }
        }).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return Q.this.K();
            }
        }).a();
    }

    @Override
    public final AbstractC4458g E() {
        return this;
    }
}
