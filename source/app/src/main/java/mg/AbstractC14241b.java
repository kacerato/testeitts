package mg;

import eg.F0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@F0
@t0({"SMAP\nAtomic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Atomic.kt\nkotlinx/coroutines/internal/AtomicOp\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"})
public abstract class AbstractC14241b<T> extends K {

    @NotNull
    public static final AtomicReferenceFieldUpdater f97054a = AtomicReferenceFieldUpdater.newUpdater(AbstractC14241b.class, Object.class, "_consensus");

    @Lf.x
    @Nullable
    private volatile Object _consensus = C14240a.f97050a;

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @NotNull
    public AbstractC14241b<?> a() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @Nullable
    public final Object b(@Nullable Object obj) {
        Object obj2 = f97054a.get(this);
        if (obj2 == C14240a.f97050a) {
            obj2 = d(e(obj));
        }
        c(obj, obj2);
        return obj2;
    }

    public abstract void c(T t10, @Nullable Object obj);

    public final Object d(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f97054a;
        Object obj2 = atomicReferenceFieldUpdater.get(this);
        Object obj3 = C14240a.f97050a;
        return obj2 != obj3 ? obj2 : androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj3, obj) ? obj : atomicReferenceFieldUpdater.get(this);
    }

    @Nullable
    public abstract Object e(T t10);
}
