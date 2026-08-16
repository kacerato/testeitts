package og;

import Lf.x;
import Vf.u;
import com.tonyodev.fetch2.util.FetchDefaults;
import eg.AbstractC13105b;
import eg.C13107c;
import eg.W;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import mg.N;
import mg.T;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 7 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n1#1,1033:1\n285#1:1036\n283#1:1037\n283#1:1038\n285#1:1039\n280#1:1045\n281#1,5:1046\n291#1:1052\n283#1:1053\n284#1:1054\n283#1:1060\n284#1:1061\n280#1:1062\n288#1:1063\n283#1:1064\n283#1:1067\n284#1:1068\n285#1:1069\n93#2:1034\n93#2:1051\n1#3:1035\n28#4,4:1040\n28#4,4:1055\n20#5:1044\n20#5:1059\n90#6:1065\n610#7:1066\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n*L\n281#1:1036\n288#1:1037\n289#1:1038\n298#1:1039\n347#1:1045\n375#1:1046,5\n398#1:1052\n445#1:1053\n446#1:1054\n482#1:1060\n483#1:1061\n489#1:1062\n498#1:1063\n498#1:1064\n576#1:1067\n577#1:1068\n578#1:1069\n119#1:1034\n395#1:1051\n347#1:1040,4\n478#1:1055,4\n347#1:1044\n478#1:1059\n515#1:1065\n522#1:1066\n*E\n"})
public final class ExecutorC14502a implements Executor, Closeable {

    @NotNull
    public static final C1892a f98692i = new C1892a(null);

    @NotNull
    public static final AtomicLongFieldUpdater f98693j = AtomicLongFieldUpdater.newUpdater(ExecutorC14502a.class, "parkedWorkersStack");

    @NotNull
    public static final AtomicLongFieldUpdater f98694k = AtomicLongFieldUpdater.newUpdater(ExecutorC14502a.class, "controlState");

    @NotNull
    public static final AtomicIntegerFieldUpdater f98695l = AtomicIntegerFieldUpdater.newUpdater(ExecutorC14502a.class, "_isTerminated");

    @Lf.g
    @NotNull
    public static final T f98696m = new T("NOT_IN_STACK");

    public static final int f98697n = -1;

    public static final int f98698o = 0;

    public static final int f98699p = 1;

    public static final int f98700q = 21;

    public static final long f98701r = 2097151;

    public static final long f98702s = 4398044413952L;

    public static final int f98703t = 42;

    public static final long f98704u = 9223367638808264704L;

    public static final int f98705v = 1;

    public static final int f98706w = 2097150;

    public static final long f98707x = 2097151;

    public static final long f98708y = -2097152;

    public static final long f98709z = 2097152;

    @x
    private volatile int _isTerminated;

    @Lf.g
    public final int f98710b;

    @Lf.g
    public final int f98711c;

    @x
    private volatile long controlState;

    @Lf.g
    public final long f98712d;

    @Lf.g
    @NotNull
    public final String f98713e;

    @Lf.g
    @NotNull
    public final f f98714f;

    @Lf.g
    @NotNull
    public final f f98715g;

    @Lf.g
    @NotNull
    public final N<c> f98716h;

    @x
    private volatile long parkedWorkersStack;

    public static final class C1892a {
        public C1892a(C14026x c14026x) {
            this();
        }

        public C1892a() {
        }
    }

    public class b {

        public static final int[] f98717a;

        static {
            int[] iArr = new int[d.values().length];
            try {
                iArr[d.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[d.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[d.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[d.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[d.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f98717a = iArr;
        }
    }

    public enum d {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    public ExecutorC14502a(int i10, int i11, long j10, @NotNull String str) {
        this.f98710b = i10;
        this.f98711c = i11;
        this.f98712d = j10;
        this.f98713e = str;
        if (i10 < 1) {
            throw new IllegalArgumentException(("Core pool size " + i10 + " should be at least 1").toString());
        }
        if (i11 < i10) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should be greater than or equals to core pool size " + i10).toString());
        }
        if (i11 > 2097150) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j10 > 0) {
            this.f98714f = new f();
            this.f98715g = new f();
            this.f98716h = new N<>((i10 + 1) * 2);
            this.controlState = i10 << 42;
            this._isTerminated = 0;
            return;
        }
        throw new IllegalArgumentException(("Idle worker keep alive time " + j10 + " must be positive").toString());
    }

    public static boolean R(ExecutorC14502a executorC14502a, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = f98694k.get(executorC14502a);
        }
        return executorC14502a.Q(j10);
    }

    public static void o(ExecutorC14502a executorC14502a, Runnable runnable, l lVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            lVar = o.f98759i;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        executorC14502a.n(runnable, lVar, z10);
    }

    public final void A(long j10) {
        int i10;
        k h10;
        if (f98695l.compareAndSet(this, 0, 1)) {
            c k10 = k();
            synchronized (this.f98716h) {
                i10 = (int) (f98694k.get(this) & 2097151);
            }
            if (1 <= i10) {
                int i11 = 1;
                while (true) {
                    c b10 = this.f98716h.b(i11);
                    M.m(b10);
                    c cVar = b10;
                    if (cVar != k10) {
                        while (cVar.isAlive()) {
                            LockSupport.unpark(cVar);
                            cVar.join(j10);
                        }
                        cVar.f98719b.g(this.f98715g);
                    }
                    if (i11 == i10) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            this.f98715g.b();
            this.f98714f.b();
            while (true) {
                if (k10 != null) {
                    h10 = k10.i(true);
                    if (h10 != null) {
                        continue;
                        z(h10);
                    }
                }
                h10 = this.f98714f.h();
                if (h10 == null && (h10 = this.f98715g.h()) == null) {
                    break;
                }
                z(h10);
            }
            if (k10 != null) {
                k10.A(d.TERMINATED);
            }
            f98693j.set(this, 0L);
            f98694k.set(this, 0L);
        }
    }

    public final void B(long j10, boolean z10) {
        if (z10 || S() || Q(j10)) {
            return;
        }
        S();
    }

    public final void G() {
        if (S() || R(this, 0L, 1, null)) {
            return;
        }
        S();
    }

    public final k L(c cVar, k kVar, boolean z10) {
        if (cVar == null || cVar.f98721d == d.TERMINATED) {
            return kVar;
        }
        if (kVar.f98748c.r() == 0 && cVar.f98721d == d.BLOCKING) {
            return kVar;
        }
        cVar.f98725h = true;
        return cVar.f98719b.a(kVar, z10);
    }

    public final boolean N() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98694k;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if (((int) ((f98704u & j10) >> 42)) == 0) {
                return false;
            }
        } while (!f98694k.compareAndSet(this, j10, j10 - 4398046511104L));
        return true;
    }

    public final boolean Q(long j10) {
        if (u.w(((int) (2097151 & j10)) - ((int) ((j10 & f98702s) >> 21)), 0) < this.f98710b) {
            int g10 = g();
            if (g10 == 1 && this.f98710b > 1) {
                g();
            }
            if (g10 > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean S() {
        c v10;
        do {
            v10 = v();
            if (v10 == null) {
                return false;
            }
        } while (!c.n().compareAndSet(v10, -1, 0));
        LockSupport.unpark(v10);
        return true;
    }

    @Override
    public void close() {
        A(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER);
    }

    public final boolean d(k kVar) {
        return kVar.f98748c.r() == 1 ? this.f98715g.a(kVar) : this.f98714f.a(kVar);
    }

    public final int e(long j10) {
        return (int) ((j10 & f98704u) >> 42);
    }

    @Override
    public void execute(@NotNull Runnable runnable) {
        o(this, runnable, null, false, 6, null);
    }

    public final int f(long j10) {
        return (int) ((j10 & f98702s) >> 21);
    }

    public final int g() {
        synchronized (this.f98716h) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = f98694k;
                long j10 = atomicLongFieldUpdater.get(this);
                int i10 = (int) (j10 & 2097151);
                int w10 = u.w(i10 - ((int) ((j10 & f98702s) >> 21)), 0);
                if (w10 >= this.f98710b) {
                    return 0;
                }
                if (i10 >= this.f98711c) {
                    return 0;
                }
                int i11 = ((int) (f98694k.get(this) & 2097151)) + 1;
                if (i11 <= 0 || this.f98716h.b(i11) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                c cVar = new c(this, i11);
                this.f98716h.c(i11, cVar);
                if (i11 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i12 = w10 + 1;
                cVar.start();
                return i12;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NotNull
    public final k h(@NotNull Runnable runnable, @NotNull l lVar) {
        long a10 = o.f98756f.a();
        if (!(runnable instanceof k)) {
            return new n(runnable, a10, lVar);
        }
        k kVar = (k) runnable;
        kVar.f98747b = a10;
        kVar.f98748c = lVar;
        return kVar;
    }

    public final boolean isTerminated() {
        return f98695l.get(this) != 0;
    }

    public final int j(long j10) {
        return (int) (j10 & 2097151);
    }

    public final c k() {
        Thread currentThread = Thread.currentThread();
        c cVar = currentThread instanceof c ? (c) currentThread : null;
        if (cVar == null || !M.g(ExecutorC14502a.this, this)) {
            return null;
        }
        return cVar;
    }

    public final void l() {
        f98694k.addAndGet(this, f98708y);
    }

    public final int m() {
        return (int) (f98694k.getAndDecrement(this) & 2097151);
    }

    public final void n(@NotNull Runnable runnable, @NotNull l lVar, boolean z10) {
        AbstractC13105b b10 = C13107c.b();
        if (b10 != null) {
            b10.e();
        }
        k h10 = h(runnable, lVar);
        boolean z11 = false;
        boolean z12 = h10.f98748c.r() == 1;
        long addAndGet = z12 ? f98694k.addAndGet(this, 2097152L) : 0L;
        c k10 = k();
        k L10 = L(k10, h10, z10);
        if (L10 != null && !d(L10)) {
            throw new RejectedExecutionException(this.f98713e + " was terminated");
        }
        if (z10 && k10 != null) {
            z11 = true;
        }
        if (z12) {
            B(addAndGet, z11);
        } else {
            if (z11) {
                return;
            }
            G();
        }
    }

    public final int p() {
        return (int) ((f98694k.get(this) & f98704u) >> 42);
    }

    public final int q() {
        return (int) (f98694k.get(this) & 2097151);
    }

    public final long r() {
        return f98694k.addAndGet(this, 2097152L);
    }

    public final int s() {
        return (int) (f98694k.incrementAndGet(this) & 2097151);
    }

    public final void t(AtomicLongFieldUpdater atomicLongFieldUpdater, Mf.l<? super Long, P0> lVar, Object obj) {
        while (true) {
            lVar.invoke(Long.valueOf(atomicLongFieldUpdater.get(obj)));
        }
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList();
        int a10 = this.f98716h.a();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 1; i15 < a10; i15++) {
            c b10 = this.f98716h.b(i15);
            if (b10 != null) {
                int f10 = b10.f98719b.f();
                int i16 = b.f98717a[b10.f98721d.ordinal()];
                if (i16 == 1) {
                    i12++;
                } else if (i16 == 2) {
                    i11++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(f10);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (i16 == 3) {
                    i10++;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(f10);
                    sb3.append('c');
                    arrayList.add(sb3.toString());
                } else if (i16 == 4) {
                    i13++;
                    if (f10 > 0) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(f10);
                        sb4.append('d');
                        arrayList.add(sb4.toString());
                    }
                } else if (i16 == 5) {
                    i14++;
                }
            }
        }
        long j10 = f98694k.get(this);
        return this.f98713e + '@' + W.b(this) + "[Pool Size {core = " + this.f98710b + ", max = " + this.f98711c + "}, Worker States {CPU = " + i10 + ", blocking = " + i11 + ", parked = " + i12 + ", dormant = " + i13 + ", terminated = " + i14 + "}, running workers queues = " + ((Object) arrayList) + ", global CPU queue size = " + this.f98714f.c() + ", global blocking queue size = " + this.f98715g.c() + ", Control State {created workers= " + ((int) (2097151 & j10)) + ", blocking tasks = " + ((int) ((f98702s & j10) >> 21)) + ", CPUs acquired = " + (this.f98710b - ((int) ((f98704u & j10) >> 42))) + "}]";
    }

    public final int u(c cVar) {
        Object k10 = cVar.k();
        while (k10 != f98696m) {
            if (k10 == null) {
                return 0;
            }
            c cVar2 = (c) k10;
            int j10 = cVar2.j();
            if (j10 != 0) {
                return j10;
            }
            k10 = cVar2.k();
        }
        return -1;
    }

    public final c v() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98693j;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            c b10 = this.f98716h.b((int) (2097151 & j10));
            if (b10 == null) {
                return null;
            }
            long j11 = (2097152 + j10) & f98708y;
            int u10 = u(b10);
            if (u10 >= 0 && f98693j.compareAndSet(this, j10, u10 | j11)) {
                b10.x(f98696m);
                return b10;
            }
        }
    }

    public final boolean w(@NotNull c cVar) {
        long j10;
        long j11;
        int j12;
        if (cVar.k() != f98696m) {
            return false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98693j;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            j11 = (2097152 + j10) & f98708y;
            j12 = cVar.j();
            cVar.x(this.f98716h.b((int) (2097151 & j10)));
        } while (!f98693j.compareAndSet(this, j10, j11 | j12));
        return true;
    }

    public final void x(@NotNull c cVar, int i10, int i11) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98693j;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            int i12 = (int) (2097151 & j10);
            long j11 = (2097152 + j10) & f98708y;
            if (i12 == i10) {
                i12 = i11 == 0 ? u(cVar) : i11;
            }
            if (i12 >= 0 && f98693j.compareAndSet(this, j10, j11 | i12)) {
                return;
            }
        }
    }

    public final long y() {
        return f98694k.addAndGet(this, 4398046511104L);
    }

    public final void z(@NotNull k kVar) {
        try {
            kVar.run();
        } catch (Throwable th2) {
            try {
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th2);
                AbstractC13105b b10 = C13107c.b();
                if (b10 == null) {
                }
            } finally {
                AbstractC13105b b11 = C13107c.b();
                if (b11 != null) {
                    b11.f();
                }
            }
        }
    }

    @t0({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 5 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 6 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,1033:1\n298#2:1034\n285#2:1035\n299#2,4:1036\n304#2:1040\n294#2,2:1041\n294#2,2:1045\n280#2:1052\n289#2:1053\n283#2:1054\n280#2:1055\n1#3:1043\n90#4:1044\n28#5,4:1047\n20#6:1051\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n665#1:1034\n665#1:1035\n665#1:1036,4\n679#1:1040\n753#1:1041,2\n807#1:1045,2\n855#1:1052\n881#1:1053\n881#1:1054\n963#1:1055\n790#1:1044\n851#1:1047,4\n851#1:1051\n*E\n"})
    public final class c extends Thread {

        @NotNull
        public static final AtomicIntegerFieldUpdater f98718j = AtomicIntegerFieldUpdater.newUpdater(c.class, "workerCtl");

        @Lf.g
        @NotNull
        public final q f98719b;

        @NotNull
        public final m0.h<k> f98720c;

        @Lf.g
        @NotNull
        public d f98721d;

        public long f98722e;

        public long f98723f;

        public int f98724g;

        @Lf.g
        public boolean f98725h;
        private volatile int indexInArray;

        @Nullable
        private volatile Object nextParkedWorker;

        @x
        private volatile int workerCtl;

        public c() {
            setDaemon(true);
            this.f98719b = new q();
            this.f98720c = new m0.h<>();
            this.f98721d = d.DORMANT;
            this.nextParkedWorker = ExecutorC14502a.f98696m;
            this.f98724g = Tf.f.f24956b.l();
        }

        @NotNull
        public static final AtomicIntegerFieldUpdater n() {
            return f98718j;
        }

        public final boolean A(@NotNull d dVar) {
            d dVar2 = this.f98721d;
            boolean z10 = dVar2 == d.CPU_ACQUIRED;
            if (z10) {
                ExecutorC14502a.f98694k.addAndGet(ExecutorC14502a.this, 4398046511104L);
            }
            if (dVar2 != dVar) {
                this.f98721d = dVar;
            }
            return z10;
        }

        public final k B(int i10) {
            int i11 = (int) (ExecutorC14502a.f98694k.get(ExecutorC14502a.this) & 2097151);
            if (i11 < 2) {
                return null;
            }
            int r10 = r(i11);
            ExecutorC14502a executorC14502a = ExecutorC14502a.this;
            long j10 = Long.MAX_VALUE;
            for (int i12 = 0; i12 < i11; i12++) {
                r10++;
                if (r10 > i11) {
                    r10 = 1;
                }
                c b10 = executorC14502a.f98716h.b(r10);
                if (b10 != null && b10 != this) {
                    long p10 = b10.f98719b.p(i10, this.f98720c);
                    if (p10 == -1) {
                        m0.h<k> hVar = this.f98720c;
                        k kVar = hVar.f95754b;
                        hVar.f95754b = null;
                        return kVar;
                    }
                    if (p10 > 0) {
                        j10 = Math.min(j10, p10);
                    }
                }
            }
            if (j10 == Long.MAX_VALUE) {
                j10 = 0;
            }
            this.f98723f = j10;
            return null;
        }

        public final void C() {
            ExecutorC14502a executorC14502a = ExecutorC14502a.this;
            synchronized (executorC14502a.f98716h) {
                try {
                    if (executorC14502a.isTerminated()) {
                        return;
                    }
                    if (((int) (ExecutorC14502a.f98694k.get(executorC14502a) & 2097151)) <= executorC14502a.f98710b) {
                        return;
                    }
                    if (f98718j.compareAndSet(this, -1, 1)) {
                        int i10 = this.indexInArray;
                        w(0);
                        executorC14502a.x(this, i10, 0);
                        int andDecrement = (int) (ExecutorC14502a.f98694k.getAndDecrement(executorC14502a) & 2097151);
                        if (andDecrement != i10) {
                            c b10 = executorC14502a.f98716h.b(andDecrement);
                            M.m(b10);
                            c cVar = b10;
                            executorC14502a.f98716h.c(i10, cVar);
                            cVar.w(i10);
                            executorC14502a.x(cVar, andDecrement, i10);
                        }
                        executorC14502a.f98716h.c(andDecrement, null);
                        P0 p02 = P0.f98194a;
                        this.f98721d = d.TERMINATED;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public final void b(int i10) {
            if (i10 == 0) {
                return;
            }
            ExecutorC14502a.f98694k.addAndGet(ExecutorC14502a.this, ExecutorC14502a.f98708y);
            if (this.f98721d != d.TERMINATED) {
                this.f98721d = d.DORMANT;
            }
        }

        public final void c(int i10) {
            if (i10 != 0 && A(d.BLOCKING)) {
                ExecutorC14502a.this.G();
            }
        }

        public final void d(k kVar) {
            int r10 = kVar.f98748c.r();
            o(r10);
            c(r10);
            ExecutorC14502a.this.z(kVar);
            b(r10);
        }

        public final k e(boolean z10) {
            k t10;
            k t11;
            if (z10) {
                boolean z11 = r(ExecutorC14502a.this.f98710b * 2) == 0;
                if (z11 && (t11 = t()) != null) {
                    return t11;
                }
                k h10 = this.f98719b.h();
                if (h10 != null) {
                    return h10;
                }
                if (!z11 && (t10 = t()) != null) {
                    return t10;
                }
            } else {
                k t12 = t();
                if (t12 != null) {
                    return t12;
                }
            }
            return B(3);
        }

        public final k f() {
            k i10 = this.f98719b.i();
            if (i10 != null) {
                return i10;
            }
            k h10 = ExecutorC14502a.this.f98715g.h();
            return h10 == null ? B(1) : h10;
        }

        public final k h() {
            k k10 = this.f98719b.k();
            if (k10 != null) {
                return k10;
            }
            k h10 = ExecutorC14502a.this.f98715g.h();
            return h10 == null ? B(2) : h10;
        }

        @Nullable
        public final k i(boolean z10) {
            return y() ? e(z10) : f();
        }

        public final int j() {
            return this.indexInArray;
        }

        @Nullable
        public final Object k() {
            return this.nextParkedWorker;
        }

        @NotNull
        public final ExecutorC14502a l() {
            return ExecutorC14502a.this;
        }

        public final int m() {
            return this.workerCtl;
        }

        public final void o(int i10) {
            this.f98722e = 0L;
            if (this.f98721d == d.PARKING) {
                this.f98721d = d.BLOCKING;
            }
        }

        public final boolean p() {
            return this.nextParkedWorker != ExecutorC14502a.f98696m;
        }

        public final boolean q() {
            return this.f98721d == d.BLOCKING;
        }

        public final int r(int i10) {
            int i11 = this.f98724g;
            int i12 = i11 ^ (i11 << 13);
            int i13 = i12 ^ (i12 >> 17);
            int i14 = i13 ^ (i13 << 5);
            this.f98724g = i14;
            int i15 = i10 - 1;
            return (i15 & i10) == 0 ? i14 & i15 : (i14 & Integer.MAX_VALUE) % i10;
        }

        @Override
        public void run() {
            v();
        }

        public final void s() {
            if (this.f98722e == 0) {
                this.f98722e = System.nanoTime() + ExecutorC14502a.this.f98712d;
            }
            LockSupport.parkNanos(ExecutorC14502a.this.f98712d);
            if (System.nanoTime() - this.f98722e >= 0) {
                this.f98722e = 0L;
                C();
            }
        }

        public final k t() {
            if (r(2) == 0) {
                k h10 = ExecutorC14502a.this.f98714f.h();
                return h10 != null ? h10 : ExecutorC14502a.this.f98715g.h();
            }
            k h11 = ExecutorC14502a.this.f98715g.h();
            return h11 != null ? h11 : ExecutorC14502a.this.f98714f.h();
        }

        public final long u() {
            boolean z10 = this.f98721d == d.CPU_ACQUIRED;
            k h10 = z10 ? h() : f();
            if (h10 == null) {
                long j10 = this.f98723f;
                if (j10 == 0) {
                    return -1L;
                }
                return j10;
            }
            ExecutorC14502a.this.z(h10);
            if (!z10) {
                ExecutorC14502a.f98694k.addAndGet(ExecutorC14502a.this, ExecutorC14502a.f98708y);
            }
            return 0L;
        }

        public final void v() {
            loop0: while (true) {
                boolean z10 = false;
                while (!ExecutorC14502a.this.isTerminated() && this.f98721d != d.TERMINATED) {
                    k i10 = i(this.f98725h);
                    if (i10 != null) {
                        this.f98723f = 0L;
                        d(i10);
                    } else {
                        this.f98725h = false;
                        if (this.f98723f == 0) {
                            z();
                        } else if (z10) {
                            A(d.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f98723f);
                            this.f98723f = 0L;
                        } else {
                            z10 = true;
                        }
                    }
                }
            }
            A(d.TERMINATED);
        }

        public final void w(int i10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(ExecutorC14502a.this.f98713e);
            sb2.append("-worker-");
            sb2.append(i10 == 0 ? "TERMINATED" : String.valueOf(i10));
            setName(sb2.toString());
            this.indexInArray = i10;
        }

        public final void x(@Nullable Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean y() {
            long j10;
            if (this.f98721d == d.CPU_ACQUIRED) {
                return true;
            }
            ExecutorC14502a executorC14502a = ExecutorC14502a.this;
            AtomicLongFieldUpdater atomicLongFieldUpdater = ExecutorC14502a.f98694k;
            do {
                j10 = atomicLongFieldUpdater.get(executorC14502a);
                if (((int) ((ExecutorC14502a.f98704u & j10) >> 42)) == 0) {
                    return false;
                }
            } while (!ExecutorC14502a.f98694k.compareAndSet(executorC14502a, j10, j10 - 4398046511104L));
            this.f98721d = d.CPU_ACQUIRED;
            return true;
        }

        public final void z() {
            if (!p()) {
                ExecutorC14502a.this.w(this);
                return;
            }
            f98718j.set(this, -1);
            while (p() && f98718j.get(this) == -1 && !ExecutorC14502a.this.isTerminated() && this.f98721d != d.TERMINATED) {
                A(d.PARKING);
                Thread.interrupted();
                s();
            }
        }

        public c(ExecutorC14502a executorC14502a, int i10) {
            this();
            w(i10);
        }
    }

    public ExecutorC14502a(int i10, int i11, long j10, String str, int i12, C14026x c14026x) {
        this(i10, i11, (i12 & 4) != 0 ? o.f98755e : j10, (i12 & 8) != 0 ? o.f98751a : str);
    }
}
