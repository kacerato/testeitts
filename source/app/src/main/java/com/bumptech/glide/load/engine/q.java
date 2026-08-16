package com.bumptech.glide.load.engine;

import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class q {

    public final Map<C.e, k<?>> f59266a = new HashMap();

    public final Map<C.e, k<?>> f59267b = new HashMap();

    public k<?> a(C.e eVar, boolean z10) {
        return c(z10).get(eVar);
    }

    @VisibleForTesting
    public Map<C.e, k<?>> b() {
        return Collections.unmodifiableMap(this.f59266a);
    }

    public final Map<C.e, k<?>> c(boolean z10) {
        return z10 ? this.f59267b : this.f59266a;
    }

    public void d(C.e eVar, k<?> kVar) {
        c(kVar.q()).put(eVar, kVar);
    }

    public void e(C.e eVar, k<?> kVar) {
        Map<C.e, k<?>> c10 = c(kVar.q());
        if (kVar.equals(c10.get(eVar))) {
            c10.remove(eVar);
        }
    }
}
