package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.Function;
import java.util.function.IntFunction;

public final class C8611nc0 extends AbstractC9112qc0 implements InterfaceC5580Mq0 {
    public C8611nc0(C4554l1[] c4554l1Arr) {
        super(c4554l1Arr);
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final int b() {
        return 3;
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C8611nc0.a(abstractC5754Pq0);
            }
        };
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22, final InterfaceC4403d1 interfaceC4403d1, final AbstractC10992r0 abstractC10992r0) {
        return a(m22, interfaceC4403d1, new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return C8611nc0.this.a(abstractC10992r0, interfaceC4403d1, i10);
            }
        });
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.f(new Function() {
            @Override
            public final Object apply(Object obj) {
                C4554l1[] c4554l1Arr;
                c4554l1Arr = ((C8611nc0) obj).f51819b;
                return c4554l1Arr;
            }
        });
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        super.a(abstractC9213rA);
    }

    public final String a(AbstractC10992r0 abstractC10992r0, InterfaceC4403d1 interfaceC4403d1, int i10) {
        C4554l1 c4554l1 = this.f51819b[i10];
        C4724u1 b10 = interfaceC4403d1.b();
        abstractC10992r0.getClass();
        return b10.a(abstractC10992r0.a(b10, c4554l1.f38297f), abstractC10992r0.a(b10, c4554l1.f37449i), abstractC10992r0.a(c4554l1)).f38298g.toString();
    }

    @Override
    public final ZY a(final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2) {
        C4554l1[] c4554l1Arr = (C4554l1[]) X3.a((Object[]) this.f51819b, new Function() {
            @Override
            public final Object apply(Object obj) {
                C4554l1 e10;
                e10 = AbstractC5308Hz.this.e(abstractC5308Hz2, (C4554l1) obj);
                return e10;
            }
        }, (Object[]) C4554l1.f37448j);
        return c4554l1Arr != this.f51819b ? new C8611nc0(c4554l1Arr) : this;
    }
}
