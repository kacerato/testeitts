package com.google.android.gms.internal.measurement;

import android.content.Context;
import javax.annotation.Nullable;
import org.apache.commons.math3.geometry.VectorFormat;

public final class X3 extends AbstractC12170r4 {

    public final Context f62169a;

    @Nullable
    public final w2.Q f62170b;

    public X3(Context context, @Nullable w2.Q q10) {
        this.f62169a = context;
        this.f62170b = q10;
    }

    @Override
    public final Context a() {
        return this.f62169a;
    }

    @Override
    @Nullable
    public final w2.Q b() {
        return this.f62170b;
    }

    public final boolean equals(Object obj) {
        w2.Q q10;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC12170r4) {
            AbstractC12170r4 abstractC12170r4 = (AbstractC12170r4) obj;
            if (this.f62169a.equals(abstractC12170r4.a()) && ((q10 = this.f62170b) != null ? q10.equals(abstractC12170r4.b()) : abstractC12170r4.b() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f62169a.hashCode() ^ 1000003;
        w2.Q q10 = this.f62170b;
        return (hashCode * 1000003) ^ (q10 == null ? 0 : q10.hashCode());
    }

    public final String toString() {
        String obj = this.f62169a.toString();
        int length = obj.length();
        String valueOf = String.valueOf(this.f62170b);
        StringBuilder sb2 = new StringBuilder(length + 45 + valueOf.length() + 1);
        sb2.append("FlagsContext{context=");
        sb2.append(obj);
        sb2.append(", hermeticFileOverrides=");
        sb2.append(valueOf);
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }
}
