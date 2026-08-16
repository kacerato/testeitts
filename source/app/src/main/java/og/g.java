package og;

import Lf.x;
import eg.AbstractC13147w0;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class g extends AbstractC13147w0 implements l, Executor {

    @NotNull
    public static final AtomicIntegerFieldUpdater f98735h = AtomicIntegerFieldUpdater.newUpdater(g.class, "inFlightTasks");

    @NotNull
    public final e f98736c;

    public final int f98737d;

    @Nullable
    public final String f98738e;

    public final int f98739f;

    @NotNull
    public final ConcurrentLinkedQueue<Runnable> f98740g = new ConcurrentLinkedQueue<>();

    @x
    private volatile int inFlightTasks;

    public g(@NotNull e eVar, int i10, @Nullable String str, int i11) {
        this.f98736c = eVar;
        this.f98737d = i10;
        this.f98738e = str;
        this.f98739f = i11;
    }

    @Override
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher");
    }

    @Override
    public void dispatch(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        t(runnable, false);
    }

    @Override
    public void dispatchYield(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        t(runnable, true);
    }

    @Override
    public void execute(@NotNull Runnable runnable) {
        t(runnable, false);
    }

    @Override
    public void k() {
        Runnable poll = this.f98740g.poll();
        if (poll != null) {
            this.f98736c.x(poll, this, true);
            return;
        }
        f98735h.decrementAndGet(this);
        Runnable poll2 = this.f98740g.poll();
        if (poll2 == null) {
            return;
        }
        t(poll2, true);
    }

    @Override
    public int r() {
        return this.f98739f;
    }

    @Override
    @NotNull
    public Executor s() {
        return this;
    }

    public final void t(Runnable runnable, boolean z10) {
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f98735h;
            if (atomicIntegerFieldUpdater.incrementAndGet(this) <= this.f98737d) {
                this.f98736c.x(runnable, this, z10);
                return;
            }
            this.f98740g.add(runnable);
            if (atomicIntegerFieldUpdater.decrementAndGet(this) >= this.f98737d) {
                return;
            } else {
                runnable = this.f98740g.poll();
            }
        } while (runnable != null);
    }

    @Override
    @NotNull
    public String toString() {
        String str = this.f98738e;
        if (str != null) {
            return str;
        }
        return super.toString() + "[dispatcher = " + ((Object) this.f98736c) + JavaElement.JEM_TYPE_PARAMETER;
    }
}
