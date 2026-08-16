package mg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class T {

    @Lf.g
    @NotNull
    public final String f97041a;

    public T(@NotNull String str) {
        this.f97041a = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T a(@Nullable Object obj) {
        if (obj == this) {
            return null;
        }
        return obj;
    }

    @NotNull
    public String toString() {
        return '<' + this.f97041a + '>';
    }
}
