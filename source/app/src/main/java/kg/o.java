package kg;

import jg.InterfaceC13843j;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;

public final class o {
    @InterfaceC14410f0
    public static final int a(int i10) {
        if (i10 >= 0) {
            return i10;
        }
        throw new ArithmeticException("Index overflow has happened");
    }

    public static final void b(@NotNull AbortFlowException abortFlowException, @NotNull InterfaceC13843j<?> interfaceC13843j) {
        if (abortFlowException.owner != interfaceC13843j) {
            throw abortFlowException;
        }
    }
}
