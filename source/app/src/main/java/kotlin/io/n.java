package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public class n extends m {
    @NotNull
    public static final h O(@NotNull File file, @NotNull i direction) {
        M.p(file, "<this>");
        M.p(direction, "direction");
        return new h(file, direction);
    }

    public static h P(File file, i iVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            iVar = i.TOP_DOWN;
        }
        return O(file, iVar);
    }

    @NotNull
    public static final h Q(@NotNull File file) {
        M.p(file, "<this>");
        return O(file, i.BOTTOM_UP);
    }

    @NotNull
    public static final h R(@NotNull File file) {
        M.p(file, "<this>");
        return O(file, i.TOP_DOWN);
    }
}
