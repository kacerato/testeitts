package gg;

import eg.InterfaceC13104a1;
import gg.E;
import java.util.concurrent.CancellationException;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14427o(level = EnumC14431q.WARNING, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
@InterfaceC13104a1
public interface InterfaceC13364d<E> extends E<E> {

    public static final class a {
        public static void a(InterfaceC13364d interfaceC13364d, CancellationException cancellationException, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                cancellationException = null;
            }
            interfaceC13364d.a(cancellationException);
        }

        public static boolean b(InterfaceC13364d interfaceC13364d, Throwable th2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                th2 = null;
            }
            return interfaceC13364d.b(th2);
        }

        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @InterfaceC14412g0(expression = "trySend(element).isSuccess", imports = {}))
        public static <E> boolean c(@NotNull InterfaceC13364d<E> interfaceC13364d, E e10) {
            return E.a.c(interfaceC13364d, e10);
        }
    }

    void a(@Nullable CancellationException cancellationException);

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Binary compatibility only")
    boolean b(Throwable th2);

    @NotNull
    InterfaceC13360D<E> m();
}
