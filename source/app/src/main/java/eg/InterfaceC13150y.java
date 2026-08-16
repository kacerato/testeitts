package eg;

import eg.Z;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public interface InterfaceC13150y<T> extends Z<T> {

    public static final class a {
        public static <T, R> R b(@NotNull InterfaceC13150y<T> interfaceC13150y, R r10, @NotNull Mf.p<? super R, ? super j.b, ? extends R> pVar) {
            return (R) Z.a.b(interfaceC13150y, r10, pVar);
        }

        @Nullable
        public static <T, E extends j.b> E c(@NotNull InterfaceC13150y<T> interfaceC13150y, @NotNull j.c<E> cVar) {
            return (E) Z.a.c(interfaceC13150y, cVar);
        }

        @NotNull
        public static <T> yf.j d(@NotNull InterfaceC13150y<T> interfaceC13150y, @NotNull j.c<?> cVar) {
            return Z.a.d(interfaceC13150y, cVar);
        }

        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static <T> K0 e(@NotNull InterfaceC13150y<T> interfaceC13150y, @NotNull K0 k02) {
            return Z.a.e(interfaceC13150y, k02);
        }

        @NotNull
        public static <T> yf.j f(@NotNull InterfaceC13150y<T> interfaceC13150y, @NotNull yf.j jVar) {
            return Z.a.f(interfaceC13150y, jVar);
        }
    }

    boolean c(@NotNull Throwable th2);

    boolean n(T t10);
}
