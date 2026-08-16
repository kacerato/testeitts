package og;

import eg.AbstractC13147w0;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;

public class i extends AbstractC13147w0 {

    public final int f98742c;

    public final int f98743d;

    public final long f98744e;

    @NotNull
    public final String f98745f;

    @NotNull
    public ExecutorC14502a f98746g;

    public i() {
        this(0, 0, 0L, null, 15, null);
    }

    private final ExecutorC14502a t() {
        return new ExecutorC14502a(this.f98742c, this.f98743d, this.f98744e, this.f98745f);
    }

    public final synchronized void A() {
        this.f98746g.A(1000L);
        this.f98746g = t();
    }

    @Override
    public void close() {
        this.f98746g.close();
    }

    @Override
    public void dispatch(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        ExecutorC14502a.o(this.f98746g, runnable, null, false, 6, null);
    }

    @Override
    public void dispatchYield(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        ExecutorC14502a.o(this.f98746g, runnable, null, true, 2, null);
    }

    @Override
    @NotNull
    public Executor s() {
        return this.f98746g;
    }

    public final void u(@NotNull Runnable runnable, @NotNull l lVar, boolean z10) {
        this.f98746g.n(runnable, lVar, z10);
    }

    public final void v() {
        A();
    }

    public final synchronized void x(long j10) {
        this.f98746g.A(j10);
    }

    public i(int i10, int i11, long j10, String str, int i12, C14026x c14026x) {
        this((i12 & 1) != 0 ? o.f98753c : i10, (i12 & 2) != 0 ? o.f98754d : i11, (i12 & 4) != 0 ? o.f98755e : j10, (i12 & 8) != 0 ? "CoroutineScheduler" : str);
    }

    public i(int i10, int i11, long j10, @NotNull String str) {
        this.f98742c = i10;
        this.f98743d = i11;
        this.f98744e = j10;
        this.f98745f = str;
        this.f98746g = t();
    }
}
