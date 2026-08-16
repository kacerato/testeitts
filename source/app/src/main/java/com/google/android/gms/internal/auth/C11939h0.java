package com.google.android.gms.internal.auth;

import android.content.Context;
import javax.annotation.Nullable;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C11939h0 extends F0 {

    public final Context f61753a;

    public final O0 f61754b;

    public C11939h0(Context context, @Nullable O0 o02) {
        this.f61753a = context;
        this.f61754b = o02;
    }

    @Override
    public final Context a() {
        return this.f61753a;
    }

    @Override
    @Nullable
    public final O0 b() {
        return this.f61754b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof F0) {
            F0 f02 = (F0) obj;
            if (this.f61753a.equals(f02.a()) && this.f61754b.equals(f02.b())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f61753a.hashCode() ^ 1000003) * 1000003) ^ this.f61754b.hashCode();
    }

    public final String toString() {
        return "FlagsContext{context=" + this.f61753a.toString() + ", hermeticFileOverrides=" + this.f61754b.toString() + VectorFormat.DEFAULT_SUFFIX;
    }
}
