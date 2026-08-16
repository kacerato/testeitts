package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.u;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;

public abstract class z<R extends u> {
    public abstract void b(@NonNull w<? super R> wVar);

    @NonNull
    @ResultIgnorabilityUnspecified
    public abstract <S extends u> z<S> c(@NonNull x<? super R, ? extends S> xVar);
}
