package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.AbstractC11432t1;
import java.util.function.Consumer;

public final class C4850Ab0 {

    public int f38636a = 0;

    public int f38637b = 0;

    public int f38638c = 0;

    public int f38639d = 0;

    public static C4850Ab0 a(final C4798y c4798y) {
        final C4850Ab0 c4850Ab0 = new C4850Ab0();
        for (com.android.tools.r8.graph.H2 h22 : ((C4514j) c4798y.f()).d()) {
            c4850Ab0.a(c4798y, h22);
            h22.k(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C4850Ab0.this.a(c4798y, (com.android.tools.r8.graph.G5) obj);
                }
            });
        }
        return c4850Ab0;
    }

    public final void a(C4798y c4798y, com.android.tools.r8.graph.D5 d52) {
        AbstractC11432t1 a10 = c4798y.a(d52);
        C8570nJ E10 = c4798y.E();
        this.f38636a++;
        this.f38637b = C8704o7.a(!a10.b(E10)) + this.f38637b;
        this.f38638c = C8704o7.a(!a10.c(E10)) + this.f38638c;
        this.f38639d = C8704o7.a(!a10.e(E10)) + this.f38639d;
    }
}
