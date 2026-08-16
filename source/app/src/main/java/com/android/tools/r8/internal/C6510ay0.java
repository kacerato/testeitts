package com.android.tools.r8.internal;

import java.util.AbstractCollection;
import java.util.List;
import java.util.Objects;

public class C6510ay0 implements InterfaceC9645tn0 {

    public final AbstractCollection f46668a;

    public final AbstractCollection f46669b;

    public final boolean f46670c;

    /* JADX WARN: Multi-variable type inference failed */
    public C6510ay0(List list, List list2, boolean z10) {
        this.f46668a = (AbstractCollection) list;
        this.f46669b = (AbstractCollection) list2;
        this.f46670c = z10;
    }

    @Override
    public final Object[] a(C9267rY c9267rY) {
        return new Object[]{c9267rY.a(this.f46668a), Boolean.valueOf(this.f46670c), c9267rY.a(a())};
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6510ay0)) {
            return false;
        }
        C6510ay0 c6510ay0 = (C6510ay0) obj;
        return this.f46670c == c6510ay0.f46670c && Objects.equals(this.f46668a, c6510ay0.f46668a) && Objects.equals(this.f46669b, c6510ay0.f46669b);
    }

    public final int hashCode() {
        return Objects.hash(this.f46668a, this.f46669b, Boolean.valueOf(this.f46670c));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractCollection, java.util.List<com.android.tools.r8.graph.M2>] */
    public List<com.android.tools.r8.graph.M2> a() {
        return this.f46669b;
    }
}
