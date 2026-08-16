package kg;

import jg.InterfaceC13843j;
import kotlin.jvm.internal.I;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.w0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class u {

    @NotNull
    public static final Mf.q<InterfaceC13843j<Object>, Object, yf.f<? super P0>, Object> f95213a;

    public class a extends I implements Mf.q<InterfaceC13843j<? super Object>, Object, yf.f<? super P0>, Object>, Bf.p {

        public static final a f95214b = new a();

        public a() {
            super(3, InterfaceC13843j.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override
        @Nullable
        public final Object n(@NotNull InterfaceC13843j<Object> interfaceC13843j, @Nullable Object obj, @NotNull yf.f<? super P0> fVar) {
            return interfaceC13843j.emit(obj, fVar);
        }
    }

    static {
        a aVar = a.f95214b;
        M.n(aVar, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>");
        f95213a = (Mf.q) w0.q(aVar, 3);
    }

    public static final Mf.q a() {
        return f95213a;
    }

    public static void b() {
    }
}
