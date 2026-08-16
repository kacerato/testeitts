package com.android.tools.r8.internal;

import java.util.ArrayDeque;
import java.util.LinkedHashSet;
import java.util.Set;

public final class C7048eB {

    public static final boolean f47628d = true;

    public final LinkedHashSet f47629a;

    public final Set f47630b;

    public final ArrayDeque f47631c;

    public C7048eB(LinkedHashSet linkedHashSet, Set set, ArrayDeque arrayDeque) {
        if (!f47628d && !linkedHashSet.containsAll(set)) {
            throw new AssertionError();
        }
        this.f47629a = linkedHashSet;
        this.f47630b = set;
        this.f47631c = arrayDeque;
    }

    public final boolean equals(Object obj) {
        C7048eB c7048eB = (C7048eB) obj;
        return this.f47629a.equals(c7048eB.f47629a) && this.f47630b.equals(c7048eB.f47630b);
    }

    public final int hashCode() {
        throw new C5417Jv0();
    }
}
