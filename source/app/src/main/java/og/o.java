package og;

import Vf.u;
import java.util.concurrent.TimeUnit;
import mg.W;
import org.jetbrains.annotations.NotNull;

public final class o {

    public static final int f98757g = 0;

    public static final int f98758h = 1;

    @Lf.g
    @NotNull
    public static final String f98751a = W.e("kotlinx.coroutines.scheduler.default.name", "DefaultDispatcher");

    @Lf.g
    public static final long f98752b = W.h("kotlinx.coroutines.scheduler.resolution.ns", 100000, 0, 0, 12, null);

    @Lf.g
    public static final int f98753c = W.g("kotlinx.coroutines.scheduler.core.pool.size", u.w(W.a(), 2), 1, 0, 8, null);

    @Lf.g
    public static final int f98754d = W.g("kotlinx.coroutines.scheduler.max.pool.size", ExecutorC14502a.f98706w, 0, ExecutorC14502a.f98706w, 4, null);

    @Lf.g
    public static final long f98755e = TimeUnit.SECONDS.toNanos(W.h("kotlinx.coroutines.scheduler.keep.alive.sec", 60, 0, 0, 12, null));

    @Lf.g
    @NotNull
    public static j f98756f = h.f98741a;

    @Lf.g
    @NotNull
    public static final l f98759i = new m(0);

    @Lf.g
    @NotNull
    public static final l f98760j = new m(1);

    public static final boolean a(@NotNull k kVar) {
        return kVar.f98748c.r() == 1;
    }
}
