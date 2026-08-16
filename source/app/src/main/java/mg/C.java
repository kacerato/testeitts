package mg;

import eg.F0;
import eg.V0;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@F0
public interface C {

    public static final class a {
        @Nullable
        public static String a(@NotNull C c10) {
            return null;
        }
    }

    int a();

    @Nullable
    String b();

    @NotNull
    V0 c(@NotNull List<? extends C> list);
}
