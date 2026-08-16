package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;

public final class UndeliveredElementException extends RuntimeException {
    public UndeliveredElementException(@NotNull String str, @NotNull Throwable th2) {
        super(str, th2);
    }
}
