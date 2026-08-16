package og;

import eg.AbstractC13100M;
import eg.AbstractC13147w0;
import eg.X;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.t0;
import nf.EnumC14431q;
import nf.InterfaceC14410f0;
import nf.InterfaceC14427o;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1#2:214\n*E\n"})
@InterfaceC14410f0
public class e extends AbstractC13147w0 {

    public final int f98730c;

    public final int f98731d;

    public final long f98732e;

    @NotNull
    public final String f98733f;

    @NotNull
    public ExecutorC14502a f98734g;

    public e(int i10, int i11, long j10, String str, int i12, C14026x c14026x) {
        this(i10, i11, j10, (i12 & 8) != 0 ? "CoroutineScheduler" : str);
    }

    public static AbstractC13100M u(e eVar, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: blocking");
        }
        if ((i11 & 1) != 0) {
            i10 = 16;
        }
        return eVar.t(i10);
    }

    @NotNull
    public final AbstractC13100M A(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException(("Expected positive parallelism level, but have " + i10).toString());
        }
        if (i10 <= this.f98730c) {
            return new g(this, i10, null, 0);
        }
        throw new IllegalArgumentException(("Expected parallelism level lesser than core pool size (" + this.f98730c + "), but have " + i10).toString());
    }

    @Override
    public void close() {
        this.f98734g.close();
    }

    @Override
    public void dispatch(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        try {
            ExecutorC14502a.o(this.f98734g, runnable, null, false, 6, null);
        } catch (RejectedExecutionException unused) {
            X.f85683h.dispatch(jVar, runnable);
        }
    }

    @Override
    public void dispatchYield(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        try {
            ExecutorC14502a.o(this.f98734g, runnable, null, true, 2, null);
        } catch (RejectedExecutionException unused) {
            X.f85683h.dispatchYield(jVar, runnable);
        }
    }

    @Override
    @NotNull
    public Executor s() {
        return this.f98734g;
    }

    @NotNull
    public final AbstractC13100M t(int i10) {
        if (i10 > 0) {
            return new g(this, i10, null, 1);
        }
        throw new IllegalArgumentException(("Expected positive parallelism level, but have " + i10).toString());
    }

    @Override
    @NotNull
    public String toString() {
        return super.toString() + "[scheduler = " + ((Object) this.f98734g) + JavaElement.JEM_TYPE_PARAMETER;
    }

    public final ExecutorC14502a v() {
        return new ExecutorC14502a(this.f98730c, this.f98731d, this.f98732e, this.f98733f);
    }

    public final void x(@NotNull Runnable runnable, @NotNull l lVar, boolean z10) {
        try {
            this.f98734g.n(runnable, lVar, z10);
        } catch (RejectedExecutionException unused) {
            X.f85683h.r0(this.f98734g.h(runnable, lVar));
        }
    }

    public e(int i10, int i11, long j10, @NotNull String str) {
        this.f98730c = i10;
        this.f98731d = i11;
        this.f98732e = j10;
        this.f98733f = str;
        this.f98734g = v();
    }

    public e(int i10, int i11, String str, int i12, C14026x c14026x) {
        this((i12 & 1) != 0 ? o.f98753c : i10, (i12 & 2) != 0 ? o.f98754d : i11, (i12 & 4) != 0 ? o.f98751a : str);
    }

    public e(int i10, int i11, @NotNull String str) {
        this(i10, i11, o.f98755e, str);
    }

    public e(int i10, int i11, int i12, C14026x c14026x) {
        this((i12 & 1) != 0 ? o.f98753c : i10, (i12 & 2) != 0 ? o.f98754d : i11);
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility for Ktor 1.0-beta")
    public e(int i10, int i11) {
        this(i10, i11, o.f98755e, null, 8, null);
    }
}
