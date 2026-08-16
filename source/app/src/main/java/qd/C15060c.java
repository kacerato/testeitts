package qd;

import com.lmax.disruptor.AlertException;
import com.lmax.disruptor.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

public final class C15060c<T> implements InterfaceRunnableC15067j {

    public final AtomicBoolean f106089b = new AtomicBoolean(false);

    public p f106090c = new q();

    public final InterfaceC15064g<T> f106091d;

    public final InterfaceC15056A f106092e;

    public final InterfaceC15066i<T> f106093f;

    public final z f106094g;

    public final I f106095h;

    public C15060c(InterfaceC15064g<T> interfaceC15064g, InterfaceC15056A interfaceC15056A, InterfaceC15066i<T> interfaceC15066i) {
        z zVar = new z(-1L);
        this.f106094g = zVar;
        this.f106091d = interfaceC15064g;
        this.f106092e = interfaceC15056A;
        this.f106093f = interfaceC15066i;
        if (interfaceC15066i instanceof D) {
            ((D) interfaceC15066i).a(zVar);
        }
        this.f106095h = interfaceC15066i instanceof I ? (I) interfaceC15066i : null;
    }

    @Override
    public z R() {
        return this.f106094g;
    }

    public final void a() {
        InterfaceC15066i<T> interfaceC15066i = this.f106093f;
        if (interfaceC15066i instanceof t) {
            try {
                ((t) interfaceC15066i).c();
            } catch (Throwable th2) {
                this.f106090c.b(th2);
            }
        }
    }

    public final void b() {
        InterfaceC15066i<T> interfaceC15066i = this.f106093f;
        if (interfaceC15066i instanceof t) {
            try {
                ((t) interfaceC15066i).onStart();
            } catch (Throwable th2) {
                this.f106090c.a(th2);
            }
        }
    }

    public final void c(long j10) {
        try {
            I i10 = this.f106095h;
            if (i10 != null) {
                i10.b(j10);
            }
        } catch (Throwable th2) {
            this.f106090c.c(th2, j10, null);
        }
    }

    public void d(p pVar) {
        if (pVar == null) {
            throw null;
        }
        this.f106090c = pVar;
    }

    @Override
    public void g() {
        this.f106089b.set(false);
        this.f106092e.d();
    }

    @Override
    public void run() {
        if (!this.f106089b.compareAndSet(false, true)) {
            throw new IllegalStateException("Thread is already running");
        }
        this.f106092e.e();
        b();
        long c10 = this.f106094g.c() + 1;
        T t10 = null;
        while (true) {
            try {
                long a10 = this.f106092e.a(c10);
                while (c10 <= a10) {
                    t10 = this.f106091d.u(c10);
                    this.f106093f.b(t10, c10, c10 == a10);
                    c10++;
                }
                this.f106094g.e(a10);
            } catch (AlertException unused) {
                if (!this.f106089b.get()) {
                    a();
                    this.f106089b.set(false);
                    return;
                }
            } catch (TimeoutException unused2) {
                c(this.f106094g.c());
            } catch (Throwable th2) {
                this.f106090c.c(th2, c10, t10);
                this.f106094g.e(c10);
                c10++;
            }
        }
    }
}
