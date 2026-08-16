package kotlinx.coroutines.internal;

import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import yf.j;

@t0({"SMAP\nCoroutineExceptionHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandlerImpl.kt\nkotlinx/coroutines/internal/DiagnosticCoroutineContextException\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,50:1\n26#2:51\n*S KotlinDebug\n*F\n+ 1 CoroutineExceptionHandlerImpl.kt\nkotlinx/coroutines/internal/DiagnosticCoroutineContextException\n*L\n46#1:51\n*E\n"})
public final class DiagnosticCoroutineContextException extends RuntimeException {

    @NotNull
    private final transient j context;

    public DiagnosticCoroutineContextException(@NotNull j jVar) {
        this.context = jVar;
    }

    @Override
    @NotNull
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override
    @NotNull
    public String getLocalizedMessage() {
        return this.context.toString();
    }
}
