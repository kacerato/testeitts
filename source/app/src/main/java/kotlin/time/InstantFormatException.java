package kotlin.time;

import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

final class InstantFormatException extends IllegalArgumentException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstantFormatException(@NotNull String message) {
        super(message);
        M.p(message, "message");
    }
}
