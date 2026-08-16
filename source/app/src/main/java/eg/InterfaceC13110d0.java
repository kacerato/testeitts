package eg;

import eg.InterfaceC13106b0;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@F0
public interface InterfaceC13110d0 extends InterfaceC13106b0 {

    public static final class a {
        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
        @Nullable
        public static Object a(@NotNull InterfaceC13110d0 interfaceC13110d0, long j10, @NotNull yf.f<? super nf.P0> fVar) {
            Object a10 = InterfaceC13106b0.a.a(interfaceC13110d0, j10, fVar);
            return a10 == Af.d.l() ? a10 : nf.P0.f98194a;
        }

        @NotNull
        public static InterfaceC13128m0 b(@NotNull InterfaceC13110d0 interfaceC13110d0, long j10, @NotNull Runnable runnable, @NotNull yf.j jVar) {
            return InterfaceC13106b0.a.b(interfaceC13110d0, j10, runnable, jVar);
        }
    }

    @NotNull
    String j(long j10);
}
