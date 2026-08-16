package tg;

import Af.d;
import Mf.l;
import Mf.p;
import eg.A0;
import eg.C13108c0;
import eg.S;
import eg.u1;
import java.time.Duration;
import java.time.temporal.ChronoUnit;
import jg.C13844k;
import jg.InterfaceC13842i;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pg.C14995b;
import pg.InterfaceC14996c;
import yf.f;

public final class C15423a {
    public static final long a(Duration duration) {
        if (duration.compareTo(Duration.ZERO) <= 0) {
            return 0L;
        }
        if (duration.compareTo(ChronoUnit.MILLIS.getDuration()) <= 0) {
            return 1L;
        }
        if (duration.getSeconds() < 9223372036854775L || (duration.getSeconds() == 9223372036854775L && duration.getNano() < 807000000)) {
            return duration.toMillis();
        }
        return Long.MAX_VALUE;
    }

    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> b(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Duration duration) {
        return C13844k.a0(interfaceC13842i, a(duration));
    }

    @Nullable
    public static final Object c(@NotNull Duration duration, @NotNull f<? super P0> fVar) {
        Object b10 = C13108c0.b(a(duration), fVar);
        return b10 == d.l() ? b10 : P0.f98194a;
    }

    public static final <R> void d(@NotNull InterfaceC14996c<? super R> interfaceC14996c, @NotNull Duration duration, @NotNull l<? super f<? super R>, ? extends Object> lVar) {
        C14995b.a(interfaceC14996c, a(duration), lVar);
    }

    @A0
    @NotNull
    public static final <T> InterfaceC13842i<T> e(@NotNull InterfaceC13842i<? extends T> interfaceC13842i, @NotNull Duration duration) {
        return C13844k.B1(interfaceC13842i, a(duration));
    }

    @Nullable
    public static final <T> Object f(@NotNull Duration duration, @NotNull p<? super S, ? super f<? super T>, ? extends Object> pVar, @NotNull f<? super T> fVar) {
        return u1.c(a(duration), pVar, fVar);
    }

    @Nullable
    public static final <T> Object g(@NotNull Duration duration, @NotNull p<? super S, ? super f<? super T>, ? extends Object> pVar, @NotNull f<? super T> fVar) {
        return u1.e(a(duration), pVar, fVar);
    }
}
