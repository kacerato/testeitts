package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;

public final class ExceptionSuccessfullyProcessed extends Exception {

    @NotNull
    public static final ExceptionSuccessfullyProcessed INSTANCE = new ExceptionSuccessfullyProcessed();

    private ExceptionSuccessfullyProcessed() {
    }
}
