package Qf;

import Xf.InterfaceC3312m;
import Xf.x;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.G;
import pf.H;
import pf.y0;
import pf.z0;

public final class a {
    @InterfaceC14422l0(version = "1.8")
    @NotNull
    public static final <T> InterfaceC3312m<T> a(@NotNull Optional<? extends T> optional) {
        M.p(optional, "<this>");
        return optional.isPresent() ? x.B(optional.get()) : x.l();
    }

    @InterfaceC14422l0(version = "1.8")
    public static final <T> T b(@NotNull Optional<? extends T> optional, T t10) {
        M.p(optional, "<this>");
        return optional.isPresent() ? optional.get() : t10;
    }

    @InterfaceC14422l0(version = "1.8")
    public static final <T> T c(@NotNull Optional<? extends T> optional, @NotNull Mf.a<? extends T> defaultValue) {
        M.p(optional, "<this>");
        M.p(defaultValue, "defaultValue");
        return optional.isPresent() ? optional.get() : defaultValue.invoke();
    }

    @InterfaceC14422l0(version = "1.8")
    @Nullable
    public static final <T> T d(@NotNull Optional<T> optional) {
        M.p(optional, "<this>");
        return optional.orElse(null);
    }

    @InterfaceC14422l0(version = "1.8")
    @NotNull
    public static final <T, C extends Collection<? super T>> C e(@NotNull Optional<T> optional, @NotNull C destination) {
        M.p(optional, "<this>");
        M.p(destination, "destination");
        if (optional.isPresent()) {
            T t10 = optional.get();
            M.o(t10, "get(...)");
            destination.add(t10);
        }
        return destination;
    }

    @InterfaceC14422l0(version = "1.8")
    @NotNull
    public static final <T> List<T> f(@NotNull Optional<? extends T> optional) {
        M.p(optional, "<this>");
        return optional.isPresent() ? G.l(optional.get()) : H.J();
    }

    @InterfaceC14422l0(version = "1.8")
    @NotNull
    public static final <T> Set<T> g(@NotNull Optional<? extends T> optional) {
        M.p(optional, "<this>");
        return optional.isPresent() ? y0.f(optional.get()) : z0.k();
    }
}
