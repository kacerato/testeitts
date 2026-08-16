package tf;

import java.util.Comparator;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class l<T> implements Comparator<T> {

    @NotNull
    public final Comparator<T> f117394b;

    public l(@NotNull Comparator<T> comparator) {
        M.p(comparator, "comparator");
        this.f117394b = comparator;
    }

    @NotNull
    public final Comparator<T> a() {
        return this.f117394b;
    }

    @Override
    public int compare(T t10, T t11) {
        return this.f117394b.compare(t11, t10);
    }

    @Override
    @NotNull
    public final Comparator<T> reversed() {
        return this.f117394b;
    }
}
