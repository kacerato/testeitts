package eg;

import nf.C14416i0;
import nf.C14418j0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nCompletionState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompletionState.kt\nkotlinx/coroutines/CompletionStateKt\n+ 2 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,67:1\n61#2,2:68\n61#2,2:70\n*S KotlinDebug\n*F\n+ 1 CompletionState.kt\nkotlinx/coroutines/CompletionStateKt\n*L\n21#1:68,2\n27#1:70,2\n*E\n"})
public final class C13096I {
    @NotNull
    public static final <T> Object a(@Nullable Object obj, @NotNull yf.f<? super T> fVar) {
        if (obj instanceof C13091D) {
            C14416i0.a aVar = C14416i0.f98201c;
            return C14416i0.b(C14418j0.a(((C13091D) obj).f85604a));
        }
        C14416i0.a aVar2 = C14416i0.f98201c;
        return C14416i0.b(obj);
    }

    @Nullable
    public static final <T> Object b(@NotNull Object obj, @Nullable Mf.l<? super Throwable, nf.P0> lVar) {
        Throwable e10 = C14416i0.e(obj);
        return e10 == null ? lVar != null ? new C13092E(obj, lVar) : obj : new C13091D(e10, false, 2, null);
    }

    @Nullable
    public static final <T> Object c(@NotNull Object obj, @NotNull InterfaceC13133p<?> interfaceC13133p) {
        Throwable e10 = C14416i0.e(obj);
        return e10 == null ? obj : new C13091D(e10, false, 2, null);
    }

    public static Object d(Object obj, Mf.l lVar, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            lVar = null;
        }
        return b(obj, lVar);
    }
}
