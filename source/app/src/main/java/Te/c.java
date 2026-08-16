package Te;

import Be.InterfaceC2367q;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.CountDownLatch;

public abstract class c<T> extends CountDownLatch implements InterfaceC2367q<T> {

    public T f24840b;

    public Throwable f24841c;

    public hn.d f24842d;

    public volatile boolean f24843e;

    public c() {
        super(1);
    }

    @Override
    public final void a() {
        countDown();
    }

    public final T b() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.e.b();
                await();
            } catch (InterruptedException e10) {
                hn.d dVar = this.f24842d;
                this.f24842d = Ue.j.CANCELLED;
                if (dVar != null) {
                    dVar.cancel();
                }
                throw ExceptionHelper.f(e10);
            }
        }
        Throwable th2 = this.f24841c;
        if (th2 == null) {
            return this.f24840b;
        }
        throw ExceptionHelper.f(th2);
    }

    @Override
    public final void j(hn.d dVar) {
        if (Ue.j.o(this.f24842d, dVar)) {
            this.f24842d = dVar;
            if (this.f24843e) {
                return;
            }
            dVar.i(Long.MAX_VALUE);
            if (this.f24843e) {
                this.f24842d = Ue.j.CANCELLED;
                dVar.cancel();
            }
        }
    }
}
