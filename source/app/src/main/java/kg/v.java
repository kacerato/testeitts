package kg;

import eg.K0;
import jg.InterfaceC13842i;
import jg.InterfaceC13843j;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14401b;
import nf.InterfaceC14410f0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public final class v {

    public static final class a extends O implements Mf.p<Integer, j.b, Integer> {

        public final t<?> f95215b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(t<?> tVar) {
            super(2);
            this.f95215b = tVar;
        }

        @NotNull
        public final Integer b(int i10, @NotNull j.b bVar) {
            j.c<?> key = bVar.getKey();
            j.b bVar2 = this.f95215b.f95208c.get(key);
            if (key != K0.f85619y4) {
                return Integer.valueOf(bVar != bVar2 ? Integer.MIN_VALUE : i10 + 1);
            }
            K0 k02 = (K0) bVar2;
            M.n(bVar, "null cannot be cast to non-null type kotlinx.coroutines.Job");
            K0 b10 = v.b((K0) bVar, k02);
            if (b10 == k02) {
                if (k02 != null) {
                    i10++;
                }
                return Integer.valueOf(i10);
            }
            throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + ((Object) b10) + ", expected child of " + ((Object) k02) + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
        }

        @Override
        public Integer invoke(Integer num, j.b bVar) {
            return b(num.intValue(), bVar);
        }
    }

    @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n*L\n1#1,113:1\n*E\n"})
    public static final class b<T> implements InterfaceC13842i<T> {

        public final Mf.p<InterfaceC13843j<? super T>, yf.f<? super P0>, Object> f95216b;

        @t0({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1\n*L\n1#1,113:1\n*E\n"})
        public static final class a extends Bf.d {

            public Object f95217b;

            public int f95219d;

            public a(yf.f<? super a> fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f95217b = obj;
                this.f95219d |= Integer.MIN_VALUE;
                return b.this.a(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b(Mf.p<? super InterfaceC13843j<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
            this.f95216b = pVar;
        }

        @Override
        @Nullable
        public Object a(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            Object invoke = this.f95216b.invoke(interfaceC13843j, fVar);
            return invoke == Af.d.l() ? invoke : P0.f98194a;
        }

        @Nullable
        public Object d(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull yf.f<? super P0> fVar) {
            J.e(4);
            new a(fVar);
            J.e(5);
            this.f95216b.invoke(interfaceC13843j, fVar);
            return P0.f98194a;
        }
    }

    @Lf.j(name = "checkContext")
    public static final void a(@NotNull t<?> tVar, @NotNull yf.j jVar) {
        if (((Number) jVar.fold(0, new a(tVar))).intValue() == tVar.f95209d) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + ((Object) tVar.f95208c) + ",\n\t\tbut emission happened in " + ((Object) jVar) + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    @Nullable
    public static final K0 b(@Nullable K0 k02, @Nullable K0 k03) {
        while (k02 != null) {
            if (k02 == k03 || !(k02 instanceof mg.O)) {
                return k02;
            }
            k02 = k02.getParent();
        }
        return null;
    }

    @InterfaceC14410f0
    @NotNull
    public static final <T> InterfaceC13842i<T> c(@InterfaceC14401b @NotNull Mf.p<? super InterfaceC13843j<? super T>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        return new b(pVar);
    }
}
