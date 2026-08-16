package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Objects;

public final class C7057eE {

    public final LinkedHashMap f47643a;

    public final LinkedHashMap f47644b;

    public final com.android.tools.r8.graph.A2 f47645c;

    public final ArrayList f47646d;

    public final com.android.tools.r8.graph.O2 f47647e;

    public C7057eE(LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, com.android.tools.r8.graph.A2 a22, ArrayList arrayList, com.android.tools.r8.graph.O2 o22) {
        this.f47643a = linkedHashMap;
        this.f47644b = linkedHashMap2;
        this.f47645c = a22;
        this.f47646d = arrayList;
        this.f47647e = o22;
    }

    public final boolean equals(Object obj) {
        if (obj != null && C7057eE.class == obj.getClass()) {
            C7057eE c7057eE = (C7057eE) obj;
            if (this.f47643a.equals(c7057eE.f47643a) && this.f47644b.equals(c7057eE.f47644b) && this.f47645c == c7057eE.f47645c && this.f47646d.equals(c7057eE.f47646d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f47643a, this.f47644b, this.f47645c, this.f47646d, this.f47647e);
    }
}
