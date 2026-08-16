package com.google.android.gms.measurement.internal;

import androidx.collection.LruCache;
import java.util.Objects;

public final class V2 extends LruCache {

    public final C12266c3 f62945a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V2(C12266c3 c12266c3, int i10) {
        super(20);
        Objects.requireNonNull(c12266c3);
        this.f62945a = c12266c3;
    }

    @Override
    public final Object create(Object obj) {
        String str = (String) obj;
        G0.A.l(str);
        return this.f62945a.o(str);
    }
}
