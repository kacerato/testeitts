package kotlin.time;

import kotlin.jvm.internal.M;
import kotlin.time.H;
import nf.InterfaceC14422l0;
import nf.T0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@T0(markerClass = {o.class})
@InterfaceC14422l0(version = "1.9")
public interface InterfaceC14035g extends H, Comparable<InterfaceC14035g> {

    public static final class a {
        public static int a(@NotNull InterfaceC14035g interfaceC14035g, @NotNull InterfaceC14035g other) {
            M.p(other, "other");
            return C14036h.m(interfaceC14035g.p(other), C14036h.f95864c.W());
        }

        public static boolean b(@NotNull InterfaceC14035g interfaceC14035g) {
            return H.a.a(interfaceC14035g);
        }

        public static boolean c(@NotNull InterfaceC14035g interfaceC14035g) {
            return H.a.b(interfaceC14035g);
        }

        @NotNull
        public static InterfaceC14035g d(@NotNull InterfaceC14035g interfaceC14035g, long j10) {
            return interfaceC14035g.f(C14036h.l0(j10));
        }
    }

    boolean equals(@Nullable Object obj);

    @Override
    @NotNull
    InterfaceC14035g f(long j10);

    int hashCode();

    @Override
    @NotNull
    InterfaceC14035g l(long j10);

    int compareTo(@NotNull InterfaceC14035g interfaceC14035g);

    long p(@NotNull InterfaceC14035g interfaceC14035g);
}
