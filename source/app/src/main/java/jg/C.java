package jg;

import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C {

    @t0({"SMAP\nLint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Lint.kt\nkotlinx/coroutines/flow/LintKt$retry$1\n*L\n1#1,193:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.flow.LintKt$retry$1", f = "Lint.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends Bf.q implements Mf.p<Throwable, yf.f<? super Boolean>, Object> {

        public int f93211b;

        public a(yf.f<? super a> fVar) {
            super(2, fVar);
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            return new a(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Af.d.l();
            if (this.f93211b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C14418j0.n(obj);
            return Bf.b.a(true);
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull Throwable th2, @Nullable yf.f<? super Boolean> fVar) {
            return ((a) create(th2, fVar)).invokeSuspend(P0.f98194a);
        }
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "cancel() is resolved into the extension of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext().cancel() instead or specify the receiver of cancel() explicitly", replaceWith = @InterfaceC14412g0(expression = "currentCoroutineContext().cancel(cause)", imports = {}))
    public static final void a(@NotNull InterfaceC13843j<?> interfaceC13843j, @Nullable CancellationException cancellationException) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    public static void b(InterfaceC13843j interfaceC13843j, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        a(interfaceC13843j, cancellationException);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Applying 'cancellable' to a SharedFlow has no effect. See the SharedFlow documentation on Operator Fusion.", replaceWith = @InterfaceC14412g0(expression = "this", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> c(@NotNull I<? extends T> i10) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @Ef.f
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "SharedFlow never completes, so this operator typically has not effect, it can only catch exceptions from 'onSubscribe' operator", replaceWith = @InterfaceC14412g0(expression = "this", imports = {}))
    public static final <T> InterfaceC13842i<T> d(I<? extends T> i10, Mf.q<? super InterfaceC13843j<? super T>, ? super Throwable, ? super yf.f<? super P0>, ? extends Object> qVar) {
        kotlin.jvm.internal.M.n(i10, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.catch>");
        return C13844k.u(i10, qVar);
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Applying 'conflate' to StateFlow has no effect. See the StateFlow documentation on Operator Fusion.", replaceWith = @InterfaceC14412g0(expression = "this", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> e(@NotNull U<? extends T> u10) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @Ef.f
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    public static final <T> Object f(I<? extends T> i10, yf.f<? super Integer> fVar) {
        kotlin.jvm.internal.M.n(i10, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.count>");
        kotlin.jvm.internal.J.e(0);
        Object Z10 = C13844k.Z(i10, fVar);
        kotlin.jvm.internal.J.e(1);
        return Z10;
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Applying 'distinctUntilChanged' to StateFlow has no effect. See the StateFlow documentation on Operator Fusion.", replaceWith = @InterfaceC14412g0(expression = "this", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> g(@NotNull U<? extends T> u10) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Applying 'flowOn' to SharedFlow has no effect. See the SharedFlow documentation on Operator Fusion.", replaceWith = @InterfaceC14412g0(expression = "this", imports = {}))
    @NotNull
    public static final <T> InterfaceC13842i<T> h(@NotNull I<? extends T> i10, @NotNull yf.j jVar) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @NotNull
    public static final yf.j i(@NotNull InterfaceC13843j<?> interfaceC13843j) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "coroutineContext is resolved into the property of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext() instead or specify the receiver of coroutineContext explicitly", replaceWith = @InterfaceC14412g0(expression = "currentCoroutineContext()", imports = {}))
    public static void j(InterfaceC13843j interfaceC13843j) {
    }

    public static final boolean k(@NotNull InterfaceC13843j<?> interfaceC13843j) {
        C13844k.c1();
        throw new KotlinNothingValueException();
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "isActive is resolved into the extension of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext().isActive or cancellable() operator instead or specify the receiver of isActive explicitly. Additionally, flow {} builder emissions are cancellable by default.", replaceWith = @InterfaceC14412g0(expression = "currentCoroutineContext().isActive", imports = {}))
    public static void l(InterfaceC13843j interfaceC13843j) {
    }

    @Ef.f
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "SharedFlow never completes, so this operator has no effect.", replaceWith = @InterfaceC14412g0(expression = "this", imports = {}))
    public static final <T> InterfaceC13842i<T> m(I<? extends T> i10, long j10, Mf.p<? super Throwable, ? super yf.f<? super Boolean>, ? extends Object> pVar) {
        kotlin.jvm.internal.M.n(i10, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.retry>");
        return C13844k.w1(i10, j10, pVar);
    }

    public static InterfaceC13842i n(I i10, long j10, Mf.p pVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j10 = Long.MAX_VALUE;
        }
        if ((i11 & 2) != 0) {
            pVar = new a(null);
        }
        kotlin.jvm.internal.M.n(i10, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.retry>");
        return C13844k.w1(i10, j10, pVar);
    }

    @Ef.f
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "SharedFlow never completes, so this operator has no effect.", replaceWith = @InterfaceC14412g0(expression = "this", imports = {}))
    public static final <T> InterfaceC13842i<T> o(I<? extends T> i10, Mf.r<? super InterfaceC13843j<? super T>, ? super Throwable, ? super Long, ? super yf.f<? super Boolean>, ? extends Object> rVar) {
        kotlin.jvm.internal.M.n(i10, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.retryWhen>");
        return C13844k.y1(i10, rVar);
    }

    @Ef.f
    public static final <T> Object p(I<? extends T> i10, List<T> list, yf.f<?> fVar) {
        kotlin.jvm.internal.M.n(i10, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toList>");
        kotlin.jvm.internal.J.e(0);
        C13844k.Y1(i10, list, fVar);
        kotlin.jvm.internal.J.e(1);
        throw new IllegalStateException("this code is supposed to be unreachable");
    }

    @Ef.f
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    public static final <T> Object q(I<? extends T> i10, yf.f<? super List<? extends T>> fVar) {
        Object c10;
        kotlin.jvm.internal.M.n(i10, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toList>");
        kotlin.jvm.internal.J.e(0);
        c10 = C13848o.c(i10, null, fVar, 1, null);
        kotlin.jvm.internal.J.e(1);
        return c10;
    }

    @Ef.f
    public static final <T> Object r(I<? extends T> i10, Set<T> set, yf.f<?> fVar) {
        kotlin.jvm.internal.M.n(i10, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toSet>");
        kotlin.jvm.internal.J.e(0);
        C13844k.a2(i10, set, fVar);
        kotlin.jvm.internal.J.e(1);
        throw new IllegalStateException("this code is supposed to be unreachable");
    }

    @Ef.f
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    public static final <T> Object s(I<? extends T> i10, yf.f<? super Set<? extends T>> fVar) {
        Object e10;
        kotlin.jvm.internal.M.n(i10, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toSet>");
        kotlin.jvm.internal.J.e(0);
        e10 = C13848o.e(i10, null, fVar, 1, null);
        kotlin.jvm.internal.J.e(1);
        return e10;
    }
}
