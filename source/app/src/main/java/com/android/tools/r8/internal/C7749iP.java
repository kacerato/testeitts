package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.function.Consumer;

public final class C7749iP extends AbstractC7914jP {

    public static final boolean f48932b = true;

    public final ArrayList f48933a;

    public C7749iP(ArrayList arrayList) {
        boolean z10 = f48932b;
        if (!z10 && arrayList == null) {
            throw new AssertionError();
        }
        if (!z10 && arrayList.isEmpty()) {
            throw new AssertionError();
        }
        this.f48933a = arrayList;
    }

    @Override
    public final boolean a() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C7749iP.class != obj.getClass()) {
            return false;
        }
        return this.f48933a.equals(((C7749iP) obj).f48933a);
    }

    public final int hashCode() {
        return this.f48933a.hashCode();
    }

    public final String toString() {
        return this.f48933a.toString();
    }

    @Override
    public final void a(Consumer consumer) {
        this.f48933a.forEach(consumer);
    }
}
