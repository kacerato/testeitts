package com.android.tools.r8.internal;

import java.io.Serializable;

public final class C8866p50 implements Serializable {

    public final Object f51436b;

    public final Object f51437c;

    public C8866p50(Object obj, Object obj2) {
        this.f51436b = obj;
        this.f51437c = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8866p50)) {
            return false;
        }
        C8866p50 c8866p50 = (C8866p50) obj;
        return GJ.a(this.f51436b, c8866p50.f51436b) && GJ.a(this.f51437c, c8866p50.f51437c);
    }

    public final int hashCode() {
        Object obj = this.f51436b;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f51437c;
        return hashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f51436b + ", " + this.f51437c + ')';
    }
}
