package mg;

import eg.AbstractC13100M;
import eg.F0;
import eg.InterfaceC13106b0;
import eg.InterfaceC13128m0;
import eg.InterfaceC13133p;
import eg.InterfaceC13153z0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.t0;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,134:1\n66#1,8:135\n66#1,8:143\n28#2,4:151\n28#2,4:156\n20#3:155\n20#3:160\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n48#1:135,8\n55#1:143,8\n79#1:151,4\n92#1:156,4\n79#1:155\n92#1:160\n*E\n"})
public final class C14257s extends AbstractC13100M implements InterfaceC13106b0 {

    @NotNull
    public static final AtomicIntegerFieldUpdater f97093g = AtomicIntegerFieldUpdater.newUpdater(C14257s.class, "runningWorkers");

    @NotNull
    public final AbstractC13100M f97094b;

    public final int f97095c;

    public final InterfaceC13106b0 f97096d;

    @NotNull
    public final C14264z<Runnable> f97097e;

    @NotNull
    public final Object f97098f;

    @Lf.x
    private volatile int runningWorkers;

    public final class a implements Runnable {

        @NotNull
        public Runnable f97099b;

        public a(@NotNull Runnable runnable) {
            this.f97099b = runnable;
        }

        @Override
        public void run() {
            int i10 = 0;
            while (true) {
                try {
                    this.f97099b.run();
                } catch (Throwable th2) {
                    eg.O.b(yf.l.f130251b, th2);
                }
                Runnable v10 = C14257s.this.v();
                if (v10 == null) {
                    return;
                }
                this.f97099b = v10;
                i10++;
                if (i10 >= 16 && C14257s.this.f97094b.isDispatchNeeded(C14257s.this)) {
                    C14257s.this.f97094b.dispatch(C14257s.this, this);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C14257s(@NotNull AbstractC13100M abstractC13100M, int i10) {
        this.f97094b = abstractC13100M;
        this.f97095c = i10;
        InterfaceC13106b0 interfaceC13106b0 = abstractC13100M instanceof InterfaceC13106b0 ? (InterfaceC13106b0) abstractC13100M : null;
        this.f97096d = interfaceC13106b0 == null ? eg.Y.a() : interfaceC13106b0;
        this.f97097e = new C14264z<>(false);
        this.f97098f = new Object();
    }

    @Override
    public void dispatch(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        Runnable v10;
        this.f97097e.a(runnable);
        if (f97093g.get(this) >= this.f97095c || !x() || (v10 = v()) == null) {
            return;
        }
        this.f97094b.dispatch(this, new a(v10));
    }

    @Override
    @F0
    public void dispatchYield(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        Runnable v10;
        this.f97097e.a(runnable);
        if (f97093g.get(this) >= this.f97095c || !x() || (v10 = v()) == null) {
            return;
        }
        this.f97094b.dispatchYield(this, new a(v10));
    }

    @Override
    @InterfaceC13153z0
    @NotNull
    public AbstractC13100M limitedParallelism(int i10) {
        C14258t.a(i10);
        return i10 >= this.f97095c ? this : super.limitedParallelism(i10);
    }

    @Override
    @NotNull
    public InterfaceC13128m0 m(long j10, @NotNull Runnable runnable, @NotNull yf.j jVar) {
        return this.f97096d.m(j10, runnable, jVar);
    }

    @Override
    public void o(long j10, @NotNull InterfaceC13133p<? super P0> interfaceC13133p) {
        this.f97096d.o(j10, interfaceC13133p);
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    public Object p(long j10, @NotNull yf.f<? super P0> fVar) {
        return this.f97096d.p(j10, fVar);
    }

    public final void u(Runnable runnable, Mf.l<? super a, P0> lVar) {
        Runnable v10;
        this.f97097e.a(runnable);
        if (f97093g.get(this) < this.f97095c && x() && (v10 = v()) != null) {
            lVar.invoke(new a(v10));
        }
    }

    public final Runnable v() {
        while (true) {
            Runnable h10 = this.f97097e.h();
            if (h10 != null) {
                return h10;
            }
            synchronized (this.f97098f) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f97093g;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.f97097e.c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }

    public final boolean x() {
        synchronized (this.f97098f) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f97093g;
            if (atomicIntegerFieldUpdater.get(this) >= this.f97095c) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }
}
