package kotlin;

import org.jetbrains.annotations.Nullable;

public class NoWhenBranchMatchedException extends RuntimeException {
    public NoWhenBranchMatchedException() {
    }

    public NoWhenBranchMatchedException(@Nullable String str) {
        super(str);
    }

    public NoWhenBranchMatchedException(@Nullable String str, @Nullable Throwable th2) {
        super(str, th2);
    }

    public NoWhenBranchMatchedException(@Nullable Throwable th2) {
        super(th2);
    }
}
