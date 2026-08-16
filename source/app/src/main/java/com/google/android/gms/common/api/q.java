package com.google.android.gms.common.api;

import D0.C2454l;
import D0.C2464q;
import android.os.Looper;
import androidx.annotation.NonNull;

public final class q {
    @NonNull
    public static p<Status> a() {
        C2464q c2464q = new C2464q(Looper.getMainLooper());
        c2464q.f();
        return c2464q;
    }

    @NonNull
    public static <R extends u> p<R> b(@NonNull R r10) {
        G0.A.s(r10, "Result must not be null");
        G0.A.b(r10.getStatus().b0() == 16, "Status code must be CommonStatusCodes.CANCELED");
        F f10 = new F(r10);
        f10.f();
        return f10;
    }

    @NonNull
    @C0.a
    public static <R extends u> p<R> c(@NonNull R r10, @NonNull AbstractC11908l abstractC11908l) {
        G0.A.s(r10, "Result must not be null");
        G0.A.b(!r10.getStatus().x0(), "Status code must not be SUCCESS");
        G g10 = new G(abstractC11908l, r10);
        g10.o(r10);
        return g10;
    }

    @NonNull
    public static <R extends u> o<R> d(@NonNull R r10) {
        G0.A.s(r10, "Result must not be null");
        H h10 = new H(null);
        h10.o(r10);
        return new C2454l(h10);
    }

    @NonNull
    @C0.a
    public static <R extends u> o<R> e(@NonNull R r10, @NonNull AbstractC11908l abstractC11908l) {
        G0.A.s(r10, "Result must not be null");
        H h10 = new H(abstractC11908l);
        h10.o(r10);
        return new C2454l(h10);
    }

    @NonNull
    public static p<Status> f(@NonNull Status status) {
        G0.A.s(status, "Result must not be null");
        C2464q c2464q = new C2464q(Looper.getMainLooper());
        c2464q.o(status);
        return c2464q;
    }

    @NonNull
    @C0.a
    public static p<Status> g(@NonNull Status status, @NonNull AbstractC11908l abstractC11908l) {
        G0.A.s(status, "Result must not be null");
        C2464q c2464q = new C2464q(abstractC11908l);
        c2464q.o(status);
        return c2464q;
    }
}
