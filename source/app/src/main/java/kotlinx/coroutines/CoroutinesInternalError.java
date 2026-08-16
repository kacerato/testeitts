package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

public final class CoroutinesInternalError extends Error {
    public CoroutinesInternalError(@NotNull String str, @NotNull Throwable th2) {
        super(str, th2);
    }
}
