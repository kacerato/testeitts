package De;

import java.util.concurrent.Future;

public final class d {
    public d() {
        throw new IllegalStateException("No instances!");
    }

    @Ce.f
    public static c a() {
        return Ge.e.INSTANCE;
    }

    @Ce.f
    public static c b() {
        return f(He.a.f8376b);
    }

    @Ce.f
    public static c c(@Ce.f Fe.a aVar) {
        He.b.g(aVar, "run is null");
        return new a(aVar);
    }

    @Ce.f
    public static c d(@Ce.f Future<?> future) {
        He.b.g(future, "future is null");
        return e(future, true);
    }

    @Ce.f
    public static c e(@Ce.f Future<?> future, boolean z10) {
        He.b.g(future, "future is null");
        return new e(future, z10);
    }

    @Ce.f
    public static c f(@Ce.f Runnable runnable) {
        He.b.g(runnable, "run is null");
        return new g(runnable);
    }

    @Ce.f
    public static c g(@Ce.f hn.d dVar) {
        He.b.g(dVar, "subscription is null");
        return new i(dVar);
    }
}
