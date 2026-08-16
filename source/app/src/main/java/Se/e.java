package Se;

import Be.J;
import java.util.concurrent.TimeUnit;

public final class e extends J {

    public static final J f23101c = new e();

    public static final J.c f23102d = new a();

    public static final De.c f23103e;

    public static final class a extends J.c {
        @Override
        @Ce.f
        public De.c b(@Ce.f Runnable runnable) {
            runnable.run();
            return e.f23103e;
        }

        @Override
        @Ce.f
        public De.c c(@Ce.f Runnable runnable, long j10, @Ce.f TimeUnit timeUnit) {
            throw new UnsupportedOperationException("This scheduler doesn't support delayed execution");
        }

        @Override
        public boolean d() {
            return false;
        }

        @Override
        public void dispose() {
        }

        @Override
        @Ce.f
        public De.c e(@Ce.f Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
            throw new UnsupportedOperationException("This scheduler doesn't support periodic execution");
        }
    }

    static {
        De.c b10 = De.d.b();
        f23103e = b10;
        b10.dispose();
    }

    @Override
    @Ce.f
    public J.c c() {
        return f23102d;
    }

    @Override
    @Ce.f
    public De.c f(@Ce.f Runnable runnable) {
        runnable.run();
        return f23103e;
    }

    @Override
    @Ce.f
    public De.c g(@Ce.f Runnable runnable, long j10, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("This scheduler doesn't support delayed execution");
    }

    @Override
    @Ce.f
    public De.c h(@Ce.f Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("This scheduler doesn't support periodic execution");
    }
}
