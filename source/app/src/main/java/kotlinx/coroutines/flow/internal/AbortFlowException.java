package kotlinx.coroutines.flow.internal;

import Lf.g;
import java.util.concurrent.CancellationException;
import jg.InterfaceC13843j;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nFlowExceptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowExceptions.kt\nkotlinx/coroutines/flow/internal/AbortFlowException\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,30:1\n26#2:31\n*S KotlinDebug\n*F\n+ 1 FlowExceptions.kt\nkotlinx/coroutines/flow/internal/AbortFlowException\n*L\n17#1:31\n*E\n"})
public final class AbortFlowException extends CancellationException {

    @g
    @NotNull
    public final transient InterfaceC13843j<?> owner;

    public AbortFlowException(@NotNull InterfaceC13843j<?> interfaceC13843j) {
        super("Flow was aborted, no more elements needed");
        this.owner = interfaceC13843j;
    }

    @Override
    @NotNull
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
