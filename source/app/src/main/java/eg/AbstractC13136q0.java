package eg;

import mg.C14258t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14981m;

@kotlin.jvm.internal.t0({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,543:1\n1#2:544\n*E\n"})
public abstract class AbstractC13136q0 extends AbstractC13100M {

    public long f85755b;

    public boolean f85756c;

    @Nullable
    public C14981m<AbstractC13116g0<?>> f85757d;

    public static void B(AbstractC13136q0 abstractC13136q0, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        abstractC13136q0.A(z10);
    }

    public static void t(AbstractC13136q0 abstractC13136q0, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        abstractC13136q0.s(z10);
    }

    public final void A(boolean z10) {
        this.f85755b += u(z10);
        if (z10) {
            return;
        }
        this.f85756c = true;
    }

    public boolean d0() {
        return f0();
    }

    public final boolean e0() {
        return this.f85755b >= u(true);
    }

    public final boolean f0() {
        C14981m<AbstractC13116g0<?>> c14981m = this.f85757d;
        if (c14981m != null) {
            return c14981m.isEmpty();
        }
        return true;
    }

    public long g0() {
        return !i0() ? Long.MAX_VALUE : 0L;
    }

    public final boolean i0() {
        AbstractC13116g0<?> C10;
        C14981m<AbstractC13116g0<?>> c14981m = this.f85757d;
        if (c14981m == null || (C10 = c14981m.C()) == null) {
            return false;
        }
        C10.run();
        return true;
    }

    public final boolean isActive() {
        return this.f85755b > 0;
    }

    public boolean j0() {
        return false;
    }

    @Override
    @NotNull
    public final AbstractC13100M limitedParallelism(int i10) {
        C14258t.a(i10);
        return this;
    }

    public final void s(boolean z10) {
        long u10 = this.f85755b - u(z10);
        this.f85755b = u10;
        if (u10 <= 0 && this.f85756c) {
            shutdown();
        }
    }

    public void shutdown() {
    }

    public final long u(boolean z10) {
        return z10 ? 4294967296L : 1L;
    }

    public final void v(@NotNull AbstractC13116g0<?> abstractC13116g0) {
        C14981m<AbstractC13116g0<?>> c14981m = this.f85757d;
        if (c14981m == null) {
            c14981m = new C14981m<>();
            this.f85757d = c14981m;
        }
        c14981m.addLast(abstractC13116g0);
    }

    public long x() {
        C14981m<AbstractC13116g0<?>> c14981m = this.f85757d;
        return (c14981m == null || c14981m.isEmpty()) ? Long.MAX_VALUE : 0L;
    }
}
