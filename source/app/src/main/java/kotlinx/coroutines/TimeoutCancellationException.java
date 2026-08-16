package kotlinx.coroutines;

import Lf.g;
import eg.InterfaceC13098K;
import eg.K0;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timeout.kt\nkotlinx/coroutines/TimeoutCancellationException\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,193:1\n1#2:194\n*E\n"})
public final class TimeoutCancellationException extends CancellationException implements InterfaceC13098K<TimeoutCancellationException> {

    @g
    @Nullable
    public final transient K0 coroutine;

    public TimeoutCancellationException(@NotNull String str, @Nullable K0 k02) {
        super(str);
        this.coroutine = k02;
    }

    @Override
    @NotNull
    public TimeoutCancellationException createCopy() {
        String message = getMessage();
        if (message == null) {
            message = "";
        }
        TimeoutCancellationException timeoutCancellationException = new TimeoutCancellationException(message, this.coroutine);
        timeoutCancellationException.initCause(this);
        return timeoutCancellationException;
    }

    public TimeoutCancellationException(@NotNull String str) {
        this(str, null);
    }
}
