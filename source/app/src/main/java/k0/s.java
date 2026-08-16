package k0;

import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public interface s {
    default void a() {
    }

    default void d(@NotNull String response) {
        M.p(response, "response");
    }

    default void onError(@NotNull Throwable throwable) {
        M.p(throwable, "throwable");
    }
}
