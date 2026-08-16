package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8902pI;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C7541h80;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.M70;
import com.android.tools.r8.internal.SR;
import com.android.tools.r8.internal.W60;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;

public final class B4 extends D4 {

    public static final boolean f56359o = true;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public B4(C c10, AbstractC7552hC abstractC7552hC, Set set, ArrayList arrayList) {
        super(c10, abstractC7552hC, r9, r9, r9, r6, r8, r8, r9, set, arrayList, C7541h80.f48451c, AbstractC8902pI.f51489a);
        Set set2 = Collections.EMPTY_SET;
        W60 w60 = new W60();
        Map map = Collections.EMPTY_MAP;
    }

    public static C4 b(C4798y c4798y, M70 m70, com.android.tools.r8.graph.Y5 y52, Iterable iterable) {
        return new C4(c4798y, m70, y52, iterable);
    }

    @Override
    public final void a(com.android.tools.r8.graph.D5 d52) {
    }

    @Override
    public final B4 a(final AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0) {
        B4 b42;
        c8659ns0.b("Rewrite MainDexRootSet");
        if (abstractC5308Hz.j()) {
            b42 = this;
        } else {
            int i10 = AbstractC7552hC.f48487c;
            final C7051eC c7051eC = new C7051eC();
            this.f56395e.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    B4.a(AbstractC5308Hz.this, c7051eC, (com.android.tools.r8.graph.J2) obj);
                }
            });
            this.f56402l.forEach(new C11217g5());
            if (!f56359o && !this.f56424c.isEmpty()) {
                throw new AssertionError();
            }
            b42 = new B4(this.f56422a.a(abstractC5308Hz, c8659ns0), c7051eC.a(), this.f56402l, this.f56424c);
        }
        c8659ns0.d();
        return b42;
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, final C7051eC c7051eC, com.android.tools.r8.graph.J2 j22) {
        Objects.requireNonNull(c7051eC);
        SR.a(abstractC5308Hz, j22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7051eC.this.a((com.android.tools.r8.graph.J2) obj);
            }
        });
    }

    public final B4 b(com.android.tools.r8.graph.O5 o52, C8659ns0 c8659ns0) {
        if (o52.b()) {
            return this;
        }
        c8659ns0.b("Prune MainDexRootSet");
        this.f56402l.forEach(new C11217g5());
        if (!f56359o && !this.f56424c.isEmpty()) {
            throw new AssertionError();
        }
        B4 b42 = new B4(this.f56422a, this.f56395e, this.f56402l, this.f56424c);
        c8659ns0.d();
        return b42;
    }
}
