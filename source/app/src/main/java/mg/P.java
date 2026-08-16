package mg;

import eg.Z0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.t0;
import mg.P;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n1#1,269:1\n252#2,4:270\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n*L\n225#1:270,4\n*E\n"})
public abstract class P<S extends P<S>> extends AbstractC14246g<S> implements Z0 {

    @NotNull
    public static final AtomicIntegerFieldUpdater f97033e = AtomicIntegerFieldUpdater.newUpdater(P.class, "cleanedAndPointers");

    @Lf.x
    private volatile int cleanedAndPointers;

    @Lf.g
    public final long f97034d;

    public P(long j10, @Nullable S s10, int i10) {
        super(s10);
        this.f97034d = j10;
        this.cleanedAndPointers = i10 << 16;
    }

    @Override
    public boolean h() {
        return f97033e.get(this) == p() && !i();
    }

    public final boolean o() {
        return f97033e.addAndGet(this, -65536) == p() && !i();
    }

    public abstract int p();

    public abstract void q(int i10, @Nullable Throwable th2, @NotNull yf.j jVar);

    public final void r() {
        if (f97033e.incrementAndGet(this) == p()) {
            l();
        }
    }

    public final boolean s() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f97033e;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 == p() && !i()) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, 65536 + i10));
        return true;
    }
}
