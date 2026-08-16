package og;

import eg.AbstractC13100M;
import eg.F0;
import eg.InterfaceC13153z0;
import mg.C14258t;
import org.jetbrains.annotations.NotNull;

public final class p extends AbstractC13100M {

    @NotNull
    public static final p f98761b = new p();

    @Override
    public void dispatch(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        d.f98729h.u(runnable, o.f98760j, false);
    }

    @Override
    @F0
    public void dispatchYield(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        d.f98729h.u(runnable, o.f98760j, true);
    }

    @Override
    @InterfaceC13153z0
    @NotNull
    public AbstractC13100M limitedParallelism(int i10) {
        C14258t.a(i10);
        return i10 >= o.f98754d ? this : super.limitedParallelism(i10);
    }
}
