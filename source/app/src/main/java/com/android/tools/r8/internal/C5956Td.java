package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;

public final class C5956Td extends AbstractC6014Ud {

    public final C7719iC f44512b;

    public C5956Td(com.android.tools.r8.graph.V v10, C7719iC c7719iC) {
        super(v10);
        this.f44512b = c7719iC;
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, Consumer consumer) {
        Collection collection = (AbstractC7552hC) this.f44512b.f48872f.get(m22);
        if (collection == null) {
            int i10 = AbstractC7552hC.f48487c;
            collection = C6190Xe0.f45779e;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            consumer.accept((com.android.tools.r8.graph.E0) it.next());
        }
    }

    public final String toString() {
        return "preloaded(" + this.f44512b.f48873g + ")";
    }

    @Override
    public final Collection a() {
        return this.f44512b.f();
    }
}
