package pf;

import java.util.Iterator;
import nf.P0;
import org.jetbrains.annotations.NotNull;

public class K extends J {
    public static final <T> void i0(@NotNull Iterator<? extends T> it, @NotNull Mf.l<? super T, P0> operation) {
        kotlin.jvm.internal.M.p(it, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        while (it.hasNext()) {
            operation.invoke(it.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    public static final <T> Iterator<T> j0(Iterator<? extends T> it) {
        kotlin.jvm.internal.M.p(it, "<this>");
        return it;
    }

    @NotNull
    public static final <T> Iterator<C14968d0<T>> k0(@NotNull Iterator<? extends T> it) {
        kotlin.jvm.internal.M.p(it, "<this>");
        return new C14972f0(it);
    }
}
