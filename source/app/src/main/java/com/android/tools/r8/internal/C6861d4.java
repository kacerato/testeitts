package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C6694c4;
import com.android.tools.r8.internal.C9029q4;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.function.Function;

public final class C6861d4 extends L70 {
    public C6861d4(C6694c4 c6694c4) {
        super(c6694c4);
    }

    @Override
    public final L70 a() {
        return new C6861d4((C6694c4) this.f41869a);
    }

    @Override
    public final InterfaceC8519n1 b(com.android.tools.r8.graph.M2 m22) {
        C7695i4 c7695i4 = new C7695i4();
        c7695i4.f48774b = m22;
        return c7695i4;
    }

    @Override
    public final InterfaceC8185l1 c() {
        boolean z10 = C6694c4.f46953b;
        return new C6694c4.a(new LinkedHashMap());
    }

    @Override
    public final Comparator d() {
        return Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((InterfaceC9186r1) obj).a();
            }
        });
    }

    @Override
    public final L70 f() {
        return this;
    }

    @Override
    public final InterfaceC8853p1 a(com.android.tools.r8.graph.A2 a22) {
        C9029q4.a d10 = C9029q4.d();
        d10.f51711b = a22;
        return d10;
    }
}
