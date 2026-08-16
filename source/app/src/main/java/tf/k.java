package tf;

import java.util.Comparator;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class k implements Comparator<Comparable<? super Object>> {

    @NotNull
    public static final k f117393b = new k();

    @Override
    public int compare(@NotNull Comparable<Object> a10, @NotNull Comparable<Object> b10) {
        M.p(a10, "a");
        M.p(b10, "b");
        return b10.compareTo(a10);
    }

    @Override
    @NotNull
    public final Comparator<Comparable<? super Object>> reversed() {
        return j.f117392b;
    }
}
