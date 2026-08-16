package kotlin.io;

import org.jetbrains.annotations.Nullable;

public final class ReadAfterEOFException extends RuntimeException {
    public ReadAfterEOFException(@Nullable String str) {
        super(str);
    }
}
