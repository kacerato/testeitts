package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class C9089qS extends AbstractC5397Jl0 {

    public final C10090wS f51784b;

    public C9089qS(C10090wS c10090wS) {
        this.f51784b = c10090wS;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f51784b.f53507h.containsKey(obj);
    }

    @Override
    public final Iterator iterator() {
        return new C9255rS(this.f51784b);
    }

    @Override
    public final boolean remove(Object obj) {
        C10090wS c10090wS = this.f51784b;
        c10090wS.getClass();
        C9923vS c9923vS = new C9923vS(c10090wS, obj);
        ArrayList arrayList = new ArrayList();
        JK.a(arrayList, c9923vS);
        List unmodifiableList = Collections.unmodifiableList(arrayList);
        C9422sS c9422sS = (C9422sS) c10090wS.f53507h.get(obj);
        C9589tS c9589tS = c9422sS == null ? null : c9422sS.f52360a;
        while (c9589tS != null) {
            C9589tS c9589tS2 = c9589tS.f52609f;
            C10090wS.a(c10090wS, c9589tS);
            c9589tS = c9589tS2;
        }
        return !unmodifiableList.isEmpty();
    }

    @Override
    public final int size() {
        return this.f51784b.f53507h.size();
    }
}
