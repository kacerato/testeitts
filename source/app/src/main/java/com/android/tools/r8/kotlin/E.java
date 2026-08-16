package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C7751iQ;
import com.android.tools.r8.internal.C7916jQ;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class E implements InterfaceC11195f0 {

    public final int f55039a;

    public final int f55040b;

    public final AbstractC7552hC f55041c;

    public final D f55042d;

    public E(int i10, int i11, AbstractC7552hC abstractC7552hC, D d10) {
        this.f55039a = i10;
        this.f55040b = i11;
        this.f55041c = abstractC7552hC;
        this.f55042d = d10;
    }

    public static Consumer a(D d10) {
        Objects.requireNonNull(d10);
        return new I0(d10);
    }

    public final boolean b(Consumer consumer, C4798y c4798y) {
        final C7751iQ c7751iQ = new C7751iQ(this.f55039a, this.f55040b);
        consumer.accept(c7751iQ);
        return this.f55042d.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7751iQ.this.a((C7916jQ) obj);
            }
        }, c4798y) | AbstractC10752b0.a(c4798y, this.f55041c, c7751iQ.f48937c, new L0());
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        C5480Ky.a((Iterable) this.f55041c, new Function() {
            @Override
            public final Object apply(Object obj) {
                return E.a((D) obj);
            }
        }, (Object) interfaceC4403d1);
        this.f55042d.a(interfaceC4403d1);
    }
}
