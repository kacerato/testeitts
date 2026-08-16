package kotlin.time;

import nf.InterfaceC14422l0;
import nf.T0;
import org.jetbrains.annotations.NotNull;

@T0(markerClass = {o.class})
@InterfaceC14422l0(version = "1.9")
public interface H {

    public static final class a {
        public static boolean a(@NotNull H h10) {
            return C14036h.T(h10.a());
        }

        public static boolean b(@NotNull H h10) {
            return !C14036h.T(h10.a());
        }

        @NotNull
        public static H c(@NotNull H h10, long j10) {
            return h10.f(C14036h.l0(j10));
        }

        @NotNull
        public static H d(@NotNull H h10, long j10) {
            return new C14032d(h10, j10, null);
        }
    }

    long a();

    boolean b();

    boolean c();

    @NotNull
    H f(long j10);

    @NotNull
    H l(long j10);
}
