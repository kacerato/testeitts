package kg;

import jg.InterfaceC13842i;
import jg.InterfaceC13843j;
import kotlin.jvm.internal.t0;
import kotlin.jvm.internal.w0;
import mg.Z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,245:1\n95#2,5:246\n*S KotlinDebug\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n*L\n226#1:246,5\n*E\n"})
public final class C13983e {
    @NotNull
    public static final <T> AbstractC13982d<T> b(@NotNull InterfaceC13842i<? extends T> interfaceC13842i) {
        AbstractC13982d<T> abstractC13982d = interfaceC13842i instanceof AbstractC13982d ? (AbstractC13982d) interfaceC13842i : null;
        if (abstractC13982d == null) {
            return new h(interfaceC13842i, null, 0, null, 14, null);
        }
        return abstractC13982d;
    }

    @Nullable
    public static final <T, V> Object c(@NotNull yf.j jVar, V v10, @NotNull Object obj, @NotNull Mf.p<? super V, ? super yf.f<? super T>, ? extends Object> pVar, @NotNull yf.f<? super T> fVar) {
        Object c10 = Z.c(jVar, obj);
        try {
            Object invoke = ((Mf.p) w0.q(pVar, 2)).invoke(v10, new x(fVar, jVar));
            Z.a(jVar, c10);
            if (invoke == Af.d.l()) {
                Bf.h.c(fVar);
            }
            return invoke;
        } catch (Throwable th2) {
            Z.a(jVar, c10);
            throw th2;
        }
    }

    public static Object d(yf.j jVar, Object obj, Object obj2, Mf.p pVar, yf.f fVar, int i10, Object obj3) {
        if ((i10 & 4) != 0) {
            obj2 = Z.b(jVar);
        }
        return c(jVar, obj, obj2, pVar, fVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> InterfaceC13843j<T> e(InterfaceC13843j<? super T> interfaceC13843j, yf.j jVar) {
        return interfaceC13843j instanceof w ? true : interfaceC13843j instanceof r ? interfaceC13843j : new z(interfaceC13843j, jVar);
    }
}
