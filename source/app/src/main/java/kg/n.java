package kg;

import eg.S;
import jg.InterfaceC13842i;
import jg.InterfaceC13843j;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.InterfaceC14401b;
import nf.P0;
import ng.C14446b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nFlowCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,63:1\n107#2:64\n*S KotlinDebug\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n*L\n50#1:64\n*E\n"})
public final class n {

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n*L\n1#1,113:1\n51#2,2:114\n*E\n"})
    public static final class a<R> implements InterfaceC13842i<R> {

        public final Mf.q f95196b;

        public a(Mf.q qVar) {
            this.f95196b = qVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super R> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            Object a10 = n.a(new b(this.f95196b, interfaceC13843j, null), fVar);
            return a10 == Af.d.l() ? a10 : P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.internal.FlowCoroutineKt$scopedFlow$1$1", f = "FlowCoroutine.kt", i = {}, l = {51}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {

        public int f95197b;

        public Object f95198c;

        public final Mf.q<S, InterfaceC13843j<? super R>, yf.f<? super P0>, Object> f95199d;

        public final InterfaceC13843j<R> f95200e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(Mf.q<? super S, ? super InterfaceC13843j<? super R>, ? super yf.f<? super P0>, ? extends Object> qVar, InterfaceC13843j<? super R> interfaceC13843j, yf.f<? super b> fVar) {
            super(2, fVar);
            this.f95199d = qVar;
            this.f95200e = interfaceC13843j;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            b bVar = new b(this.f95199d, this.f95200e, fVar);
            bVar.f95198c = obj;
            return bVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull S s10, @Nullable yf.f<? super P0> fVar) {
            return ((b) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f95197b;
            if (i10 == 0) {
                C14418j0.n(obj);
                S s10 = (S) this.f95198c;
                Mf.q<S, InterfaceC13843j<? super R>, yf.f<? super P0>, Object> qVar = this.f95199d;
                Object obj2 = this.f95200e;
                this.f95197b = 1;
                if (qVar.n(s10, obj2, this) == l10) {
                    return l10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
            }
            return P0.f98194a;
        }
    }

    @Nullable
    public static final <R> Object a(@InterfaceC14401b @NotNull Mf.p<? super S, ? super yf.f<? super R>, ? extends Object> pVar, @NotNull yf.f<? super R> fVar) {
        m mVar = new m(fVar.getContext(), fVar);
        Object e10 = C14446b.e(mVar, mVar, pVar);
        if (e10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return e10;
    }

    @NotNull
    public static final <R> InterfaceC13842i<R> b(@InterfaceC14401b @NotNull Mf.q<? super S, ? super InterfaceC13843j<? super R>, ? super yf.f<? super P0>, ? extends Object> qVar) {
        return new a(qVar);
    }
}
