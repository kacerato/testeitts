package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

public final class HY extends AbstractC9428sV {

    public final C10090wS f40783d;

    public HY(C10090wS c10090wS) {
        this.f40783d = c10090wS;
    }

    @Override
    public final void clear() {
        this.f40783d.clear();
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.f40783d.f53507h.containsKey(obj);
    }

    @Override
    public final Set e() {
        return new GY(this);
    }

    @Override
    public final Object get(Object obj) {
        if (!this.f40783d.f53507h.containsKey(obj)) {
            return null;
        }
        C10090wS c10090wS = this.f40783d;
        c10090wS.getClass();
        return new C8755oS(c10090wS, obj);
    }

    @Override
    public final boolean isEmpty() {
        return this.f40783d.f53505f == null;
    }

    @Override
    public final Set o() {
        return this.f40783d.keySet();
    }

    @Override
    public final Object remove(Object obj) {
        if (!this.f40783d.f53507h.containsKey(obj)) {
            return null;
        }
        C10090wS c10090wS = this.f40783d;
        c10090wS.getClass();
        C9923vS c9923vS = new C9923vS(c10090wS, obj);
        ArrayList arrayList = new ArrayList();
        JK.a(arrayList, c9923vS);
        List unmodifiableList = Collections.unmodifiableList(arrayList);
        C9422sS c9422sS = (C9422sS) c10090wS.f53507h.get(obj);
        C9589tS c9589tS = c9422sS != null ? c9422sS.f52360a : null;
        while (c9589tS != null) {
            C9589tS c9589tS2 = c9589tS.f52609f;
            C10090wS.a(c10090wS, c9589tS);
            c9589tS = c9589tS2;
        }
        return unmodifiableList;
    }

    @Override
    public final int size() {
        return this.f40783d.keySet().size();
    }
}
