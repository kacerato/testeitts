package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.InterfaceC4364b0;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC7552hC;
import java.util.function.Function;

public final class C11549b {

    public static final boolean f58224f = true;

    public final AbstractC4780x0 f58225a;

    public final int f58226b;

    public final C11555d f58227c;

    public final AbstractC7552hC f58228d;

    public final E f58229e;

    public C11549b(int i10, AbstractC4780x0 abstractC4780x0, C11555d c11555d, AbstractC7552hC abstractC7552hC, E e10) {
        this.f58226b = i10;
        this.f58225a = abstractC4780x0;
        this.f58227c = c11555d;
        this.f58228d = abstractC7552hC;
        this.f58229e = e10;
        if (f58224f) {
            return;
        }
        boolean z10 = C11555d.f58239f;
        if (!z10) {
            C11555d.a(abstractC4780x0, c11555d.f58241b.keySet());
        }
        if (!z10) {
            C11555d.a(abstractC4780x0, c11555d.f58242c.keySet());
        }
        if (z10) {
            c11555d.getClass();
        } else {
            C11555d.a(abstractC4780x0, c11555d.f58244e);
        }
    }

    public final InterfaceC4364b0 a(Function function, M2 m22) {
        return (InterfaceC4364b0) function.apply(m22);
    }
}
