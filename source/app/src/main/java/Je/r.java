package Je;

import Be.N;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class r<T> extends CountDownLatch implements N<T>, Future<T>, De.c {

    public T f10501b;

    public Throwable f10502c;

    public final AtomicReference<De.c> f10503d;

    public r() {
        super(1);
        this.f10503d = new AtomicReference<>();
    }

    @Override
    public void b(T t10) {
        De.c cVar = this.f10503d.get();
        if (cVar == Ge.d.DISPOSED) {
            return;
        }
        this.f10501b = t10;
        androidx.lifecycle.c.a(this.f10503d, cVar, this);
        countDown();
    }

    @Override
    public boolean cancel(boolean z10) {
        De.c cVar;
        Ge.d dVar;
        do {
            cVar = this.f10503d.get();
            if (cVar == this || cVar == (dVar = Ge.d.DISPOSED)) {
                return false;
            }
        } while (!androidx.lifecycle.c.a(this.f10503d, cVar, dVar));
        if (cVar != null) {
            cVar.dispose();
        }
        countDown();
        return true;
    }

    @Override
    public boolean d() {
        return isDone();
    }

    @Override
    public void dispose() {
    }

    @Override
    public void e(De.c cVar) {
        Ge.d.h(this.f10503d, cVar);
    }

    @Override
    public T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            io.reactivex.internal.util.e.b();
            await();
        }
        if (!isCancelled()) {
            Throwable th2 = this.f10502c;
            if (th2 == null) {
                return this.f10501b;
            }
            throw new ExecutionException(th2);
        }
        throw new CancellationException();
    }

    @Override
    public boolean isCancelled() {
        return Ge.d.b(this.f10503d.get());
    }

    @Override
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override
    public void onError(Throwable th2) {
        De.c cVar;
        do {
            cVar = this.f10503d.get();
            if (cVar == Ge.d.DISPOSED) {
                Ye.a.Y(th2);
                return;
            }
            this.f10502c = th2;
        } while (!androidx.lifecycle.c.a(this.f10503d, cVar, this));
        countDown();
    }

    @Override
    public T get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        if (getCount() != 0) {
            io.reactivex.internal.util.e.b();
            if (!await(j10, timeUnit)) {
                throw new TimeoutException(ExceptionHelper.e(j10, timeUnit));
            }
        }
        if (!isCancelled()) {
            Throwable th2 = this.f10502c;
            if (th2 == null) {
                return this.f10501b;
            }
            throw new ExecutionException(th2);
        }
        throw new CancellationException();
    }
}
