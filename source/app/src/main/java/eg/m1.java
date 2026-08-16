package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nThreadContextElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadContextElement.kt\nkotlinx/coroutines/ThreadContextElementKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n266#1:289\n1#2:290\n*S KotlinDebug\n*F\n+ 1 ThreadContextElement.kt\nkotlinx/coroutines/ThreadContextElementKt\n*L\n287#1:289\n*E\n"})
public final class m1 {
    @NotNull
    public static final <T> l1<T> a(@NotNull ThreadLocal<T> threadLocal, T t10) {
        return new mg.a0(t10, threadLocal);
    }

    public static l1 b(ThreadLocal threadLocal, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = threadLocal.get();
        }
        return a(threadLocal, obj);
    }

    @Nullable
    public static final Object c(@NotNull ThreadLocal<?> threadLocal, @NotNull yf.f<? super nf.P0> fVar) {
        if (fVar.getContext().get(new mg.b0(threadLocal)) != null) {
            return nf.P0.f98194a;
        }
        throw new IllegalStateException(("ThreadLocal " + ((Object) threadLocal) + " is missing from context " + ((Object) fVar.getContext())).toString());
    }

    public static final Object d(ThreadLocal<?> threadLocal, yf.f<? super nf.P0> fVar) {
        kotlin.jvm.internal.J.e(3);
        throw null;
    }

    @Nullable
    public static final Object e(@NotNull ThreadLocal<?> threadLocal, @NotNull yf.f<? super Boolean> fVar) {
        return Bf.b.a(fVar.getContext().get(new mg.b0(threadLocal)) != null);
    }

    public static final Object f(ThreadLocal<?> threadLocal, yf.f<? super Boolean> fVar) {
        kotlin.jvm.internal.J.e(3);
        throw null;
    }
}
