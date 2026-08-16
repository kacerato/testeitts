package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;

public final class C6611bc0 extends AbstractC8489mr0 {

    public final C4554l1[] f46801c;

    public C6611bc0(C4798y c4798y, com.android.tools.r8.graph.M2 m22, C4554l1[] c4554l1Arr) {
        super(c4798y, m22);
        this.f46801c = c4554l1Arr;
    }

    public static void a(final C4724u1 c4724u1) {
        synchronized (c4724u1) {
            c4724u1.a(c4724u1.d(c4724u1.b("[Ljava/lang/Object;")));
        }
        c4724u1.f38152s6.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6611bc0.a(C4724u1.this, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        int i10 = 0;
        if (this.f50436a.m()) {
            ArrayList arrayList = new ArrayList();
            C4554l1[] c4554l1Arr = this.f46801c;
            int length = c4554l1Arr.length;
            while (i10 < length) {
                a(arrayList, c4554l1Arr[i10]);
                i10++;
            }
            arrayList.add(new C6120Wa(this.f46801c));
            arrayList.add(new C6440ab(EnumC5477Kw0.f41824b));
            return a(arrayList);
        }
        C4724u1 b10 = this.f50436a.b();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new C10546z9(this.f46801c.length, EnumC5477Kw0.f41825c));
        arrayList2.add(new C10273xa(b10.f38092l2));
        arrayList2.add(new C10443yb(EnumC5477Kw0.f41824b, 1));
        while (true) {
            C4554l1[] c4554l1Arr2 = this.f46801c;
            if (i10 >= c4554l1Arr2.length) {
                EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
                arrayList2.add(new C8938pa(enumC5477Kw0, 1));
                arrayList2.add(new C6440ab(enumC5477Kw0));
                return a(arrayList2);
            }
            C4554l1 c4554l1 = c4554l1Arr2[i10];
            arrayList2.add(new C8938pa(EnumC5477Kw0.f41824b, 1));
            arrayList2.add(new C10546z9(i10, EnumC5477Kw0.f41825c));
            a(arrayList2, c4554l1);
            arrayList2.add(new Z8(YV.f45995b));
            i10++;
        }
    }

    public static void a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        String V02 = m22.V0();
        synchronized (c4724u1) {
            c4724u1.a(c4724u1.d(c4724u1.b(V02)));
        }
        c4724u1.c(m23.V0());
    }

    @Override
    public final int a() {
        return this.f46801c.length + 3;
    }

    public final void a(final ArrayList arrayList, final C4554l1 c4554l1) {
        final C4724u1 b10 = this.f50436a.b();
        arrayList.add(new C8938pa(EnumC5477Kw0.f41824b, 0));
        arrayList.add(new T9(c4554l1));
        if (c4554l1.f37449i.P0()) {
            b10.f38152s6.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C6611bc0.a(C4554l1.this, arrayList, b10, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2);
                }
            });
        }
    }

    public static void a(C4554l1 c4554l1, List list, C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        if (m22 == c4554l1.f37449i) {
            list.add(new C7437ga(184, c4724u1.a(m23, c4724u1.a(m23, m22), c4724u1.f38082k0), false));
        }
    }
}
