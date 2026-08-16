package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.AbstractC4709t5;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4653q5;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.C6162Ws0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.C6949de;
import java.util.function.BiPredicate;
import java.util.function.Function;

public abstract class R2 {
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.Map, com.android.tools.r8.internal.u1] */
    public static boolean a(final C4798y c4798y, C6949de c6949de, final AbstractC4709t5 abstractC4709t5) {
        if (c6949de.E() == c4798y.b().f38068i2 && !c6949de.F().f53468a.isEmpty()) {
            return c6949de.F().a(new BiPredicate() {
                @Override
                public final boolean test(Object obj, Object obj2) {
                    boolean a10;
                    a10 = R2.a(C4798y.this, abstractC4709t5, (com.android.tools.r8.graph.M2) obj);
                    return a10;
                }
            });
        }
        com.android.tools.r8.graph.M2 E10 = c6949de.E();
        if (E10 == c4798y.b().f38068i2) {
            return true;
        }
        return a(c4798y, abstractC4709t5, E10);
    }

    public static boolean a(final C4798y c4798y, final InterfaceC4653q5 interfaceC4653q5, com.android.tools.r8.graph.M2 m22) {
        return ((AbstractC4709t5) interfaceC4653q5).a(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return R2.a(InterfaceC4653q5.this, c4798y, (com.android.tools.r8.graph.H2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                AbstractC6333Zs0 abstractC6333Zs0;
                abstractC6333Zs0 = C6276Ys0.f46097c;
                return abstractC6333Zs0;
            }
        }, c4798y.f()).c();
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [com.android.tools.r8.graph.E0] */
    public static AbstractC6333Zs0 a(InterfaceC4653q5 interfaceC4653q5, C4798y c4798y, com.android.tools.r8.graph.H2 h22) {
        AbstractC4709t5 abstractC4709t5 = (AbstractC4709t5) interfaceC4653q5;
        abstractC4709t5.getClass();
        if (h22.isInterface() && abstractC4709t5.f37785d.contains(h22)) {
            return C6162Ws0.f45559c;
        }
        Z4.c<?> o10 = ((C4514j) c4798y.f()).h(h22, c4798y.b().f37859F4.f38229g).o();
        if (o10 != null) {
            com.android.tools.r8.graph.M2 type = o10.d().getType();
            if (!type.a(c4798y.b().f38068i2) && !type.a(c4798y.b().f38108n2)) {
                return C6162Ws0.f45559c;
            }
        }
        return C6276Ys0.f46097c;
    }
}
