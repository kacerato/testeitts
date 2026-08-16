package pg;

import eg.InterfaceC13153z0;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;

public interface InterfaceC14996c<R> {

    public static final class a {
        /* JADX WARN: Multi-variable type inference failed */
        public static <R, P, Q> void a(@NotNull InterfaceC14996c<? super R> interfaceC14996c, @NotNull i<? super P, ? extends Q> iVar, @NotNull Mf.p<? super Q, ? super yf.f<? super R>, ? extends Object> pVar) {
            interfaceC14996c.k(iVar, null, pVar);
        }

        @InterfaceC13153z0
        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Replaced with the same extension function", replaceWith = @InterfaceC14412g0(expression = "onTimeout", imports = {"kotlinx.coroutines.selects.onTimeout"}))
        @Ef.i
        public static <R> void b(@NotNull InterfaceC14996c<? super R> interfaceC14996c, long j10, @NotNull Mf.l<? super yf.f<? super R>, ? extends Object> lVar) {
            C14995b.a(interfaceC14996c, j10, lVar);
        }
    }

    <P, Q> void b(@NotNull i<? super P, ? extends Q> iVar, @NotNull Mf.p<? super Q, ? super yf.f<? super R>, ? extends Object> pVar);

    <Q> void d(@NotNull g<? extends Q> gVar, @NotNull Mf.p<? super Q, ? super yf.f<? super R>, ? extends Object> pVar);

    void h(@NotNull InterfaceC14998e interfaceC14998e, @NotNull Mf.l<? super yf.f<? super R>, ? extends Object> lVar);

    @InterfaceC13153z0
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Replaced with the same extension function", replaceWith = @InterfaceC14412g0(expression = "onTimeout", imports = {"kotlinx.coroutines.selects.onTimeout"}))
    @Ef.i
    void i(long j10, @NotNull Mf.l<? super yf.f<? super R>, ? extends Object> lVar);

    <P, Q> void k(@NotNull i<? super P, ? extends Q> iVar, P p10, @NotNull Mf.p<? super Q, ? super yf.f<? super R>, ? extends Object> pVar);
}
