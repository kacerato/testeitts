package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public interface InterfaceC13101N extends j.b {

    @NotNull
    public static final b f85628x4 = b.f85629b;

    public static final class a {
        public static <R> R a(@NotNull InterfaceC13101N interfaceC13101N, R r10, @NotNull Mf.p<? super R, ? super j.b, ? extends R> pVar) {
            return (R) j.b.a.a(interfaceC13101N, r10, pVar);
        }

        @Nullable
        public static <E extends j.b> E b(@NotNull InterfaceC13101N interfaceC13101N, @NotNull j.c<E> cVar) {
            return (E) j.b.a.b(interfaceC13101N, cVar);
        }

        @NotNull
        public static yf.j c(@NotNull InterfaceC13101N interfaceC13101N, @NotNull j.c<?> cVar) {
            return j.b.a.c(interfaceC13101N, cVar);
        }

        @NotNull
        public static yf.j d(@NotNull InterfaceC13101N interfaceC13101N, @NotNull yf.j jVar) {
            return j.b.a.d(interfaceC13101N, jVar);
        }
    }

    public static final class b implements j.c<InterfaceC13101N> {

        public static final b f85629b = new b();
    }

    void q(@NotNull yf.j jVar, @NotNull Throwable th2);
}
