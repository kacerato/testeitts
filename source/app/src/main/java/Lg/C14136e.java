package lg;

import Bf.h;
import Mf.l;
import Mf.p;
import eg.C13088A;
import eg.C13099L;
import eg.C13135q;
import eg.C13145v0;
import eg.InterfaceC13150y;
import eg.K0;
import eg.N0;
import eg.S;
import eg.U;
import eg.Z;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionException;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.ExecutionException;
import java.util.function.BiFunction;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.f;
import yf.j;

@t0({"SMAP\nFuture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,197:1\n1#2:198\n314#3,11:199\n*S KotlinDebug\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n*L\n172#1:199,11\n*E\n"})
public final class C14136e {

    public static final class a extends O implements l<Throwable, P0> {

        public final CompletableFuture<T> f96453b;

        public final Z<T> f96454c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(CompletableFuture<T> completableFuture, Z<? extends T> z10) {
            super(1);
            this.f96453b = completableFuture;
            this.f96454c = z10;
        }

        @Override
        public P0 invoke(Throwable th2) {
            invoke2(th2);
            return P0.f98194a;
        }

        public final void invoke2(@Nullable Throwable th2) {
            try {
                this.f96453b.complete(this.f96454c.e());
            } catch (Throwable th3) {
                this.f96453b.completeExceptionally(th3);
            }
        }
    }

    public static final class b extends O implements l<Throwable, P0> {

        public final CompletableFuture<P0> f96455b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(CompletableFuture<P0> completableFuture) {
            super(1);
            this.f96455b = completableFuture;
        }

        @Override
        public P0 invoke(Throwable th2) {
            invoke2(th2);
            return P0.f98194a;
        }

        public final void invoke2(@Nullable Throwable th2) {
            if (th2 == null) {
                this.f96455b.complete(P0.f98194a);
            } else {
                this.f96455b.completeExceptionally(th2);
            }
        }
    }

    public static final class c<T> extends O implements p<T, Throwable, Object> {

        public final InterfaceC13150y<T> f96456b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(InterfaceC13150y<T> interfaceC13150y) {
            super(2);
            this.f96456b = interfaceC13150y;
        }

        @Override
        public final Object invoke(T t10, Throwable th2) {
            boolean c10;
            Throwable cause;
            try {
                if (th2 == null) {
                    c10 = this.f96456b.n(t10);
                } else {
                    InterfaceC13150y<T> interfaceC13150y = this.f96456b;
                    CompletionException completionException = th2 instanceof CompletionException ? (CompletionException) th2 : null;
                    if (completionException != null && (cause = completionException.getCause()) != null) {
                        th2 = cause;
                    }
                    c10 = interfaceC13150y.c(th2);
                }
                return Boolean.valueOf(c10);
            } catch (Throwable th3) {
                eg.O.b(yf.l.f130251b, th3);
                return P0.f98194a;
            }
        }
    }

    public static final class d extends O implements l<Throwable, P0> {

        public final CompletableFuture<T> f96457b;

        public final C14133b<T> f96458c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(CompletableFuture<T> completableFuture, C14133b<T> c14133b) {
            super(1);
            this.f96457b = completableFuture;
            this.f96458c = c14133b;
        }

        @Override
        public P0 invoke(Throwable th2) {
            invoke2(th2);
            return P0.f98194a;
        }

        public final void invoke2(@Nullable Throwable th2) {
            this.f96457b.cancel(false);
            this.f96458c.cont = null;
        }
    }

    @NotNull
    public static final <T> CompletableFuture<T> c(@NotNull Z<? extends T> z10) {
        CompletableFuture<T> completableFuture = new CompletableFuture<>();
        j(z10, completableFuture);
        z10.w(new a(completableFuture, z10));
        return completableFuture;
    }

    @NotNull
    public static final CompletableFuture<P0> d(@NotNull K0 k02) {
        CompletableFuture<P0> completableFuture = new CompletableFuture<>();
        j(k02, completableFuture);
        k02.w(new b(completableFuture));
        return completableFuture;
    }

    @NotNull
    public static final <T> Z<T> e(@NotNull CompletionStage<T> completionStage) {
        Throwable cause;
        CompletableFuture<T> completableFuture = completionStage.toCompletableFuture();
        if (!completableFuture.isDone()) {
            InterfaceC13150y c10 = C13088A.c(null, 1, null);
            final c cVar = new c(c10);
            completionStage.handle(new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    Object f10;
                    f10 = C14136e.f(p.this, obj, (Throwable) obj2);
                    return f10;
                }
            });
            N0.x(c10, completableFuture);
            return c10;
        }
        try {
            return C13088A.b(completableFuture.get());
        } catch (Throwable th2) {
            th = th2;
            ExecutionException executionException = th instanceof ExecutionException ? (ExecutionException) th : null;
            if (executionException != null && (cause = executionException.getCause()) != null) {
                th = cause;
            }
            InterfaceC13150y c11 = C13088A.c(null, 1, null);
            c11.c(th);
            return c11;
        }
    }

    public static final Object f(p pVar, Object obj, Throwable th2) {
        return pVar.invoke(obj, th2);
    }

    @Nullable
    public static final <T> Object g(@NotNull CompletionStage<T> completionStage, @NotNull f<? super T> fVar) {
        CompletableFuture<T> completableFuture = completionStage.toCompletableFuture();
        if (completableFuture.isDone()) {
            try {
                return completableFuture.get();
            } catch (ExecutionException e10) {
                Throwable cause = e10.getCause();
                if (cause == null) {
                    throw e10;
                }
                throw cause;
            }
        }
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        C14133b c14133b = new C14133b(c13135q);
        completionStage.handle(c14133b);
        c13135q.K(new d(completableFuture, c14133b));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            h.c(fVar);
        }
        return D10;
    }

    @NotNull
    public static final <T> CompletableFuture<T> h(@NotNull S s10, @NotNull j jVar, @NotNull U u10, @NotNull p<? super S, ? super f<? super T>, ? extends Object> pVar) {
        if (u10.d()) {
            throw new IllegalArgumentException((((Object) u10) + " start is not supported").toString());
        }
        j d10 = C13099L.d(s10, jVar);
        CompletableFuture<T> completableFuture = new CompletableFuture<>();
        C14132a c14132a = new C14132a(d10, completableFuture);
        completableFuture.handle((BiFunction) c14132a);
        c14132a.B1(u10, c14132a, pVar);
        return completableFuture;
    }

    public static CompletableFuture i(S s10, j jVar, U u10, p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            jVar = yf.l.f130251b;
        }
        if ((i10 & 2) != 0) {
            u10 = U.DEFAULT;
        }
        return h(s10, jVar, u10, pVar);
    }

    public static final void j(final K0 k02, CompletableFuture<?> completableFuture) {
        completableFuture.handle(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                P0 k10;
                k10 = C14136e.k(K0.this, obj, (Throwable) obj2);
                return k10;
            }
        });
    }

    public static final P0 k(K0 k02, Object obj, Throwable th2) {
        if (th2 != null) {
            r2 = th2 instanceof CancellationException ? (CancellationException) th2 : null;
            if (r2 == null) {
                r2 = C13145v0.a("CompletableFuture was completed exceptionally", th2);
            }
        }
        k02.a(r2);
        return P0.f98194a;
    }
}
