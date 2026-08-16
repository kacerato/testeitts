package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.Function;
import java.util.function.IntFunction;

public final class C8945pc0 extends AbstractC9112qc0 implements InterfaceC5580Mq0 {

    public final String[] f51572d;

    public C8945pc0(String[] strArr, C4554l1[] c4554l1Arr) {
        super(c4554l1Arr);
        this.f51572d = strArr;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final int b() {
        return 4;
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C8945pc0.a(abstractC5754Pq0);
            }
        };
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        AbstractC5754Pq0 f10 = abstractC5754Pq0.f(new Function() {
            @Override
            public final Object apply(Object obj) {
                C4554l1[] c4554l1Arr;
                c4554l1Arr = ((C8945pc0) obj).f51819b;
                return c4554l1Arr;
            }
        });
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                String[] strArr;
                strArr = ((C8945pc0) obj).f51572d;
                return strArr;
            }
        };
        C8778oc0 c8778oc0 = new C8778oc0();
        f10.a(function, c8778oc0, c8778oc0);
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22, InterfaceC4403d1 interfaceC4403d1, AbstractC10992r0 abstractC10992r0) {
        return a(m22, interfaceC4403d1, new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return C8945pc0.this.a(i10);
            }
        });
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        super.a(abstractC9213rA);
    }

    public final String a(int i10) {
        return this.f51572d[i10];
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
        return c4554l1Arr != this.f51819b ? new C8945pc0(this.f51572d, c4554l1Arr) : this;
    }
}
