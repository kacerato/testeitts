package kotlinx.coroutines;

import eg.F0;
import org.jetbrains.annotations.NotNull;

@F0
public final class CompletionHandlerException extends RuntimeException {
    public CompletionHandlerException(@NotNull String str, @NotNull Throwable th2) {
        super(str, th2);
    }
}
