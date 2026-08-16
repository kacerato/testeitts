package eg;

import eg.l1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@InterfaceC13153z0
@InterfaceC13112e0
public interface InterfaceC13097J<S> extends l1<S> {

    public static final class a {
        public static <S, R> R a(@NotNull InterfaceC13097J<S> interfaceC13097J, R r10, @NotNull Mf.p<? super R, ? super j.b, ? extends R> pVar) {
            return (R) l1.a.a(interfaceC13097J, r10, pVar);
        }

        @Nullable
        public static <S, E extends j.b> E b(@NotNull InterfaceC13097J<S> interfaceC13097J, @NotNull j.c<E> cVar) {
            return (E) l1.a.b(interfaceC13097J, cVar);
        }

        @NotNull
        public static <S> yf.j c(@NotNull InterfaceC13097J<S> interfaceC13097J, @NotNull j.c<?> cVar) {
            return l1.a.c(interfaceC13097J, cVar);
        }

        @NotNull
        public static <S> yf.j d(@NotNull InterfaceC13097J<S> interfaceC13097J, @NotNull yf.j jVar) {
            return l1.a.d(interfaceC13097J, jVar);
        }
    }

    @NotNull
    yf.j L(@NotNull j.b bVar);

    @NotNull
    InterfaceC13097J<S> l();
}
