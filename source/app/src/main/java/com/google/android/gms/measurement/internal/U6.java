package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

public final class U6 implements Callable {

    public final o7 f62940b;

    public final c7 f62941c;

    public U6(c7 c7Var, o7 o7Var) {
        this.f62940b = o7Var;
        Objects.requireNonNull(c7Var);
        this.f62941c = c7Var;
    }

    @Override
    public final Object call() throws Exception {
        o7 o7Var = this.f62940b;
        String str = (String) G0.A.r(o7Var.f63444b);
        c7 c7Var = this.f62941c;
        Z3 g10 = c7Var.g(str);
        Y3 y32 = Y3.ANALYTICS_STORAGE;
        if (g10.o(y32) && Z3.f(o7Var.f63462t, 100).o(y32)) {
            return c7Var.n0(o7Var).p0();
        }
        c7Var.a().w().a("Analytics storage consent denied. Returning null app instance id");
        return null;
    }
}
