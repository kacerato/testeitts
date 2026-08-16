package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class C5993Tu {

    public static final boolean f44607c = true;

    public final AbstractC8552nC f44608a;

    public final C5628Nl0 f44609b;

    public C5993Tu(C5628Nl0 c5628Nl0, AbstractC8552nC abstractC8552nC) {
        this.f44609b = c5628Nl0;
        this.f44608a = abstractC8552nC;
    }

    public final void a(Consumer consumer) {
        this.f44608a.values().forEach(consumer);
        consumer.accept(this.f44609b);
    }

    public final PT a(com.android.tools.r8.graph.M2 m22) {
        PT pt = (PT) this.f44608a.get(m22);
        if (f44607c || pt != null) {
            return pt;
        }
        throw new AssertionError();
    }
}
