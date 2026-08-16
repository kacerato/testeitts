package og;

import Lf.x;
import com.google.common.util.concurrent.C0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueueKt\n*L\n1#1,255:1\n93#2:256\n93#2:257\n93#2:258\n93#2:261\n93#2:262\n1#3:259\n25#4:260\n*S KotlinDebug\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n*L\n95#1:256\n162#1:257\n185#1:258\n205#1:261\n249#1:262\n205#1:260\n*E\n"})
public final class q {

    @NotNull
    public static final AtomicReferenceFieldUpdater f98762b = AtomicReferenceFieldUpdater.newUpdater(q.class, Object.class, "lastScheduledTask");

    @NotNull
    public static final AtomicIntegerFieldUpdater f98763c = AtomicIntegerFieldUpdater.newUpdater(q.class, "producerIndex");

    @NotNull
    public static final AtomicIntegerFieldUpdater f98764d = AtomicIntegerFieldUpdater.newUpdater(q.class, "consumerIndex");

    @NotNull
    public static final AtomicIntegerFieldUpdater f98765e = AtomicIntegerFieldUpdater.newUpdater(q.class, "blockingTasksInBuffer");

    @NotNull
    public final AtomicReferenceArray<k> f98766a = new AtomicReferenceArray<>(128);

    @x
    private volatile int blockingTasksInBuffer;

    @x
    private volatile int consumerIndex;

    @x
    @Nullable
    private volatile Object lastScheduledTask;

    @x
    private volatile int producerIndex;

    public static k b(q qVar, k kVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return qVar.a(kVar, z10);
    }

    @Nullable
    public final k a(@NotNull k kVar, boolean z10) {
        if (z10) {
            return c(kVar);
        }
        k kVar2 = (k) f98762b.getAndSet(this, kVar);
        if (kVar2 == null) {
            return null;
        }
        return c(kVar2);
    }

    public final k c(k kVar) {
        if (e() == 127) {
            return kVar;
        }
        if (kVar.f98748c.r() == 1) {
            f98765e.incrementAndGet(this);
        }
        int i10 = f98763c.get(this) & 127;
        while (this.f98766a.get(i10) != null) {
            Thread.yield();
        }
        this.f98766a.lazySet(i10, kVar);
        f98763c.incrementAndGet(this);
        return null;
    }

    public final void d(k kVar) {
        if (kVar == null || kVar.f98748c.r() != 1) {
            return;
        }
        f98765e.decrementAndGet(this);
    }

    public final int e() {
        return f98763c.get(this) - f98764d.get(this);
    }

    public final int f() {
        return f98762b.get(this) != null ? e() + 1 : e();
    }

    public final void g(@NotNull f fVar) {
        k kVar = (k) f98762b.getAndSet(this, null);
        if (kVar != null) {
            fVar.a(kVar);
        }
        do {
        } while (l(fVar));
    }

    @Nullable
    public final k h() {
        k kVar = (k) f98762b.getAndSet(this, null);
        return kVar == null ? j() : kVar;
    }

    @Nullable
    public final k i() {
        return m(true);
    }

    public final k j() {
        k andSet;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f98764d;
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 - f98763c.get(this) == 0) {
                return null;
            }
            int i11 = i10 & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i10, i10 + 1) && (andSet = this.f98766a.getAndSet(i11, null)) != null) {
                d(andSet);
                return andSet;
            }
        }
    }

    @Nullable
    public final k k() {
        return m(false);
    }

    public final boolean l(f fVar) {
        k j10 = j();
        if (j10 == null) {
            return false;
        }
        fVar.a(j10);
        return true;
    }

    public final k m(boolean z10) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        k kVar;
        do {
            atomicReferenceFieldUpdater = f98762b;
            kVar = (k) atomicReferenceFieldUpdater.get(this);
            if (kVar != null) {
                if ((kVar.f98748c.r() == 1) == z10) {
                }
            }
            int i10 = f98764d.get(this);
            int i11 = f98763c.get(this);
            while (i10 != i11) {
                if (z10 && f98765e.get(this) == 0) {
                    return null;
                }
                i11--;
                k o10 = o(i11, z10);
                if (o10 != null) {
                    return o10;
                }
            }
            return null;
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, kVar, null));
        return kVar;
    }

    public final k n(int i10) {
        int i11 = f98764d.get(this);
        int i12 = f98763c.get(this);
        boolean z10 = i10 == 1;
        while (i11 != i12) {
            if (z10 && f98765e.get(this) == 0) {
                return null;
            }
            int i13 = i11 + 1;
            k o10 = o(i11, z10);
            if (o10 != null) {
                return o10;
            }
            i11 = i13;
        }
        return null;
    }

    public final k o(int i10, boolean z10) {
        int i11 = i10 & 127;
        k kVar = this.f98766a.get(i11);
        if (kVar != null) {
            if ((kVar.f98748c.r() == 1) == z10 && C0.a(this.f98766a, i11, kVar, null)) {
                if (z10) {
                    f98765e.decrementAndGet(this);
                }
                return kVar;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long p(int i10, @NotNull m0.h<k> hVar) {
        T j10 = i10 == 3 ? j() : n(i10);
        if (j10 == 0) {
            return q(i10, hVar);
        }
        hVar.f95754b = j10;
        return -1L;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, og.k, java.lang.Object] */
    public final long q(int i10, m0.h<k> hVar) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        ?? r12;
        do {
            atomicReferenceFieldUpdater = f98762b;
            r12 = (k) atomicReferenceFieldUpdater.get(this);
            if (r12 == 0) {
                return -2L;
            }
            if (((r12.f98748c.r() != 1 ? 2 : 1) & i10) == 0) {
                return -2L;
            }
            long a10 = o.f98756f.a() - r12.f98747b;
            long j10 = o.f98752b;
            if (a10 < j10) {
                return j10 - a10;
            }
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, r12, null));
        hVar.f95754b = r12;
        return -1L;
    }
}
