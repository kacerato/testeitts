package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

public final class C6744cN {

    public static final boolean f47026b = true;

    public final ArrayList f47027a;

    public C6744cN(ArrayList arrayList) {
        boolean z10 = f47026b;
        if (!z10 && arrayList == null) {
            throw new AssertionError();
        }
        if (!z10 && arrayList.isEmpty()) {
            throw new AssertionError();
        }
        this.f47027a = arrayList;
    }

    public final void a(Consumer consumer) {
        this.f47027a.forEach(consumer);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C6744cN.class != obj.getClass()) {
            return false;
        }
        return this.f47027a.equals(((C6744cN) obj).f47027a);
    }

    public final int hashCode() {
        return this.f47027a.hashCode();
    }

    public final String toString() {
        return (String) this.f47027a.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C10251xP) obj).toString();
            }
        }).collect(Collectors.joining(", "));
    }
}
