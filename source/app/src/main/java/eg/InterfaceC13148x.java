package eg;

import eg.K0;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@F0
@InterfaceC14427o(level = EnumC14431q.ERROR, message = "This is internal API and may be removed in the future releases")
public interface InterfaceC13148x extends K0 {

    public static final class a {
        public static <R> R b(@NotNull InterfaceC13148x interfaceC13148x, R r10, @NotNull Mf.p<? super R, ? super j.b, ? extends R> pVar) {
            return (R) K0.a.d(interfaceC13148x, r10, pVar);
        }

        @Nullable
        public static <E extends j.b> E c(@NotNull InterfaceC13148x interfaceC13148x, @NotNull j.c<E> cVar) {
            return (E) K0.a.e(interfaceC13148x, cVar);
        }

        @NotNull
        public static yf.j d(@NotNull InterfaceC13148x interfaceC13148x, @NotNull j.c<?> cVar) {
            return K0.a.h(interfaceC13148x, cVar);
        }

        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static K0 e(@NotNull InterfaceC13148x interfaceC13148x, @NotNull K0 k02) {
            return K0.a.i(interfaceC13148x, k02);
        }

        @NotNull
        public static yf.j f(@NotNull InterfaceC13148x interfaceC13148x, @NotNull yf.j jVar) {
            return K0.a.j(interfaceC13148x, jVar);
        }
    }

    @F0
    void N(@NotNull b1 b1Var);
}
