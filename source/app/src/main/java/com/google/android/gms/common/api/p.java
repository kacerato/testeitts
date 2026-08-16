package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.u;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.concurrent.TimeUnit;

public abstract class p<R extends u> {

    @C0.a
    public interface a {
        @C0.a
        void a(@NonNull Status status);
    }

    @C0.a
    public void c(@NonNull a aVar) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    public abstract R d();

    @NonNull
    @ResultIgnorabilityUnspecified
    public abstract R e(long j10, @NonNull TimeUnit timeUnit);

    public abstract void f();

    public abstract boolean g();

    public abstract void h(@NonNull v<? super R> vVar);

    public abstract void i(@NonNull v<? super R> vVar, long j10, @NonNull TimeUnit timeUnit);

    @NonNull
    public <S extends u> z<S> j(@NonNull x<? super R, ? extends S> xVar) {
        throw new UnsupportedOperationException();
    }
}
