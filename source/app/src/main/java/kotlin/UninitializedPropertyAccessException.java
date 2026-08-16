package kotlin;

import org.jetbrains.annotations.Nullable;

public final class UninitializedPropertyAccessException extends RuntimeException {
    public UninitializedPropertyAccessException() {
    }

    public UninitializedPropertyAccessException(@Nullable String str) {
        super(str);
    }

    public UninitializedPropertyAccessException(@Nullable String str, @Nullable Throwable th2) {
        super(str, th2);
    }

    public UninitializedPropertyAccessException(@Nullable Throwable th2) {
        super(th2);
    }
}
