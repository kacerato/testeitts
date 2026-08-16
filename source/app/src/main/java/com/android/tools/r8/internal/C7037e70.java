package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10988q0;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.Consumer;

public final class C7037e70 extends AbstractC10988q0 {

    public static final boolean f47610f = true;

    public final WR f47611d;

    public final AbstractC10992r0 f47612e;

    public C7037e70(C4798y c4798y) {
        super(c4798y.b());
        this.f47611d = c4798y.E().x();
        this.f47612e = c4798y.s();
    }

    public static void a(C4798y c4798y) {
        if (c4798y.E().x().b().a()) {
            AbstractC9109qb0 abstractC9109qb0 = c4798y.E().f50596E1;
            if (abstractC9109qb0 == null || !(abstractC9109qb0 instanceof C8775ob0)) {
                c4798y.f38419l = new C7037e70(c4798y);
            }
        }
    }

    public final void b(final String str) {
        this.f47611d.b().a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7037e70.a(String.this, (com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    @Override
    public final AbstractC10992r0 c() {
        return this.f47612e;
    }

    @Override
    public final com.android.tools.r8.graph.L2 e(com.android.tools.r8.graph.M2 m22) {
        AbstractC10643zm b10 = this.f47611d.b();
        if (b10.a(m22)) {
            return b10.c(m22).f36592f;
        }
        return null;
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22) {
        AbstractC10643zm b10 = this.f47611d.b();
        com.android.tools.r8.graph.L2 l22 = b10.a(m22) ? b10.c(m22).f36592f : null;
        return l22 != null ? l22 : this.f47612e.c(m22);
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(C4425e4 c4425e4, C8570nJ c8570nJ) {
        com.android.tools.r8.graph.M2 b10 = c4425e4.b();
        AbstractC10643zm b11 = this.f47611d.b();
        if ((b11.a(b10) ? b11.c(b10).f36592f : null) != null) {
            return c4425e4.c();
        }
        return this.f47612e.a(c4425e4, c8570nJ);
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        AbstractC10643zm b10 = this.f47611d.b();
        if ((b10.a(m22) ? b10.c(m22).f36592f : null) != null) {
            return a22.f38298g;
        }
        return this.f47612e.a(a22);
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(C4554l1 c4554l1) {
        com.android.tools.r8.graph.M2 m22 = c4554l1.f38297f;
        AbstractC10643zm b10 = this.f47611d.b();
        if ((b10.a(m22) ? b10.c(m22).f36592f : null) != null) {
            return c4554l1.f38298g;
        }
        return this.f47612e.a(c4554l1);
    }

    @Override
    public final String a(String str) {
        if (!f47610f) {
            b(str);
        }
        return this.f47612e.a(str);
    }

    public static void a(String str, com.android.tools.r8.graph.M2 m22) {
        if (!f47610f && m22.z0().equals(str)) {
            throw new AssertionError();
        }
    }
}
