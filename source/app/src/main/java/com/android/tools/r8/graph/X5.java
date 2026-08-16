package com.android.tools.r8.graph;

import java.util.AbstractCollection;
import java.util.Objects;
import java.util.concurrent.ConcurrentSkipListSet;
import org.apache.commons.math3.geometry.VectorFormat;

public final class X5 {

    public static final boolean f36962d = true;

    public final M2 f36963a;

    public int f36964b = -1;

    public AbstractCollection f36965c = Y5.f36986e;

    public X5(M2 m22) {
        this.f36963a = m22;
    }

    public final void a() {
        if (this.f36965c == Y5.f36986e) {
            this.f36965c = new ConcurrentSkipListSet(new u.K0());
        }
    }

    public final boolean b() {
        boolean z10 = f36962d;
        if (z10 || this.f36964b != -1) {
            if (z10 || this.f36963a.I0()) {
                return this.f36964b == -2;
            }
            throw new AssertionError();
        }
        throw new AssertionError((Object) ("Program class missing: " + ((Object) this)));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof X5)) {
            return false;
        }
        X5 x52 = (X5) obj;
        return x52.f36963a == this.f36963a && x52.f36965c.equals(this.f36965c);
    }

    public final int hashCode() {
        return Objects.hash(this.f36963a, this.f36965c);
    }

    public final String toString() {
        M2 m22 = this.f36963a;
        return "TypeInfo{" + ((Object) m22) + ", level:" + this.f36964b + VectorFormat.DEFAULT_SUFFIX;
    }

    public final void a(int i10) {
        int i11 = this.f36964b;
        if (i10 == i11) {
            return;
        }
        if (i11 == -2) {
            if (!f36962d && i10 != 1) {
                throw new AssertionError();
            }
        } else {
            if (i10 == -2) {
                if (!f36962d && i11 != 1 && i11 != -1) {
                    throw new AssertionError();
                }
                this.f36964b = -2;
                return;
            }
            if (!f36962d && i11 != -1) {
                throw new AssertionError();
            }
            this.f36964b = i10;
        }
    }
}
