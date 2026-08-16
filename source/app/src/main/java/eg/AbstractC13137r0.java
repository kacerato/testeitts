package eg;

import eg.InterfaceC13106b0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import mg.C14239A;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n+ 2 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 EventLoop.kt\nkotlinx/coroutines/EventLoopKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,543:1\n60#2:544\n61#2,7:550\n28#3,4:545\n20#4:549\n56#5:557\n1#6:558\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n*L\n269#1:544\n269#1:550,7\n269#1:545,4\n269#1:549\n280#1:557\n*E\n"})
public abstract class AbstractC13137r0 extends AbstractC13139s0 implements InterfaceC13106b0 {

    @NotNull
    public static final AtomicReferenceFieldUpdater f85768e = AtomicReferenceFieldUpdater.newUpdater(AbstractC13137r0.class, Object.class, "_queue");

    @NotNull
    public static final AtomicReferenceFieldUpdater f85769f = AtomicReferenceFieldUpdater.newUpdater(AbstractC13137r0.class, Object.class, "_delayed");

    @NotNull
    public static final AtomicIntegerFieldUpdater f85770g = AtomicIntegerFieldUpdater.newUpdater(AbstractC13137r0.class, "_isCompleted");

    @Lf.x
    @Nullable
    private volatile Object _delayed;

    @Lf.x
    private volatile int _isCompleted = 0;

    @Lf.x
    @Nullable
    private volatile Object _queue;

    @kotlin.jvm.internal.t0({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,543:1\n1#2:544\n*E\n"})
    public final class a extends c {

        @NotNull
        public final InterfaceC13133p<nf.P0> f85771d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(long j10, @NotNull InterfaceC13133p<? super nf.P0> interfaceC13133p) {
            super(j10);
            this.f85771d = interfaceC13133p;
        }

        @Override
        public void run() {
            this.f85771d.x(AbstractC13137r0.this, nf.P0.f98194a);
        }

        @Override
        @NotNull
        public String toString() {
            return super.toString() + ((Object) this.f85771d);
        }
    }

    public static final class b extends c {

        @NotNull
        public final Runnable f85773d;

        public b(long j10, @NotNull Runnable runnable) {
            super(j10);
            this.f85773d = runnable;
        }

        @Override
        public void run() {
            this.f85773d.run();
        }

        @Override
        @NotNull
        public String toString() {
            return super.toString() + ((Object) this.f85773d);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n1#1,543:1\n28#2,4:544\n28#2,4:550\n28#2,4:562\n20#3:548\n20#3:554\n20#3:566\n72#4:549\n73#4,7:555\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n*L\n437#1:544,4\n439#1:550,4\n479#1:562,4\n437#1:548\n439#1:554\n479#1:566\n439#1:549\n439#1:555,7\n*E\n"})
    public static abstract class c implements Runnable, Comparable<c>, InterfaceC13128m0, mg.e0 {

        @Nullable
        private volatile Object _heap;

        @Lf.g
        public long f85774b;

        public int f85775c = -1;

        public c(long j10) {
            this.f85774b = j10;
        }

        @Override
        public void a(int i10) {
            this.f85775c = i10;
        }

        @Override
        @Nullable
        public mg.d0<?> c() {
            Object obj = this._heap;
            if (obj instanceof mg.d0) {
                return (mg.d0) obj;
            }
            return null;
        }

        @Override
        public void d(@Nullable mg.d0<?> d0Var) {
            mg.T t10;
            Object obj = this._heap;
            t10 = C13143u0.f85784a;
            if (obj == t10) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            this._heap = d0Var;
        }

        @Override
        public final void dispose() {
            mg.T t10;
            mg.T t11;
            synchronized (this) {
                try {
                    Object obj = this._heap;
                    t10 = C13143u0.f85784a;
                    if (obj == t10) {
                        return;
                    }
                    d dVar = obj instanceof d ? (d) obj : null;
                    if (dVar != null) {
                        dVar.k(this);
                    }
                    t11 = C13143u0.f85784a;
                    this._heap = t11;
                    nf.P0 p02 = nf.P0.f98194a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public int compareTo(@NotNull c cVar) {
            long j10 = this.f85774b - cVar.f85774b;
            if (j10 > 0) {
                return 1;
            }
            return j10 < 0 ? -1 : 0;
        }

        @Override
        public int getIndex() {
            return this.f85775c;
        }

        public final int h(long j10, @NotNull d dVar, @NotNull AbstractC13137r0 abstractC13137r0) {
            mg.T t10;
            synchronized (this) {
                Object obj = this._heap;
                t10 = C13143u0.f85784a;
                if (obj == t10) {
                    return 2;
                }
                synchronized (dVar) {
                    try {
                        c f10 = dVar.f();
                        if (abstractC13137r0.d()) {
                            return 1;
                        }
                        if (f10 == null) {
                            dVar.f85776c = j10;
                        } else {
                            long j11 = f10.f85774b;
                            if (j11 - j10 < 0) {
                                j10 = j11;
                            }
                            if (j10 - dVar.f85776c > 0) {
                                dVar.f85776c = j10;
                            }
                        }
                        long j12 = this.f85774b;
                        long j13 = dVar.f85776c;
                        if (j12 - j13 < 0) {
                            this.f85774b = j13;
                        }
                        dVar.a(this);
                        return 0;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        public final boolean i(long j10) {
            return j10 - this.f85774b >= 0;
        }

        @NotNull
        public String toString() {
            return "Delayed[nanos=" + this.f85774b + JavaElement.JEM_TYPE_PARAMETER;
        }
    }

    public static final class d extends mg.d0<c> {

        @Lf.g
        public long f85776c;

        public d(long j10) {
            this.f85776c = j10;
        }
    }

    public final boolean d() {
        return f85770g.get(this) != 0;
    }

    private final void v0(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, nf.P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    @NotNull
    public final InterfaceC13128m0 A0(long j10, @NotNull Runnable runnable) {
        long d10 = C13143u0.d(j10);
        if (d10 >= 4611686018427387903L) {
            return Y0.f85696b;
        }
        AbstractC13105b b10 = C13107c.b();
        long b11 = b10 != null ? b10.b() : System.nanoTime();
        b bVar = new b(d10 + b11, runnable);
        y0(b11, bVar);
        return bVar;
    }

    public final void B0(boolean z10) {
        f85770g.set(this, z10 ? 1 : 0);
    }

    public final boolean C0(c cVar) {
        d dVar = (d) f85769f.get(this);
        return (dVar != null ? dVar.i() : null) == cVar;
    }

    @Override
    public boolean d0() {
        mg.T t10;
        if (!f0()) {
            return false;
        }
        d dVar = (d) f85769f.get(this);
        if (dVar != null && !dVar.h()) {
            return false;
        }
        Object obj = f85768e.get(this);
        if (obj != null) {
            if (obj instanceof C14239A) {
                return ((C14239A) obj).h();
            }
            t10 = C13143u0.f85791h;
            if (obj != t10) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final void dispatch(@NotNull yf.j jVar, @NotNull Runnable runnable) {
        r0(runnable);
    }

    @Override
    public long g0() {
        c cVar;
        if (i0()) {
            return 0L;
        }
        d dVar = (d) f85769f.get(this);
        if (dVar != null && !dVar.h()) {
            AbstractC13105b b10 = C13107c.b();
            long b11 = b10 != null ? b10.b() : System.nanoTime();
            do {
                synchronized (dVar) {
                    try {
                        c f10 = dVar.f();
                        if (f10 != null) {
                            c cVar2 = f10;
                            cVar = cVar2.i(b11) ? u0(cVar2) : false ? dVar.l(0) : null;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } while (cVar != null);
        }
        Runnable q02 = q0();
        if (q02 == null) {
            return x();
        }
        q02.run();
        return 0L;
    }

    @NotNull
    public InterfaceC13128m0 m(long j10, @NotNull Runnable runnable, @NotNull yf.j jVar) {
        return InterfaceC13106b0.a.b(this, j10, runnable, jVar);
    }

    @Override
    public void o(long j10, @NotNull InterfaceC13133p<? super nf.P0> interfaceC13133p) {
        long d10 = C13143u0.d(j10);
        if (d10 < 4611686018427387903L) {
            AbstractC13105b b10 = C13107c.b();
            long b11 = b10 != null ? b10.b() : System.nanoTime();
            a aVar = new a(d10 + b11, interfaceC13133p);
            y0(b11, aVar);
            C13138s.a(interfaceC13133p, aVar);
        }
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    public Object p(long j10, @NotNull yf.f<? super nf.P0> fVar) {
        return InterfaceC13106b0.a.a(this, j10, fVar);
    }

    public final void p0() {
        mg.T t10;
        mg.T t11;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f85768e;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f85768e;
                t10 = C13143u0.f85791h;
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater2, this, null, t10)) {
                    return;
                }
            } else {
                if (obj instanceof C14239A) {
                    ((C14239A) obj).d();
                    return;
                }
                t11 = C13143u0.f85791h;
                if (obj == t11) {
                    return;
                }
                C14239A c14239a = new C14239A(8, true);
                kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                c14239a.a((Runnable) obj);
                if (androidx.concurrent.futures.a.a(f85768e, this, obj, c14239a)) {
                    return;
                }
            }
        }
    }

    public final Runnable q0() {
        mg.T t10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f85768e;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return null;
            }
            if (obj instanceof C14239A) {
                kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                C14239A c14239a = (C14239A) obj;
                Object n10 = c14239a.n();
                if (n10 != C14239A.f97006t) {
                    return (Runnable) n10;
                }
                androidx.concurrent.futures.a.a(f85768e, this, obj, c14239a.m());
            } else {
                t10 = C13143u0.f85791h;
                if (obj == t10) {
                    return null;
                }
                if (androidx.concurrent.futures.a.a(f85768e, this, obj, null)) {
                    kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                    return (Runnable) obj;
                }
            }
        }
    }

    public void r0(@NotNull Runnable runnable) {
        if (u0(runnable)) {
            n0();
        } else {
            X.f85683h.r0(runnable);
        }
    }

    @Override
    public void shutdown() {
        n1.f85746a.c();
        B0(true);
        p0();
        do {
        } while (g0() <= 0);
        w0();
    }

    public final boolean u0(Runnable runnable) {
        mg.T t10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f85768e;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (d()) {
                return false;
            }
            if (obj == null) {
                if (androidx.concurrent.futures.a.a(f85768e, this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof C14239A) {
                kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                C14239A c14239a = (C14239A) obj;
                int a10 = c14239a.a(runnable);
                if (a10 == 0) {
                    return true;
                }
                if (a10 == 1) {
                    androidx.concurrent.futures.a.a(f85768e, this, obj, c14239a.m());
                } else if (a10 == 2) {
                    return false;
                }
            } else {
                t10 = C13143u0.f85791h;
                if (obj == t10) {
                    return false;
                }
                C14239A c14239a2 = new C14239A(8, true);
                kotlin.jvm.internal.M.n(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                c14239a2.a((Runnable) obj);
                c14239a2.a(runnable);
                if (androidx.concurrent.futures.a.a(f85768e, this, obj, c14239a2)) {
                    return true;
                }
            }
        }
    }

    public final void w0() {
        c n10;
        AbstractC13105b b10 = C13107c.b();
        long b11 = b10 != null ? b10.b() : System.nanoTime();
        while (true) {
            d dVar = (d) f85769f.get(this);
            if (dVar == null || (n10 = dVar.n()) == null) {
                return;
            } else {
                m0(b11, n10);
            }
        }
    }

    @Override
    public long x() {
        c i10;
        mg.T t10;
        if (super.x() == 0) {
            return 0L;
        }
        Object obj = f85768e.get(this);
        if (obj != null) {
            if (!(obj instanceof C14239A)) {
                t10 = C13143u0.f85791h;
                return obj == t10 ? Long.MAX_VALUE : 0L;
            }
            if (!((C14239A) obj).h()) {
                return 0L;
            }
        }
        d dVar = (d) f85769f.get(this);
        if (dVar == null || (i10 = dVar.i()) == null) {
            return Long.MAX_VALUE;
        }
        long j10 = i10.f85774b;
        AbstractC13105b b10 = C13107c.b();
        return Vf.u.x(j10 - (b10 != null ? b10.b() : System.nanoTime()), 0L);
    }

    public final void x0() {
        f85768e.set(this, null);
        f85769f.set(this, null);
    }

    public final void y0(long j10, @NotNull c cVar) {
        int z02 = z0(j10, cVar);
        if (z02 == 0) {
            if (C0(cVar)) {
                n0();
            }
        } else if (z02 == 1) {
            m0(j10, cVar);
        } else if (z02 != 2) {
            throw new IllegalStateException("unexpected result");
        }
    }

    public final int z0(long j10, c cVar) {
        if (d()) {
            return 1;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f85769f;
        d dVar = (d) atomicReferenceFieldUpdater.get(this);
        if (dVar == null) {
            androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, null, new d(j10));
            Object obj = atomicReferenceFieldUpdater.get(this);
            kotlin.jvm.internal.M.m(obj);
            dVar = (d) obj;
        }
        return cVar.h(j10, dVar, this);
    }
}
