package com.android.tools.r8.internal;

public final class C8722oD {

    public final int f51194a;

    public final Object f51195b;

    public C8722oD(int i10, Object obj) {
        this.f51194a = i10;
        this.f51195b = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8722oD)) {
            return false;
        }
        C8722oD c8722oD = (C8722oD) obj;
        return this.f51194a == c8722oD.f51194a && GJ.a(this.f51195b, c8722oD.f51195b);
    }

    public final int hashCode() {
        int hashCode = Integer.hashCode(this.f51194a) * 31;
        Object obj = this.f51195b;
        return hashCode + (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        return "IndexedValue(index=" + this.f51194a + ", value=" + this.f51195b + ')';
    }
}
