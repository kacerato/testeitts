package D0;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.p;
import com.google.android.gms.common.api.u;
import java.util.concurrent.TimeUnit;

@C0.a
public final class C2454l<R extends com.google.android.gms.common.api.u> extends com.google.android.gms.common.api.o<R> {

    public final BasePendingResult f4680a;

    public C2454l(@NonNull com.google.android.gms.common.api.p pVar) {
        this.f4680a = (BasePendingResult) pVar;
    }

    @Override
    public final void c(@NonNull p.a aVar) {
        this.f4680a.c(aVar);
    }

    @Override
    @NonNull
    public final R d() {
        return (R) this.f4680a.d();
    }

    @Override
    @NonNull
    public final R e(long j10, @NonNull TimeUnit timeUnit) {
        return (R) this.f4680a.e(j10, timeUnit);
    }

    @Override
    public final void f() {
        this.f4680a.f();
    }

    @Override
    public final boolean g() {
        return this.f4680a.g();
    }

    @Override
    public final void h(@NonNull com.google.android.gms.common.api.v<? super R> vVar) {
        this.f4680a.h(vVar);
    }

    @Override
    public final void i(@NonNull com.google.android.gms.common.api.v<? super R> vVar, long j10, @NonNull TimeUnit timeUnit) {
        this.f4680a.i(vVar, j10, timeUnit);
    }

    @Override
    @NonNull
    public final <S extends com.google.android.gms.common.api.u> com.google.android.gms.common.api.z<S> j(@NonNull com.google.android.gms.common.api.x<? super R, ? extends S> xVar) {
        return this.f4680a.j(xVar);
    }

    @Override
    @NonNull
    public final R k() {
        if (this.f4680a.m()) {
            return (R) this.f4680a.e(0L, TimeUnit.MILLISECONDS);
        }
        throw new IllegalStateException("Result is not available. Check that isDone() returns true before calling get().");
    }

    @Override
    public final boolean l() {
        return this.f4680a.m();
    }
}
