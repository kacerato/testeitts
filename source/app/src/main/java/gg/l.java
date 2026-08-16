package gg;

import gg.E;
import gg.InterfaceC13360D;
import mg.W;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface l<E> extends E<E>, InterfaceC13360D<E> {

    public static final int f89676A4 = Integer.MAX_VALUE;

    public static final int f89677B4 = 0;

    public static final int f89678C4 = -1;

    public static final int f89679E4 = -2;

    public static final int f89680G4 = -3;

    @NotNull
    public static final String f89681I4 = "kotlinx.coroutines.channels.defaultBuffer";

    @NotNull
    public static final b f89682z4 = b.f89683a;

    public static final class a {
        @NotNull
        public static <E> pg.g<E> b(@NotNull l<E> lVar) {
            return InterfaceC13360D.a.d(lVar);
        }

        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @InterfaceC14412g0(expression = "trySend(element).isSuccess", imports = {}))
        public static <E> boolean c(@NotNull l<E> lVar, E e10) {
            return E.a.c(lVar, e10);
        }

        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @InterfaceC14412g0(expression = "tryReceive().getOrNull()", imports = {}))
        @Nullable
        public static <E> E d(@NotNull l<E> lVar) {
            return (E) InterfaceC13360D.a.h(lVar);
        }

        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @InterfaceC14412g0(expression = "receiveCatching().getOrNull()", imports = {}))
        @Ef.i
        @Nullable
        public static <E> Object e(@NotNull l<E> lVar, @NotNull yf.f<? super E> fVar) {
            return InterfaceC13360D.a.i(lVar, fVar);
        }
    }

    public static final class b {

        public static final int f89684b = Integer.MAX_VALUE;

        public static final int f89685c = 0;

        public static final int f89686d = -1;

        public static final int f89687e = -2;

        public static final int f89688f = -3;

        @NotNull
        public static final String f89689g = "kotlinx.coroutines.channels.defaultBuffer";

        public static final b f89683a = new b();

        public static final int f89690h = W.b("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);

        public final int a() {
            return f89690h;
        }
    }
}
