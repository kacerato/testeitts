package jg;

import eg.C13123k;
import eg.K0;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13847n {

    @t0({"SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n*L\n1#1,118:1\n*E\n"})
    public static final class a<T> implements InterfaceC13843j<T> {

        public final Mf.p<T, yf.f<? super P0>, Object> f93395b;

        @t0({"SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1\n*L\n1#1,118:1\n*E\n"})
        public static final class C1816a extends Bf.d {

            public Object f93396b;

            public int f93398d;

            public C1816a(yf.f<? super C1816a> fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93396b = obj;
                this.f93398d |= Integer.MIN_VALUE;
                return a.this.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(Mf.p<? super T, ? super yf.f<? super P0>, ? extends Object> pVar) {
            this.f93395b = pVar;
        }

        @Nullable
        public Object a(T t10, @NotNull yf.f<? super P0> fVar) {
            kotlin.jvm.internal.J.e(4);
            new C1816a(fVar);
            kotlin.jvm.internal.J.e(5);
            this.f93395b.invoke(t10, fVar);
            return P0.f98194a;
        }

        @Override
        @Nullable
        public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            Object invoke = this.f93395b.invoke(t10, fVar);
            return invoke == Af.d.l() ? invoke : P0.f98194a;
        }
    }

    @t0({"SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collectIndexed$2\n+ 2 FlowExceptions.common.kt\nkotlinx/coroutines/flow/internal/FlowExceptions_commonKt\n*L\n1#1,118:1\n32#2,4:119\n*S KotlinDebug\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collectIndexed$2\n*L\n62#1:119,4\n*E\n"})
    public static final class b<T> implements InterfaceC13843j<T> {

        public int f93399b;

        public final Mf.q<Integer, T, yf.f<? super P0>, Object> f93400c;

        @t0({"SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collectIndexed$2$emit$1\n*L\n1#1,118:1\n*E\n"})
        public static final class a extends Bf.d {

            public Object f93401b;

            public int f93403d;

            public a(yf.f<? super a> fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f93401b = obj;
                this.f93403d |= Integer.MIN_VALUE;
                return b.this.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b(Mf.q<? super Integer, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar) {
            this.f93400c = qVar;
        }

        @Nullable
        public Object a(T t10, @NotNull yf.f<? super P0> fVar) {
            kotlin.jvm.internal.J.e(4);
            new a(fVar);
            kotlin.jvm.internal.J.e(5);
            Mf.q<Integer, T, yf.f<? super P0>, Object> qVar = this.f93400c;
            int i10 = this.f93399b;
            this.f93399b = i10 + 1;
            if (i10 < 0) {
                throw new ArithmeticException("Index overflow has happened");
            }
            qVar.n(Integer.valueOf(i10), t10, fVar);
            return P0.f98194a;
        }

        @Override
        @Nullable
        public Object emit(T t10, @NotNull yf.f<? super P0> fVar) {
            Mf.q<Integer, T, yf.f<? super P0>, Object> qVar = this.f93400c;
            int i10 = this.f93399b;
            this.f93399b = i10 + 1;
            if (i10 < 0) {
                throw new ArithmeticException("Index overflow has happened");
            }
            Object n10 = qVar.n(Bf.b.f(i10), t10, fVar);
            return n10 == Af.d.l() ? n10 : P0.f98194a;
        }
    }

    @Bf.f(c = "kotlinx.coroutines.flow.FlowKt__CollectKt$launchIn$1", f = "Collect.kt", i = {}, l = {50}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends Bf.q implements Mf.p<eg.S, yf.f<? super P0>, Object> {

        public int f93404b;

        public final InterfaceC13842i<T> f93405c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(InterfaceC13842i<? extends T> interfaceC13842i, yf.f<? super c> fVar) {
            super(2, fVar);
            this.f93405c = interfaceC13842i;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            return new c(this.f93405c, fVar);
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull eg.S s10, @Nullable yf.f<? super P0> fVar) {
            return ((c) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f93404b;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13842i<T> interfaceC13842i = this.f93405c;
                this.f93404b = 1;
                if (C13844k.y(interfaceC13842i, this) == l10) {
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

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Backwards compatibility with JS and K/N")
    public static final <T> Object a(InterfaceC13842i<? extends T> interfaceC13842i, Mf.p<? super T, ? super yf.f<? super P0>, ? extends Object> pVar, yf.f<? super P0> fVar) {
        Object a10 = interfaceC13842i.a(new a(pVar), fVar);
        return a10 == Af.d.l() ? a10 : P0.f98194a;
    }

    @Nullable
    public static final Object b(@NotNull InterfaceC13842i<?> interfaceC13842i, @NotNull yf.f<? super P0> fVar) {
        Object a10 = interfaceC13842i.a(kg.r.f95203b, fVar);
        return a10 == Af.d.l() ? a10 : P0.f98194a;
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Backwards compatibility with JS and K/N")
    public static final <T> Object c(InterfaceC13842i<? extends T> interfaceC13842i, Mf.p<? super T, ? super yf.f<? super P0>, ? extends Object> pVar, yf.f<? super P0> fVar) {
        a aVar = new a(pVar);
        kotlin.jvm.internal.J.e(0);
        interfaceC13842i.a(aVar, fVar);
        kotlin.jvm.internal.J.e(1);
        return P0.f98194a;
    }

    @Nullable
    public static final <T> Object d(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.q<? super Integer, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar, @NotNull yf.f<? super P0> fVar) {
        Object a10 = interfaceC13842i.a(new b(qVar), fVar);
        return a10 == Af.d.l() ? a10 : P0.f98194a;
    }

    public static final <T> Object e(InterfaceC13842i<? extends T> interfaceC13842i, Mf.q<? super Integer, ? super T, ? super yf.f<? super P0>, ? extends Object> qVar, yf.f<? super P0> fVar) {
        b bVar = new b(qVar);
        kotlin.jvm.internal.J.e(0);
        interfaceC13842i.a(bVar, fVar);
        kotlin.jvm.internal.J.e(1);
        return P0.f98194a;
    }

    @Nullable
    public static final <T> Object f(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Mf.p<? super T, ? super yf.f<? super P0>, ? extends Object> pVar, @NotNull yf.f<? super P0> fVar) {
        InterfaceC13842i d10;
        d10 = C13849p.d(C13844k.X0(interfaceC13842i, pVar), 0, null, 2, null);
        Object y10 = C13844k.y(d10, fVar);
        return y10 == Af.d.l() ? y10 : P0.f98194a;
    }

    @Nullable
    public static final <T> Object g(@NotNull InterfaceC13843j<? super T> interfaceC13843j, @NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull yf.f<? super P0> fVar) {
        C13844k.o0(interfaceC13843j);
        Object a10 = interfaceC13842i.a(interfaceC13843j, fVar);
        return a10 == Af.d.l() ? a10 : P0.f98194a;
    }

    @NotNull
    public static final <T> K0 h(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull eg.S s10) {
        K0 f10;
        f10 = C13123k.f(s10, null, null, new c(interfaceC13842i, null), 3, null);
        return f10;
    }
}
