package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class C11899f implements u {

    public final Status f61070b;

    public final boolean f61071c;

    @G0.F
    @C0.a
    public C11899f(@NonNull Status status, boolean z10) {
        this.f61070b = (Status) G0.A.s(status, "Status must not be null");
        this.f61071c = z10;
    }

    public boolean a() {
        return this.f61071c;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C11899f)) {
            return false;
        }
        C11899f c11899f = (C11899f) obj;
        return this.f61070b.equals(c11899f.f61070b) && this.f61071c == c11899f.f61071c;
    }

    @Override
    @NonNull
    public Status getStatus() {
        return this.f61070b;
    }

    public final int hashCode() {
        return ((this.f61070b.hashCode() + 527) * 31) + (this.f61071c ? 1 : 0);
    }
}
