package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public interface l1<S> extends j.b {

    public static final class a {
        public static <S, R> R a(@NotNull l1<S> l1Var, R r10, @NotNull Mf.p<? super R, ? super j.b, ? extends R> pVar) {
            return (R) j.b.a.a(l1Var, r10, pVar);
        }

        @Nullable
        public static <S, E extends j.b> E b(@NotNull l1<S> l1Var, @NotNull j.c<E> cVar) {
            return (E) j.b.a.b(l1Var, cVar);
        }

        @NotNull
        public static <S> yf.j c(@NotNull l1<S> l1Var, @NotNull j.c<?> cVar) {
            return j.b.a.c(l1Var, cVar);
        }

        @NotNull
        public static <S> yf.j d(@NotNull l1<S> l1Var, @NotNull yf.j jVar) {
            return j.b.a.d(l1Var, jVar);
        }
    }

    S b0(@NotNull yf.j jVar);

    void h(@NotNull yf.j jVar, S s10);
}
