package eg;

import nf.C14416i0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nCompletableDeferred.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompletableDeferred.kt\nkotlinx/coroutines/CompletableDeferredKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,94:1\n1#2:95\n*E\n"})
public final class C13088A {
    @NotNull
    public static final <T> InterfaceC13150y<T> a(@Nullable K0 k02) {
        return new C13152z(k02);
    }

    @NotNull
    public static final <T> InterfaceC13150y<T> b(T t10) {
        C13152z c13152z = new C13152z(null);
        c13152z.n(t10);
        return c13152z;
    }

    public static InterfaceC13150y c(K0 k02, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            k02 = null;
        }
        return a(k02);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean d(@NotNull InterfaceC13150y<T> interfaceC13150y, @NotNull Object obj) {
        Throwable e10 = C14416i0.e(obj);
        return e10 == null ? interfaceC13150y.n(obj) : interfaceC13150y.c(e10);
    }
}
