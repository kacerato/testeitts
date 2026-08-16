package pf;

import java.util.List;
import org.jetbrains.annotations.NotNull;

public class N extends M {
    @NotNull
    public static final <T> List<T> c1(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        return new v0(list);
    }

    @Lf.j(name = "asReversedMutable")
    @NotNull
    public static final <T> List<T> d1(@NotNull List<T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        return new u0(list);
    }

    public static final int e1(List<?> list, int i10) {
        if (i10 >= 0 && i10 <= H.L(list)) {
            return H.L(list) - i10;
        }
        throw new IndexOutOfBoundsException("Element index " + i10 + " must be in range [" + ((Object) new Vf.l(0, H.L(list))) + "].");
    }

    public static final int f1(List<?> list, int i10) {
        return H.L(list) - i10;
    }

    public static final int g1(List<?> list, int i10) {
        if (i10 >= 0 && i10 <= list.size()) {
            return list.size() - i10;
        }
        throw new IndexOutOfBoundsException("Position index " + i10 + " must be in range [" + ((Object) new Vf.l(0, list.size())) + "].");
    }
}
