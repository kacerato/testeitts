package eg;

import Xf.InterfaceC3312m;
import java.util.concurrent.CancellationException;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pg.InterfaceC14998e;
import yf.j;

public interface K0 extends j.b {

    @NotNull
    public static final b f85619y4 = b.f85620b;

    public static final class a {
        @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
        public static void a(K0 k02) {
            k02.a(null);
        }

        public static void b(K0 k02, CancellationException cancellationException, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                cancellationException = null;
            }
            k02.a(cancellationException);
        }

        public static boolean c(K0 k02, Throwable th2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                th2 = null;
            }
            return k02.b(th2);
        }

        public static <R> R d(@NotNull K0 k02, R r10, @NotNull Mf.p<? super R, ? super j.b, ? extends R> pVar) {
            return (R) j.b.a.a(k02, r10, pVar);
        }

        @Nullable
        public static <E extends j.b> E e(@NotNull K0 k02, @NotNull j.c<E> cVar) {
            return (E) j.b.a.b(k02, cVar);
        }

        @InterfaceC13153z0
        public static void f() {
        }

        public static InterfaceC13128m0 g(K0 k02, boolean z10, boolean z11, Mf.l lVar, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
            }
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            if ((i10 & 2) != 0) {
                z11 = true;
            }
            return k02.S(z10, z11, lVar);
        }

        @NotNull
        public static yf.j h(@NotNull K0 k02, @NotNull j.c<?> cVar) {
            return j.b.a.c(k02, cVar);
        }

        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static K0 i(@NotNull K0 k02, @NotNull K0 k03) {
            return k03;
        }

        @NotNull
        public static yf.j j(@NotNull K0 k02, @NotNull yf.j jVar) {
            return j.b.a.d(k02, jVar);
        }
    }

    public static final class b implements j.c<K0> {

        public static final b f85620b = new b();
    }

    @F0
    @NotNull
    CancellationException Q();

    @F0
    @NotNull
    InterfaceC13128m0 S(boolean z10, boolean z11, @NotNull Mf.l<? super Throwable, nf.P0> lVar);

    void a(@Nullable CancellationException cancellationException);

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    boolean b(Throwable th2);

    @Nullable
    Object c0(@NotNull yf.f<? super nf.P0> fVar);

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    void cancel();

    boolean d();

    @F0
    @NotNull
    InterfaceC13144v f(@NotNull InterfaceC13148x interfaceC13148x);

    @NotNull
    InterfaceC3312m<K0> getChildren();

    @Nullable
    K0 getParent();

    boolean isActive();

    boolean isCancelled();

    boolean start();

    @NotNull
    InterfaceC13128m0 w(@NotNull Mf.l<? super Throwable, nf.P0> lVar);

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @NotNull
    K0 y(@NotNull K0 k02);

    @NotNull
    InterfaceC14998e z();
}
