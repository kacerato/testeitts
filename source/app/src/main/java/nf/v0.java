package nf;

import java.util.List;
import org.jetbrains.annotations.NotNull;

@Lf.j(name = "TuplesKt")
public final class v0 {
    @NotNull
    public static final <A, B> Z<A, B> a(A a10, B b10) {
        return new Z<>(a10, b10);
    }

    @NotNull
    public static final <T> List<T> b(@NotNull Z<? extends T, ? extends T> z10) {
        kotlin.jvm.internal.M.p(z10, "<this>");
        return pf.H.Q(z10.e(), z10.f());
    }

    @NotNull
    public static final <T> List<T> c(@NotNull C14439u0<? extends T, ? extends T, ? extends T> c14439u0) {
        kotlin.jvm.internal.M.p(c14439u0, "<this>");
        return pf.H.Q(c14439u0.f(), c14439u0.g(), c14439u0.h());
    }
}
