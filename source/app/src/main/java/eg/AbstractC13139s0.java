package eg;

import eg.AbstractC13137r0;
import java.util.concurrent.locks.LockSupport;
import org.jetbrains.annotations.NotNull;

public abstract class AbstractC13139s0 extends AbstractC13136q0 {
    @NotNull
    public abstract Thread k0();

    public void m0(long j10, @NotNull AbstractC13137r0.c cVar) {
        X.f85683h.y0(j10, cVar);
    }

    public final void n0() {
        nf.P0 p02;
        Thread k02 = k0();
        if (Thread.currentThread() != k02) {
            AbstractC13105b b10 = C13107c.b();
            if (b10 != null) {
                b10.g(k02);
                p02 = nf.P0.f98194a;
            } else {
                p02 = null;
            }
            if (p02 == null) {
                LockSupport.unpark(k02);
            }
        }
    }
}
