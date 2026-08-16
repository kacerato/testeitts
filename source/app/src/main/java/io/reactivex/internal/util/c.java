package io.reactivex.internal.util;

import java.util.concurrent.atomic.AtomicReference;

public final class c extends AtomicReference<Throwable> {

    public static final long f92439b = 3949248817947090603L;

    public boolean a(Throwable th2) {
        return ExceptionHelper.a(this, th2);
    }

    public boolean b() {
        return get() == ExceptionHelper.f92434a;
    }

    public Throwable c() {
        return ExceptionHelper.c(this);
    }
}
