package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;

public class W3 extends AbstractC6450ae0 {

    public static final boolean f45270g = true;

    public final AbstractC8999pu0 f45271e;

    public final C9021q10 f45272f;

    public W3(AbstractC8999pu0 abstractC8999pu0, C8854p10 c8854p10, C9021q10 c9021q10) {
        super(c8854p10);
        if (!f45270g && !abstractC8999pu0.x() && !abstractC8999pu0.B().f()) {
            throw new AssertionError();
        }
        this.f45271e = abstractC8999pu0;
        this.f45272f = c9021q10;
    }

    public final AbstractC8999pu0 E() {
        AbstractC8999pu0 F10 = F();
        while (F10.r()) {
            F10 = F10.a().F();
        }
        return F10;
    }

    public AbstractC8999pu0 F() {
        return this.f45271e;
    }

    public final AbstractC8999pu0 G() {
        return this.f45271e.u() ? AbstractC8999pu0.k() : this.f45271e;
    }

    public int H() {
        int i10 = 1;
        for (AbstractC8999pu0 F10 = F(); F10.r(); F10 = F10.a().F()) {
            i10++;
        }
        return i10;
    }

    @Override
    public final W3 a() {
        return this;
    }

    @Override
    public final W3 a(C8854p10 c8854p10) {
        return c8854p10.equals(this.f46573b) ? this : (W3) this.f45272f.a(c8854p10, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return W3.this.a((C8854p10) obj, (C9021q10) obj2);
            }
        });
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof W3)) {
            return false;
        }
        W3 w32 = (W3) obj;
        if (this.f46573b != w32.f46573b) {
            return false;
        }
        return this.f45271e.equals(w32.f45271e);
    }

    @Override
    public final int hashCode() {
        return Objects.hash(this.f46573b, this.f45271e);
    }

    @Override
    public final boolean r() {
        return true;
    }

    @Override
    public final String toString() {
        return this.f46573b.toString() + " (" + this.f45271e.toString() + "[])";
    }

    public static W3 a(final AbstractC8999pu0 abstractC8999pu0, final C8854p10 c8854p10) {
        return (W3) C9021q10.a(c8854p10, new Function() {
            @Override
            public final Object apply(Object obj) {
                return W3.a(AbstractC8999pu0.this, c8854p10, (C9021q10) obj);
            }
        });
    }

    public static W3 a(AbstractC8999pu0 abstractC8999pu0, C8854p10 c8854p10, C9021q10 c9021q10) {
        return new W3(abstractC8999pu0, c8854p10, c9021q10);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 E10;
        AbstractC8999pu0 E11 = E();
        if (E11.x()) {
            E10 = E11.c().a(c4724u1);
        } else {
            if (!f45270g && !E11.s()) {
                throw new AssertionError();
            }
            E10 = E11.b().E();
        }
        return c4724u1.a(H(), E10);
    }

    public final W3 a(C8854p10 c8854p10, C9021q10 c9021q10) {
        if (f45270g || this.f46573b != c8854p10) {
            return new W3(this.f45271e, c8854p10, c9021q10);
        }
        throw new AssertionError();
    }

    @Override
    public final boolean a(C4798y c4798y) {
        return this.f45271e.a(c4798y);
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y, Function function, Set set) {
        AbstractC8999pu0 a10;
        return (!this.f45271e.y() || (a10 = this.f45271e.a(c4798y, function, set)) == this.f45271e) ? this : a(a10, this.f46573b);
    }

    @Override
    public final AbstractC6450ae0 a(AbstractC6450ae0 abstractC6450ae0, C4798y c4798y) {
        if (abstractC6450ae0.r()) {
            W3 a10 = abstractC6450ae0.a();
            C8854p10 a11 = this.f46573b.a(a10.f46573b);
            AbstractC6450ae0 a12 = a(F(), a10.F(), c4798y, a11);
            if (a12 == null) {
                return a10.f46573b == a11 ? a10 : a(a11);
            }
            if (f45270g || a12.f46573b == a11) {
                return a12;
            }
            throw new AssertionError();
        }
        if (abstractC6450ae0.s()) {
            C6949de b10 = abstractC6450ae0.b();
            b10.getClass();
            C4724u1 b11 = c4798y.b();
            if (c4798y.m()) {
                return b10.a(c4798y.b().f38068i2, C10070wI.a().a(b11.f38048f6).a(b11.f38032d6).a(), this.f46573b);
            }
            return b10.c(b11.f38068i2, this.f46573b, c4798y);
        }
        if (!f45270g && !(abstractC6450ae0 instanceof C6301Zd0)) {
            throw new AssertionError();
        }
        return b(abstractC6450ae0.f46573b);
    }

    public static AbstractC6450ae0 a(AbstractC8999pu0 abstractC8999pu0, AbstractC8999pu0 abstractC8999pu02, C4798y c4798y, C8854p10 c8854p10) {
        if (abstractC8999pu0.equals(abstractC8999pu02)) {
            return null;
        }
        if (abstractC8999pu0.y() && abstractC8999pu02.y()) {
            if (abstractC8999pu0.r() && abstractC8999pu02.r()) {
                AbstractC6450ae0 a10 = a(abstractC8999pu0.a().F(), abstractC8999pu02.a().F(), c4798y, abstractC8999pu0.B().a(abstractC8999pu02.B()));
                if (a10 == null) {
                    return null;
                }
                return a(a10, c8854p10);
            }
            return a(abstractC8999pu0.d().a(abstractC8999pu02.d(), c4798y), c8854p10);
        }
        boolean z10 = f45270g;
        if (!z10 && !abstractC8999pu0.x() && !abstractC8999pu02.x()) {
            throw new AssertionError();
        }
        if (c4798y.m()) {
            if (!z10 && !c4798y.f().h()) {
                throw new AssertionError();
            }
            C4724u1 b10 = c4798y.b();
            return C6949de.a(b10.f38068i2, c8854p10, (C4798y<? extends C4514j>) c4798y.L(), C10070wI.a().a(b10.f38048f6).a(b10.f38032d6).a());
        }
        return AbstractC8999pu0.a(c4798y.b().f38068i2, c8854p10, (C4798y<?>) c4798y).b();
    }
}
