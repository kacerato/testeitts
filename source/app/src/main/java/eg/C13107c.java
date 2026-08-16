package eg;

import java.util.concurrent.locks.LockSupport;
import org.jetbrains.annotations.Nullable;

public final class C13107c {

    @Nullable
    public static AbstractC13105b f85698a;

    @Ef.f
    public static final long a() {
        AbstractC13105b b10 = b();
        return b10 != null ? b10.a() : System.currentTimeMillis();
    }

    @Nullable
    public static final AbstractC13105b b() {
        return f85698a;
    }

    @Ef.f
    public static final long c() {
        AbstractC13105b b10 = b();
        return b10 != null ? b10.b() : System.nanoTime();
    }

    @Ef.f
    public static final void d(Object obj, long j10) {
        nf.P0 p02;
        AbstractC13105b b10 = b();
        if (b10 != null) {
            b10.c(obj, j10);
            p02 = nf.P0.f98194a;
        } else {
            p02 = null;
        }
        if (p02 == null) {
            LockSupport.parkNanos(obj, j10);
        }
    }

    @Ef.f
    public static final void e() {
        AbstractC13105b b10 = b();
        if (b10 != null) {
            b10.d();
        }
    }

    public static final void f(@Nullable AbstractC13105b abstractC13105b) {
        f85698a = abstractC13105b;
    }

    @Ef.f
    public static final void g() {
        AbstractC13105b b10 = b();
        if (b10 != null) {
            b10.e();
        }
    }

    @Ef.f
    public static final void h() {
        AbstractC13105b b10 = b();
        if (b10 != null) {
            b10.f();
        }
    }

    @Ef.f
    public static final void i(Thread thread) {
        nf.P0 p02;
        AbstractC13105b b10 = b();
        if (b10 != null) {
            b10.g(thread);
            p02 = nf.P0.f98194a;
        } else {
            p02 = null;
        }
        if (p02 == null) {
            LockSupport.unpark(thread);
        }
    }

    @Ef.f
    public static final void j() {
        AbstractC13105b b10 = b();
        if (b10 != null) {
            b10.h();
        }
    }

    @Ef.f
    public static final Runnable k(Runnable runnable) {
        Runnable i10;
        AbstractC13105b b10 = b();
        return (b10 == null || (i10 = b10.i(runnable)) == null) ? runnable : i10;
    }
}
