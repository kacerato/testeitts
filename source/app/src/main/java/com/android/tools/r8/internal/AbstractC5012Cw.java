package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.function.Function;

public abstract class AbstractC5012Cw extends AbstractC5070Dw {

    public final C4798y f39384g;

    public final C7215fB f39385h;

    public final C4724u1 f39386i;

    public final C7207f80 f39387j;

    public final C6286Yx0 f39388k;

    public final AbstractC5012Cw f39389l;

    public AbstractC5012Cw(C4798y c4798y, C7215fB c7215fB, C7207f80 c7207f80, C9603tZ c9603tZ) {
        super(c9603tZ);
        this.f39388k = new C6286Yx0(2);
        this.f39389l = this;
        this.f39384g = c4798y;
        this.f39385h = c7215fB;
        this.f39386i = c4798y.b();
        this.f39387j = c7207f80;
    }

    public abstract int b(com.android.tools.r8.graph.F5 f52);

    public final void b() {
        this.f39388k.b((C6286Yx0) new C10673zw(this));
        this.f39388k.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((AbstractC4954Bw) obj).b();
            }
        });
    }
}
