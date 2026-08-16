package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.AbstractC9657tr0;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C5698Or0;
import com.android.tools.r8.internal.C6382aB;
import com.android.tools.r8.internal.C9126qh;
import com.android.tools.r8.internal.EnumC5592Mw0;
import java.util.function.Consumer;

public final class C4370b6 extends AbstractC9657tr0 {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C4370b6(H5 h52, B60 b60) {
        super(r0, r4.a());
        AbstractC7552hC h10 = h();
        B60.c.a a10 = B60.c.t().a(0).a(h52.getReference());
        a10.f38814c = b60;
    }

    public static void c(C6382aB c6382aB) {
        c6382aB.getClass();
        c6382aB.a(new C9126qh(c6382aB.a(0, 1, AbstractC8999pu0.m()), 0L));
    }

    public static void d(C6382aB c6382aB) {
        c6382aB.a(c6382aB.f46462u.g(), new C5698Or0(c6382aB.b(0, EnumC5592Mw0.f42461b)));
        c6382aB.b();
    }

    public static AbstractC7552hC h() {
        return AbstractC7552hC.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4370b6.c((C6382aB) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4370b6.d((C6382aB) obj);
            }
        });
    }
}
