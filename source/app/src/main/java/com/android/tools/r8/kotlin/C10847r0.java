package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.C10420yQ;
import com.android.tools.r8.internal.DQ;
import com.android.tools.r8.internal.FQ;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.function.Consumer;

public final class C10847r0 implements InterfaceC11195f0 {

    public final FQ f55449a;

    public final C10836p0 f55450b;

    public C10847r0(FQ fq, C10836p0 c10836p0) {
        this.f55449a = fq;
        this.f55450b = c10836p0;
    }

    public final void a(Consumer consumer, C10420yQ c10420yQ) {
        consumer.accept(new DQ(this.f55449a, c10420yQ));
    }

    public final boolean b(final Consumer consumer, C4798y c4798y) {
        if (this.f55449a != null || this.f55450b != null) {
            return this.f55450b.b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10847r0.this.a(consumer, (C10420yQ) obj);
                }
            }, c4798y);
        }
        consumer.accept(DQ.f39511c);
        return false;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        C10836p0 c10836p0 = this.f55450b;
        if (c10836p0 != null) {
            c10836p0.a(interfaceC4403d1);
        }
    }
}
