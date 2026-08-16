package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class A70 extends AbstractC5055Do0 {

    public static final boolean f38536c = true;

    public final C4798y f38537a;

    public final C4724u1 f38538b;

    public A70(C4798y c4798y) {
        this.f38537a = c4798y;
        this.f38538b = c4798y.b();
    }

    public static void a(Consumer consumer, C4798y c4798y) {
        consumer.accept(new C7370g7(c4798y));
        consumer.accept(new Z7(c4798y));
        consumer.accept(new C6776cc(c4798y));
        consumer.accept(new C7993jt(c4798y));
        consumer.accept(new C5072Dx(c4798y));
        consumer.accept(new C9903vI(c4798y));
        consumer.accept(new C9259rU(c4798y));
        consumer.accept(new C5802Ql0(c4798y));
    }

    public abstract boolean a(F1 f12);

    public abstract com.android.tools.r8.graph.A2 b();

    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.a(b());
    }

    public abstract com.android.tools.r8.graph.A2 c();

    @Override
    public EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        if (h02.getReference().a(c())) {
            a(c7215fB, ee2, vj2);
            return ee2;
        }
        if (h02.getReference().a(b())) {
            a(c7215fB, ee2, vj2, c10696a);
        }
        return ee2;
    }

    public final boolean a(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.a(c());
    }

    public void a(C7215fB c7215fB, EE ee2, VJ vj2, C10696a c10696a) {
        C10340xw0 b10 = vj2.b(0);
        if (b10.i().d(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return A70.this.a((AbstractC10561zE) obj);
            }
        })) {
            VJ e02 = b10.i().r().e0();
            if (!f38536c && !e02.T1()) {
                throw new AssertionError();
            }
            vj2.d().a(e02.b(0), c10696a);
            ee2.i();
        }
    }

    public final void a(C7215fB c7215fB, EE ee2, VJ vj2) {
        C10340xw0 b10 = vj2.b(0);
        C10340xw0 d10 = vj2.d();
        F1 a10 = b10.a(this.f38537a, c7215fB.j(), M1.f42128a);
        if (a(a10)) {
            if (d10 != null) {
                ee2.b(this.f38537a.f38427t.a(a10.J().j0()).a(this.f38537a, c7215fB, vj2));
                return;
            } else {
                ee2.i();
                return;
            }
        }
        if (b10.i().d(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return A70.this.b((AbstractC10561zE) obj);
            }
        })) {
            VJ e02 = b10.i().r().e0();
            if (!f38536c && !e02.R1()) {
                throw new AssertionError();
            }
            if (d10 != null) {
                d10.f(e02.b(0));
            }
            ee2.a(this.f38537a, c7215fB.j());
        }
    }
}
