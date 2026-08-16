package com.android.tools.r8.internal;

import java.io.Serializable;

public final class C7333fv implements Serializable {

    public final AbstractC7500gv f48135b;

    public final Object f48136c;

    public C7333fv(AbstractC7500gv abstractC7500gv, Object obj) {
        abstractC7500gv.getClass();
        this.f48135b = abstractC7500gv;
        this.f48136c = obj;
    }

    public final Object a() {
        return this.f48136c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7333fv)) {
            return false;
        }
        C7333fv c7333fv = (C7333fv) obj;
        if (this.f48135b.equals(c7333fv.f48135b)) {
            return this.f48135b.b(this.f48136c, c7333fv.f48136c);
        }
        return false;
    }

    public final int hashCode() {
        AbstractC7500gv abstractC7500gv = this.f48135b;
        Object obj = this.f48136c;
        if (obj != null) {
            return abstractC7500gv.a(obj);
        }
        abstractC7500gv.getClass();
        return 0;
    }

    public final String toString() {
        return ((Object) this.f48135b) + ".wrap(" + this.f48136c + ")";
    }
}
