package Je;

import Be.I;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.CountDownLatch;

public abstract class e<T> extends CountDownLatch implements I<T>, De.c {

    public T f10461b;

    public Throwable f10462c;

    public De.c f10463d;

    public volatile boolean f10464e;

    public e() {
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
                dispose();
                throw ExceptionHelper.f(e10);
            }
        }
        Throwable th2 = this.f10462c;
        if (th2 == null) {
            return this.f10461b;
        }
        throw ExceptionHelper.f(th2);
    }

    @Override
    public final boolean d() {
        return this.f10464e;
    }

    @Override
    public final void dispose() {
        this.f10464e = true;
        De.c cVar = this.f10463d;
        if (cVar != null) {
            cVar.dispose();
        }
    }

    @Override
    public final void e(De.c cVar) {
        this.f10463d = cVar;
        if (this.f10464e) {
            cVar.dispose();
        }
    }
}
