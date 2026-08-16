package og;

import Vf.u;
import eg.AbstractC13100M;
import eg.AbstractC13147w0;
import eg.C13124k0;
import eg.F0;
import eg.InterfaceC13153z0;
import java.util.concurrent.Executor;
import mg.W;
import mg.Y;
import org.jetbrains.annotations.NotNull;

public final class c extends AbstractC13147w0 implements Executor {

    @NotNull
    public static final c f98727c = new c();

    @NotNull
    public static final AbstractC13100M f98728d;

    static {
        int e10;
        p pVar = p.f98761b;
        e10 = Y.e(C13124k0.f85741a, u.w(64, W.a()), 0, 0, 12, null);
        f98728d = pVar.limitedParallelism(e10);
    }

    @Override
    public void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override
    public void dispatch(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        f98728d.dispatch(jVar, runnable);
    }

    @Override
    @F0
    public void dispatchYield(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        f98728d.dispatchYield(jVar, runnable);
    }

    @Override
    public void execute(@NotNull Runnable runnable) {
        dispatch(yf.l.f130251b, runnable);
    }

    @Override
    @InterfaceC13153z0
    @NotNull
    public AbstractC13100M limitedParallelism(int i10) {
        return p.f98761b.limitedParallelism(i10);
    }

    @Override
    @NotNull
    public Executor s() {
        return this;
    }

    @Override
    @NotNull
    public String toString() {
        return "Dispatchers.IO";
    }
}
