package eg;

import java.util.concurrent.CancellationException;
import nf.C14436t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nExceptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n1#2:77\n*E\n"})
public final class C13145v0 {
    @NotNull
    public static final CancellationException a(@Nullable String str, @Nullable Throwable th2) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th2);
        return cancellationException;
    }

    public static final void b(@NotNull Throwable th2, @NotNull Throwable th3) {
        C14436t.a(th2, th3);
    }
}
