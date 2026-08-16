package rg;

import Bf.h;
import Lf.x;
import Mf.l;
import Mf.p;
import com.google.common.util.concurrent.C0;
import eg.C13135q;
import eg.C13138s;
import eg.InterfaceC13133p;
import eg.y1;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.I;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.t0;
import mg.C14245f;
import mg.P;
import mg.Q;
import mg.T;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pg.m;

@t0({"SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 5 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,397:1\n205#1,10:411\n205#1,10:421\n1#2:398\n332#3,12:399\n72#4,3:431\n46#4,8:434\n72#4,3:445\n46#4,8:448\n375#5:442\n375#5:443\n367#5:444\n378#5:456\n367#5:457\n375#5:458\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n*L\n197#1:411,10\n221#1:421,10\n187#1:399,12\n289#1:431,3\n289#1:434,8\n322#1:445,3\n322#1:448,8\n293#1:442\n299#1:443\n313#1:444\n328#1:456\n334#1:457\n337#1:458\n*E\n"})
public class C15179e implements InterfaceC15178d {

    @NotNull
    public static final AtomicReferenceFieldUpdater f108985c = AtomicReferenceFieldUpdater.newUpdater(C15179e.class, Object.class, "head");

    @NotNull
    public static final AtomicLongFieldUpdater f108986d = AtomicLongFieldUpdater.newUpdater(C15179e.class, "deqIdx");

    @NotNull
    public static final AtomicReferenceFieldUpdater f108987e = AtomicReferenceFieldUpdater.newUpdater(C15179e.class, Object.class, "tail");

    @NotNull
    public static final AtomicLongFieldUpdater f108988f = AtomicLongFieldUpdater.newUpdater(C15179e.class, "enqIdx");

    @NotNull
    public static final AtomicIntegerFieldUpdater f108989g = AtomicIntegerFieldUpdater.newUpdater(C15179e.class, "_availablePermits");

    @x
    private volatile int _availablePermits;

    public final int f108990a;

    @NotNull
    public final l<Throwable, P0> f108991b;

    @x
    private volatile long deqIdx;

    @x
    private volatile long enqIdx;

    @x
    @Nullable
    private volatile Object head;

    @x
    @Nullable
    private volatile Object tail;

    public class a extends I implements p<Long, g, g> {

        public static final a f108992b = new a();

        public a() {
            super(2, C15180f.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
        }

        @NotNull
        public final g b(long j10, @Nullable g gVar) {
            g j11;
            j11 = C15180f.j(j10, gVar);
            return j11;
        }

        @Override
        public g invoke(Long l10, g gVar) {
            return b(l10.longValue(), gVar);
        }
    }

    public static final class b extends O implements l<Throwable, P0> {
        public b() {
            super(1);
        }

        @Override
        public P0 invoke(Throwable th2) {
            invoke2(th2);
            return P0.f98194a;
        }

        public final void invoke2(@NotNull Throwable th2) {
            C15179e.this.release();
        }
    }

    public class c extends I implements p<Long, g, g> {

        public static final c f108994b = new c();

        public c() {
            super(2, C15180f.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
        }

        @NotNull
        public final g b(long j10, @Nullable g gVar) {
            g j11;
            j11 = C15180f.j(j10, gVar);
            return j11;
        }

        @Override
        public g invoke(Long l10, g gVar) {
            return b(l10.longValue(), gVar);
        }
    }

    public C15179e(int i10, int i11) {
        this.f108990a = i10;
        if (i10 <= 0) {
            throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i10).toString());
        }
        if (i11 < 0 || i11 > i10) {
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i10).toString());
        }
        g gVar = new g(0L, null, 2);
        this.head = gVar;
        this.tail = gVar;
        this._availablePermits = i10 - i11;
        this.f108991b = new b();
    }

    public static Object n(C15179e c15179e, yf.f<? super P0> fVar) {
        Object o10;
        return (c15179e.r() <= 0 && (o10 = c15179e.o(fVar)) == Af.d.l()) ? o10 : P0.f98194a;
    }

    @Override
    public boolean a() {
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f108989g;
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 > this.f108990a) {
                q();
            } else {
                if (i10 <= 0) {
                    return false;
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i10, i10 - 1)) {
                    return true;
                }
            }
        }
    }

    @Override
    public int f() {
        return Math.max(f108989g.get(this), 0);
    }

    @Override
    @Nullable
    public Object g(@NotNull yf.f<? super P0> fVar) {
        return n(this, fVar);
    }

    public final void l(@NotNull InterfaceC13133p<? super P0> interfaceC13133p) {
        while (r() <= 0) {
            M.n(interfaceC13133p, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (p((y1) interfaceC13133p)) {
                return;
            }
        }
        interfaceC13133p.o(P0.f98194a, this.f108991b);
    }

    public final <W> void m(W w10, l<? super W, Boolean> lVar, l<? super W, P0> lVar2) {
        while (r() <= 0) {
            if (lVar.invoke(w10).booleanValue()) {
                return;
            }
        }
        lVar2.invoke(w10);
    }

    public final Object o(yf.f<? super P0> fVar) {
        C13135q b10 = C13138s.b(Af.c.e(fVar));
        try {
            if (!p(b10)) {
                l(b10);
            }
            Object D10 = b10.D();
            if (D10 == Af.d.l()) {
                h.c(fVar);
            }
            return D10 == Af.d.l() ? D10 : P0.f98194a;
        } catch (Throwable th2) {
            b10.T();
            throw th2;
        }
    }

    public final boolean p(y1 y1Var) {
        int i10;
        Object g10;
        int i11;
        T t10;
        T t11;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f108987e;
        g gVar = (g) atomicReferenceFieldUpdater.get(this);
        long andIncrement = f108988f.getAndIncrement(this);
        a aVar = a.f108992b;
        i10 = C15180f.f109000f;
        long j10 = andIncrement / i10;
        loop0: while (true) {
            g10 = C14245f.g(gVar, j10, aVar);
            if (!Q.h(g10)) {
                P f10 = Q.f(g10);
                while (true) {
                    P p10 = (P) atomicReferenceFieldUpdater.get(this);
                    if (p10.f97034d >= f10.f97034d) {
                        break loop0;
                    }
                    if (!f10.s()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, p10, f10)) {
                        if (p10.o()) {
                            p10.l();
                        }
                    } else if (f10.o()) {
                        f10.l();
                    }
                }
            } else {
                break;
            }
        }
        g gVar2 = (g) Q.f(g10);
        i11 = C15180f.f109000f;
        int i12 = (int) (andIncrement % i11);
        if (C0.a(gVar2.v(), i12, null, y1Var)) {
            y1Var.t(gVar2, i12);
            return true;
        }
        t10 = C15180f.f108996b;
        t11 = C15180f.f108997c;
        if (!C0.a(gVar2.v(), i12, t10, t11)) {
            return false;
        }
        if (y1Var instanceof InterfaceC13133p) {
            M.n(y1Var, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            ((InterfaceC13133p) y1Var).o(P0.f98194a, this.f108991b);
        } else {
            if (!(y1Var instanceof m)) {
                throw new IllegalStateException(("unexpected: " + ((Object) y1Var)).toString());
            }
            ((m) y1Var).w(P0.f98194a);
        }
        return true;
    }

    public final void q() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i10;
        int i11;
        do {
            atomicIntegerFieldUpdater = f108989g;
            i10 = atomicIntegerFieldUpdater.get(this);
            i11 = this.f108990a;
            if (i10 <= i11) {
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, i11));
    }

    public final int r() {
        int andDecrement;
        do {
            andDecrement = f108989g.getAndDecrement(this);
        } while (andDecrement > this.f108990a);
        return andDecrement;
    }

    @Override
    public void release() {
        do {
            int andIncrement = f108989g.getAndIncrement(this);
            if (andIncrement >= this.f108990a) {
                q();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.f108990a).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!u());
    }

    public final void s(@NotNull m<?> mVar, @Nullable Object obj) {
        while (r() <= 0) {
            M.n(mVar, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (p((y1) mVar)) {
                return;
            }
        }
        mVar.w(P0.f98194a);
    }

    public final boolean t(Object obj) {
        if (!(obj instanceof InterfaceC13133p)) {
            if (obj instanceof m) {
                return ((m) obj).x(this, P0.f98194a);
            }
            throw new IllegalStateException(("unexpected: " + obj).toString());
        }
        M.n(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
        InterfaceC13133p interfaceC13133p = (InterfaceC13133p) obj;
        Object k10 = interfaceC13133p.k(P0.f98194a, null, this.f108991b);
        if (k10 == null) {
            return false;
        }
        interfaceC13133p.B(k10);
        return true;
    }

    public final boolean u() {
        int i10;
        Object g10;
        int i11;
        T t10;
        T t11;
        int i12;
        T t12;
        T t13;
        T t14;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f108985c;
        g gVar = (g) atomicReferenceFieldUpdater.get(this);
        long andIncrement = f108986d.getAndIncrement(this);
        i10 = C15180f.f109000f;
        long j10 = andIncrement / i10;
        c cVar = c.f108994b;
        loop0: while (true) {
            g10 = C14245f.g(gVar, j10, cVar);
            if (Q.h(g10)) {
                break;
            }
            P f10 = Q.f(g10);
            while (true) {
                P p10 = (P) atomicReferenceFieldUpdater.get(this);
                if (p10.f97034d >= f10.f97034d) {
                    break loop0;
                }
                if (!f10.s()) {
                    break;
                }
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, p10, f10)) {
                    if (p10.o()) {
                        p10.l();
                    }
                } else if (f10.o()) {
                    f10.l();
                }
            }
        }
        g gVar2 = (g) Q.f(g10);
        gVar2.b();
        if (gVar2.f97034d > j10) {
            return false;
        }
        i11 = C15180f.f109000f;
        int i13 = (int) (andIncrement % i11);
        t10 = C15180f.f108996b;
        Object andSet = gVar2.v().getAndSet(i13, t10);
        if (andSet != null) {
            t11 = C15180f.f108999e;
            if (andSet == t11) {
                return false;
            }
            return t(andSet);
        }
        i12 = C15180f.f108995a;
        for (int i14 = 0; i14 < i12; i14++) {
            Object obj = gVar2.v().get(i13);
            t14 = C15180f.f108997c;
            if (obj == t14) {
                return true;
            }
        }
        t12 = C15180f.f108996b;
        t13 = C15180f.f108998d;
        return !C0.a(gVar2.v(), i13, t12, t13);
    }
}
