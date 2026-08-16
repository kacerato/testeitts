package qd;

import com.lmax.disruptor.AlertException;
import java.util.concurrent.atomic.AtomicBoolean;

public final class L<T> implements InterfaceRunnableC15067j {

    public final AtomicBoolean f106071b = new AtomicBoolean(false);

    public final z f106072c = new z(-1);

    public final y<T> f106073d;

    public final InterfaceC15056A f106074e;

    public final K<T> f106075f;

    public final p f106076g;

    public final z f106077h;

    public L(y<T> yVar, InterfaceC15056A interfaceC15056A, K<T> k10, p pVar, z zVar) {
        this.f106073d = yVar;
        this.f106074e = interfaceC15056A;
        this.f106075f = k10;
        this.f106076g = pVar;
        this.f106077h = zVar;
    }

    private void a() {
        K<T> k10 = this.f106075f;
        if (k10 instanceof t) {
            try {
                ((t) k10).c();
            } catch (Throwable th2) {
                this.f106076g.b(th2);
            }
        }
    }

    private void b() {
        K<T> k10 = this.f106075f;
        if (k10 instanceof t) {
            try {
                ((t) k10).onStart();
            } catch (Throwable th2) {
                this.f106076g.a(th2);
            }
        }
    }

    @Override
    public z R() {
        return this.f106072c;
    }

    @Override
    public void g() {
        this.f106071b.set(false);
        this.f106074e.d();
    }

    @Override
    public void run() {
        if (!this.f106071b.compareAndSet(false, true)) {
            throw new IllegalStateException("Thread is already running");
        }
        this.f106074e.e();
        b();
        long c10 = this.f106072c.c();
        T t10 = null;
        while (true) {
            boolean z10 = true;
            do {
                if (z10) {
                    try {
                        try {
                            c10 = this.f106077h.d();
                            this.f106072c.e(c10 - 1);
                            z10 = false;
                        } catch (AlertException unused) {
                            z10 = false;
                        }
                    } catch (Throwable th2) {
                        this.f106076g.c(th2, c10, t10);
                    }
                }
                try {
                    this.f106074e.a(c10);
                    t10 = this.f106073d.u(c10);
                    this.f106075f.a(t10);
                    break;
                } catch (AlertException unused2) {
                }
            } while (this.f106071b.get());
            a();
            this.f106071b.set(false);
            return;
        }
    }
}
