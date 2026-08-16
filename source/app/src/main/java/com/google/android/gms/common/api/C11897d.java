package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.concurrent.TimeUnit;

public final class C11897d implements u {

    public final Status f61067b;

    public final p[] f61068c;

    public C11897d(Status status, p[] pVarArr) {
        this.f61067b = status;
        this.f61068c = pVarArr;
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    public <R extends u> R a(@NonNull C11898e<R> c11898e) {
        G0.A.b(c11898e.f61069a < this.f61068c.length, "The result token does not belong to this batch");
        return (R) this.f61068c[c11898e.f61069a].e(0L, TimeUnit.MILLISECONDS);
    }

    @Override
    @NonNull
    public Status getStatus() {
        return this.f61067b;
    }
}
