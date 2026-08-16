package kotlin.time;

import kotlin.time.I;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

@InterfaceC14422l0(version = "1.3")
public final class F implements I.c {

    @NotNull
    public static final F f95830b = new F();

    public static final long f95831c = System.nanoTime();

    private final long f() {
        return System.nanoTime() - f95831c;
    }

    @Override
    public InterfaceC14035g a() {
        return I.b.a.d(e());
    }

    public final long b(long j10, long j11) {
        return I.b.a.h(C.d(j10, EnumC14039k.NANOSECONDS, j11));
    }

    public final long c(long j10, long j11) {
        return C.h(j10, j11, EnumC14039k.NANOSECONDS);
    }

    public final long d(long j10) {
        return C.f(f(), j10, EnumC14039k.NANOSECONDS);
    }

    public long e() {
        return I.b.a.h(f());
    }

    @NotNull
    public String toString() {
        return "TimeSource(System.nanoTime())";
    }

    @Override
    public H a() {
        return I.b.a.d(e());
    }
}
