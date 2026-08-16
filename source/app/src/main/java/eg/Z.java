package eg;

import eg.K0;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public interface Z<T> extends K0 {

    public static final class a {
        public static <T, R> R b(@NotNull Z<? extends T> z10, R r10, @NotNull Mf.p<? super R, ? super j.b, ? extends R> pVar) {
            return (R) K0.a.d(z10, r10, pVar);
        }

        @Nullable
        public static <T, E extends j.b> E c(@NotNull Z<? extends T> z10, @NotNull j.c<E> cVar) {
            return (E) K0.a.e(z10, cVar);
        }

        @NotNull
        public static <T> yf.j d(@NotNull Z<? extends T> z10, @NotNull j.c<?> cVar) {
            return K0.a.h(z10, cVar);
        }

        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static <T> K0 e(@NotNull Z<? extends T> z10, @NotNull K0 k02) {
            return K0.a.i(z10, k02);
        }

        @NotNull
        public static <T> yf.j f(@NotNull Z<? extends T> z10, @NotNull yf.j jVar) {
            return K0.a.j(z10, jVar);
        }
    }

    @InterfaceC13153z0
    @Nullable
    Throwable G();

    @NotNull
    pg.g<T> Y();

    @Nullable
    Object Z(@NotNull yf.f<? super T> fVar);

    @InterfaceC13153z0
    T e();
}
