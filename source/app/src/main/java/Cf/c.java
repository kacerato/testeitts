package Cf;

import kotlin.NotImplementedError;
import kotlin.jvm.internal.M;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14441w;
import nf.T0;
import org.jetbrains.annotations.NotNull;

public final class c {
    /* JADX WARN: Multi-variable type inference failed */
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.0")
    public static final <T extends Enum<T>> a<T> a() {
        throw new NotImplementedError(null, 1, 0 == true ? 1 : 0);
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.8")
    @NotNull
    public static final <E extends Enum<E>> a<E> b(@NotNull Mf.a<E[]> entriesProvider) {
        M.p(entriesProvider, "entriesProvider");
        return new d(entriesProvider.invoke());
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.8")
    @NotNull
    public static final <E extends Enum<E>> a<E> c(@NotNull E[] entries) {
        M.p(entries, "entries");
        return new d(entries);
    }
}
