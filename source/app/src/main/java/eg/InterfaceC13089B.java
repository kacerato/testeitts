package eg;

import eg.K0;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public interface InterfaceC13089B extends K0 {

    public static final class a {
        public static <R> R b(@NotNull InterfaceC13089B interfaceC13089B, R r10, @NotNull Mf.p<? super R, ? super j.b, ? extends R> pVar) {
            return (R) K0.a.d(interfaceC13089B, r10, pVar);
        }

        @Nullable
        public static <E extends j.b> E c(@NotNull InterfaceC13089B interfaceC13089B, @NotNull j.c<E> cVar) {
            return (E) K0.a.e(interfaceC13089B, cVar);
        }

        @NotNull
        public static yf.j d(@NotNull InterfaceC13089B interfaceC13089B, @NotNull j.c<?> cVar) {
            return K0.a.h(interfaceC13089B, cVar);
        }

        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static K0 e(@NotNull InterfaceC13089B interfaceC13089B, @NotNull K0 k02) {
            return K0.a.i(interfaceC13089B, k02);
        }

        @NotNull
        public static yf.j f(@NotNull InterfaceC13089B interfaceC13089B, @NotNull yf.j jVar) {
            return K0.a.j(interfaceC13089B, jVar);
        }
    }

    boolean c(@NotNull Throwable th2);

    boolean complete();
}
