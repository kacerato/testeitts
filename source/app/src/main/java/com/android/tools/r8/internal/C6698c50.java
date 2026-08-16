package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;

public final class C6698c50 extends AbstractC7031e50 {

    public final C7198f50 f46962p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6698c50(C7198f50 c7198f50, com.android.tools.r8.graph.H5 h52, List list) {
        super(c7198f50, h52, list);
        this.f46962p = c7198f50;
    }

    @Override
    public final void a(int i10, int i11, W40 w40) {
        synchronized (this.f46962p.f47854b) {
            ((List) this.f46962p.f47854b.computeIfAbsent(w40, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C6698c50.a((W40) obj);
                }
            })).add(this.f47589a);
        }
    }

    public static List a(W40 w40) {
        return new ArrayList();
    }
}
