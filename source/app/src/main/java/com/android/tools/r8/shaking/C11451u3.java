package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4364b0;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.C5417Jv0;
import java.util.function.Predicate;

public final class C11451u3 implements InterfaceC4403d1 {

    public final C4798y f57889a;

    public final Predicate f57890b;

    public final AbstractC11468v3 f57891c;

    public C11451u3(AbstractC11468v3 abstractC11468v3, C4798y c4798y, Predicate predicate) {
        this.f57891c = abstractC11468v3;
        this.f57889a = c4798y;
        this.f57890b = predicate;
    }

    @Override
    public final C4724u1 b() {
        return this.f57889a.b();
    }

    @Override
    public final InterfaceC4364b0 f(com.android.tools.r8.graph.M2 m22) {
        throw new C5417Jv0("Add support for multiple definitions with rule evaluation");
    }

    @Override
    public final com.android.tools.r8.graph.E0 g(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f57891c.f57914p ? ((C4514j) this.f57889a.f()).c(m22) : this.f57889a.g(m22));
        if (a10 == null || !this.f57890b.test(a10)) {
            return null;
        }
        return a10;
    }
}
