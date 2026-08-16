package Af;

import Bf.k;
import Mf.l;
import Mf.p;
import Mf.q;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.jvm.internal.w0;
import nf.C14418j0;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@t0({"SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n1#1,270:1\n204#1,4:271\n225#1:275\n204#1,4:276\n225#1:280\n*S KotlinDebug\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n130#1:271,4\n130#1:275\n165#1:276,4\n165#1:280\n*E\n"})
public class c {

    @t0({"SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1\n*L\n1#1,270:1\n*E\n"})
    public static final class a extends k {

        public int f528b;

        public final l<yf.f<? super T>, Object> f529c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(yf.f<? super T> fVar, l<? super yf.f<? super T>, ? extends Object> lVar) {
            super(fVar);
            this.f529c = lVar;
            M.n(fVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override
        public Object invokeSuspend(Object obj) {
            int i10 = this.f528b;
            if (i10 == 0) {
                this.f528b = 1;
                C14418j0.n(obj);
                return this.f529c.invoke(this);
            }
            if (i10 != 1) {
                throw new IllegalStateException("This coroutine had already completed");
            }
            this.f528b = 2;
            C14418j0.n(obj);
            return obj;
        }
    }

    @t0({"SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2\n*L\n1#1,270:1\n*E\n"})
    public static final class b extends Bf.d {

        public int f530b;

        public final l<yf.f<? super T>, Object> f531c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(yf.f<? super T> fVar, j jVar, l<? super yf.f<? super T>, ? extends Object> lVar) {
            super(fVar, jVar);
            this.f531c = lVar;
            M.n(fVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override
        public Object invokeSuspend(Object obj) {
            int i10 = this.f530b;
            if (i10 == 0) {
                this.f530b = 1;
                C14418j0.n(obj);
                return this.f531c.invoke(this);
            }
            if (i10 != 1) {
                throw new IllegalStateException("This coroutine had already completed");
            }
            this.f530b = 2;
            C14418j0.n(obj);
            return obj;
        }
    }

    @t0({"SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1\n+ 2 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n1#1,270:1\n131#2:271\n*E\n"})
    public static final class C0017c extends k {

        public int f532b;

        public final l f533c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0017c(yf.f fVar, l lVar) {
            super(fVar);
            this.f533c = lVar;
            M.n(fVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override
        public Object invokeSuspend(Object obj) {
            int i10 = this.f532b;
            if (i10 == 0) {
                this.f532b = 1;
                C14418j0.n(obj);
                M.n(this.f533c, "null cannot be cast to non-null type kotlin.Function1<kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
                return ((l) w0.q(this.f533c, 1)).invoke(this);
            }
            if (i10 != 1) {
                throw new IllegalStateException("This coroutine had already completed");
            }
            this.f532b = 2;
            C14418j0.n(obj);
            return obj;
        }
    }

    @t0({"SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2\n+ 2 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n1#1,270:1\n131#2:271\n*E\n"})
    public static final class d extends Bf.d {

        public int f534b;

        public final l f535c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(yf.f fVar, j jVar, l lVar) {
            super(fVar, jVar);
            this.f535c = lVar;
            M.n(fVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override
        public Object invokeSuspend(Object obj) {
            int i10 = this.f534b;
            if (i10 == 0) {
                this.f534b = 1;
                C14418j0.n(obj);
                M.n(this.f535c, "null cannot be cast to non-null type kotlin.Function1<kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
                return ((l) w0.q(this.f535c, 1)).invoke(this);
            }
            if (i10 != 1) {
                throw new IllegalStateException("This coroutine had already completed");
            }
            this.f534b = 2;
            C14418j0.n(obj);
            return obj;
        }
    }

    @t0({"SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1\n+ 2 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n1#1,270:1\n166#2:271\n*E\n"})
    public static final class e extends k {

        public int f536b;

        public final p f537c;

        public final Object f538d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(yf.f fVar, p pVar, Object obj) {
            super(fVar);
            this.f537c = pVar;
            this.f538d = obj;
            M.n(fVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override
        public Object invokeSuspend(Object obj) {
            int i10 = this.f536b;
            if (i10 == 0) {
                this.f536b = 1;
                C14418j0.n(obj);
                M.n(this.f537c, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
                return ((p) w0.q(this.f537c, 2)).invoke(this.f538d, this);
            }
            if (i10 != 1) {
                throw new IllegalStateException("This coroutine had already completed");
            }
            this.f536b = 2;
            C14418j0.n(obj);
            return obj;
        }
    }

    @t0({"SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2\n+ 2 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n1#1,270:1\n166#2:271\n*E\n"})
    public static final class f extends Bf.d {

        public int f539b;

        public final p f540c;

        public final Object f541d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(yf.f fVar, j jVar, p pVar, Object obj) {
            super(fVar, jVar);
            this.f540c = pVar;
            this.f541d = obj;
            M.n(fVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override
        public Object invokeSuspend(Object obj) {
            int i10 = this.f539b;
            if (i10 == 0) {
                this.f539b = 1;
                C14418j0.n(obj);
                M.n(this.f540c, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
                return ((p) w0.q(this.f540c, 2)).invoke(this.f541d, this);
            }
            if (i10 != 1) {
                throw new IllegalStateException("This coroutine had already completed");
            }
            this.f539b = 2;
            C14418j0.n(obj);
            return obj;
        }
    }

    public static final class g extends k {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(yf.f<? super T> fVar) {
            super(fVar);
            M.n(fVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override
        public Object invokeSuspend(Object obj) {
            C14418j0.n(obj);
            return obj;
        }
    }

    public static final class h extends Bf.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(yf.f<? super T> fVar, j jVar) {
            super(fVar, jVar);
            M.n(fVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override
        public Object invokeSuspend(Object obj) {
            C14418j0.n(obj);
            return obj;
        }
    }

    @InterfaceC14422l0(version = "1.3")
    public static final <T> yf.f<P0> a(yf.f<? super T> fVar, l<? super yf.f<? super T>, ? extends Object> lVar) {
        j context = fVar.getContext();
        return context == yf.l.f130251b ? new a(fVar, lVar) : new b(fVar, context, lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static <T> yf.f<P0> b(@NotNull l<? super yf.f<? super T>, ? extends Object> lVar, @NotNull yf.f<? super T> completion) {
        M.p(lVar, "<this>");
        M.p(completion, "completion");
        yf.f<?> a10 = Bf.h.a(completion);
        if (lVar instanceof Bf.a) {
            return ((Bf.a) lVar).create(a10);
        }
        j context = a10.getContext();
        return context == yf.l.f130251b ? new C0017c(a10, lVar) : new d(a10, context, lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static <R, T> yf.f<P0> c(@NotNull p<? super R, ? super yf.f<? super T>, ? extends Object> pVar, R r10, @NotNull yf.f<? super T> completion) {
        M.p(pVar, "<this>");
        M.p(completion, "completion");
        yf.f<?> a10 = Bf.h.a(completion);
        if (pVar instanceof Bf.a) {
            return ((Bf.a) pVar).create(r10, a10);
        }
        j context = a10.getContext();
        return context == yf.l.f130251b ? new e(a10, pVar, r10) : new f(a10, context, pVar, r10);
    }

    public static final <T> yf.f<T> d(yf.f<? super T> fVar) {
        j context = fVar.getContext();
        return context == yf.l.f130251b ? new g(fVar) : new h(fVar, context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static <T> yf.f<T> e(@NotNull yf.f<? super T> fVar) {
        yf.f<T> fVar2;
        M.p(fVar, "<this>");
        Bf.d dVar = fVar instanceof Bf.d ? (Bf.d) fVar : null;
        return (dVar == null || (fVar2 = (yf.f<T>) dVar.intercepted()) == null) ? fVar : fVar2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <T> Object f(l<? super yf.f<? super T>, ? extends Object> lVar, yf.f<? super T> completion) {
        M.p(lVar, "<this>");
        M.p(completion, "completion");
        return !(lVar instanceof Bf.a) ? i(lVar, completion) : ((l) w0.q(lVar, 1)).invoke(completion);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <R, T> Object g(p<? super R, ? super yf.f<? super T>, ? extends Object> pVar, R r10, yf.f<? super T> completion) {
        M.p(pVar, "<this>");
        M.p(completion, "completion");
        return !(pVar instanceof Bf.a) ? j(pVar, r10, completion) : ((p) w0.q(pVar, 2)).invoke(r10, completion);
    }

    @Ef.f
    public static final <R, P, T> Object h(q<? super R, ? super P, ? super yf.f<? super T>, ? extends Object> qVar, R r10, P p10, yf.f<? super T> completion) {
        M.p(qVar, "<this>");
        M.p(completion, "completion");
        return !(qVar instanceof Bf.a) ? k(qVar, r10, p10, completion) : ((q) w0.q(qVar, 3)).n(r10, p10, completion);
    }

    @InterfaceC14410f0
    @Nullable
    public static final <T> Object i(@NotNull l<? super yf.f<? super T>, ? extends Object> lVar, @NotNull yf.f<? super T> completion) {
        M.p(lVar, "<this>");
        M.p(completion, "completion");
        return ((l) w0.q(lVar, 1)).invoke(d(Bf.h.a(completion)));
    }

    @InterfaceC14410f0
    @Nullable
    public static final <R, T> Object j(@NotNull p<? super R, ? super yf.f<? super T>, ? extends Object> pVar, R r10, @NotNull yf.f<? super T> completion) {
        M.p(pVar, "<this>");
        M.p(completion, "completion");
        return ((p) w0.q(pVar, 2)).invoke(r10, d(Bf.h.a(completion)));
    }

    @InterfaceC14410f0
    @Nullable
    public static <R, P, T> Object k(@NotNull q<? super R, ? super P, ? super yf.f<? super T>, ? extends Object> qVar, R r10, P p10, @NotNull yf.f<? super T> completion) {
        M.p(qVar, "<this>");
        M.p(completion, "completion");
        return ((q) w0.q(qVar, 3)).n(r10, p10, d(Bf.h.a(completion)));
    }
}
