package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class C5377Jd {

    public static final C5377Jd f41434b = new C5377Jd(Collections.EMPTY_SET);

    public final Set f41435a;

    public C5377Jd(Set set) {
        this.f41435a = Collections.unmodifiableSet(set);
    }

    public final C5377Jd a(C5377Jd c5377Jd) {
        if (this.f41435a.isEmpty()) {
            return c5377Jd;
        }
        if (!c5377Jd.f41435a.isEmpty()) {
            HashSet hashSet = new HashSet(this.f41435a);
            hashSet.addAll(c5377Jd.f41435a);
            if (this.f41435a.size() != hashSet.size()) {
                return new C5377Jd(hashSet);
            }
        }
        return this;
    }
}
