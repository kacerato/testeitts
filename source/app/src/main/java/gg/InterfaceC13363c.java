package gg;

import eg.InterfaceC13104a1;
import eg.S;
import gg.InterfaceC13360D;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC13104a1
public interface InterfaceC13363c<E> extends S, InterfaceC13360D<E> {

    public static final class a {
        @NotNull
        public static <E> pg.g<E> b(@NotNull InterfaceC13363c<E> interfaceC13363c) {
            return InterfaceC13360D.a.d(interfaceC13363c);
        }

        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @InterfaceC14412g0(expression = "tryReceive().getOrNull()", imports = {}))
        @Nullable
        public static <E> E c(@NotNull InterfaceC13363c<E> interfaceC13363c) {
            return (E) InterfaceC13360D.a.h(interfaceC13363c);
        }

        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @InterfaceC14412g0(expression = "receiveCatching().getOrNull()", imports = {}))
        @Ef.i
        @Nullable
        public static <E> Object d(@NotNull InterfaceC13363c<E> interfaceC13363c, @NotNull yf.f<? super E> fVar) {
            return InterfaceC13360D.a.i(interfaceC13363c, fVar);
        }
    }

    @NotNull
    l<E> getChannel();
}
