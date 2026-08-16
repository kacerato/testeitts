package mg;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.t0;
import mg.AbstractC14246g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,269:1\n107#1,7:270\n1#2:277\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n115#1:270,7\n*E\n"})
public abstract class AbstractC14246g<N extends AbstractC14246g<N>> {

    @NotNull
    public static final AtomicReferenceFieldUpdater f97067b = AtomicReferenceFieldUpdater.newUpdater(AbstractC14246g.class, Object.class, "_next");

    @NotNull
    public static final AtomicReferenceFieldUpdater f97068c = AtomicReferenceFieldUpdater.newUpdater(AbstractC14246g.class, Object.class, "_prev");

    @Lf.x
    @Nullable
    private volatile Object _next;

    @Lf.x
    @Nullable
    private volatile Object _prev;

    public AbstractC14246g(@Nullable N n10) {
        this._prev = n10;
    }

    private final void n(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Mf.l<Object, ? extends Object> lVar, Object obj) {
        Object obj2;
        do {
            obj2 = atomicReferenceFieldUpdater.get(obj);
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, obj, obj2, lVar.invoke(obj2)));
    }

    public final void b() {
        f97068c.lazySet(this, null);
    }

    public final N c() {
        N g10 = g();
        while (g10 != null && g10.h()) {
            g10 = (N) f97068c.get(g10);
        }
        return g10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [mg.g] */
    public final N d() {
        ?? e10;
        N e11 = e();
        kotlin.jvm.internal.M.m(e11);
        while (e11.h() && (e10 = e11.e()) != 0) {
            e11 = e10;
        }
        return e11;
    }

    @Nullable
    public final N e() {
        Object f10 = f();
        if (f10 == C14245f.a()) {
            return null;
        }
        return (N) f10;
    }

    public final Object f() {
        return f97067b.get(this);
    }

    @Nullable
    public final N g() {
        return (N) f97068c.get(this);
    }

    public abstract boolean h();

    public final boolean i() {
        return e() == null;
    }

    public final boolean j() {
        return androidx.concurrent.futures.a.a(f97067b, this, null, C14245f.a());
    }

    @Nullable
    public final N k(@NotNull Mf.a aVar) {
        Object f10 = f();
        if (f10 != C14245f.a()) {
            return (N) f10;
        }
        aVar.invoke();
        throw new KotlinNothingValueException();
    }

    public final void l() {
        Object obj;
        if (i()) {
            return;
        }
        while (true) {
            N c10 = c();
            N d10 = d();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97068c;
            do {
                obj = atomicReferenceFieldUpdater.get(d10);
            } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, d10, obj, ((AbstractC14246g) obj) == null ? null : c10));
            if (c10 != null) {
                f97067b.set(c10, d10);
            }
            if (!d10.h() || d10.i()) {
                if (c10 == null || !c10.h()) {
                    return;
                }
            }
        }
    }

    public final boolean m(@NotNull N n10) {
        return androidx.concurrent.futures.a.a(f97067b, this, null, n10);
    }
}
