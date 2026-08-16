package tf;

import java.util.Comparator;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

public class C15422i extends C15421h {
    @InterfaceC14422l0(version = "1.4")
    public static final <T> T A0(T t10, @NotNull T[] other, @NotNull Comparator<? super T> comparator) {
        M.p(other, "other");
        M.p(comparator, "comparator");
        for (T t11 : other) {
            if (comparator.compare(t10, t11) < 0) {
                t10 = t11;
            }
        }
        return t10;
    }

    @InterfaceC14422l0(version = "1.1")
    public static final <T> T B0(T t10, T t11, T t12, @NotNull Comparator<? super T> comparator) {
        M.p(comparator, "comparator");
        return (T) C0(t10, C0(t11, t12, comparator), comparator);
    }

    @InterfaceC14422l0(version = "1.1")
    public static final <T> T C0(T t10, T t11, @NotNull Comparator<? super T> comparator) {
        M.p(comparator, "comparator");
        return comparator.compare(t10, t11) <= 0 ? t10 : t11;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final <T> T D0(T t10, @NotNull T[] other, @NotNull Comparator<? super T> comparator) {
        M.p(other, "other");
        M.p(comparator, "comparator");
        for (T t11 : other) {
            if (comparator.compare(t10, t11) > 0) {
                t10 = t11;
            }
        }
        return t10;
    }

    @InterfaceC14422l0(version = "1.1")
    public static final <T> T y0(T t10, T t11, T t12, @NotNull Comparator<? super T> comparator) {
        M.p(comparator, "comparator");
        return (T) z0(t10, z0(t11, t12, comparator), comparator);
    }

    @InterfaceC14422l0(version = "1.1")
    public static final <T> T z0(T t10, T t11, @NotNull Comparator<? super T> comparator) {
        M.p(comparator, "comparator");
        return comparator.compare(t10, t11) >= 0 ? t10 : t11;
    }
}
