package gg;

import eg.S;
import gg.E;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;

public interface InterfaceC13358B<E> extends S, E<E> {

    public static final class a {
        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @InterfaceC14412g0(expression = "trySend(element).isSuccess", imports = {}))
        public static <E> boolean a(@NotNull InterfaceC13358B<? super E> interfaceC13358B, E e10) {
            return E.a.c(interfaceC13358B, e10);
        }
    }

    @NotNull
    E<E> getChannel();
}
