package Je;

import Be.I;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class q<T> extends CountDownLatch implements I<T>, Future<T>, De.c {

    public T f10498b;

    public Throwable f10499c;

    public final AtomicReference<De.c> f10500d;

    public q() {
        super(1);
        this.f10500d = new AtomicReference<>();
    }

    @Override
    public void a() {
        De.c cVar;
        if (this.f10498b == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        do {
            cVar = this.f10500d.get();
            if (cVar == this || cVar == Ge.d.DISPOSED) {
                return;
            }
        } while (!androidx.lifecycle.c.a(this.f10500d, cVar, this));
        countDown();
    }

    @Override
    public boolean cancel(boolean z10) {
        De.c cVar;
        Ge.d dVar;
        do {
            cVar = this.f10500d.get();
            if (cVar == this || cVar == (dVar = Ge.d.DISPOSED)) {
                return false;
            }
        } while (!androidx.lifecycle.c.a(this.f10500d, cVar, dVar));
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
        Ge.d.h(this.f10500d, cVar);
    }

    @Override
    public T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            io.reactivex.internal.util.e.b();
            await();
        }
        if (!isCancelled()) {
            Throwable th2 = this.f10499c;
            if (th2 == null) {
                return this.f10498b;
            }
            throw new ExecutionException(th2);
        }
        throw new CancellationException();
    }

    @Override
    public void h(T t10) {
        if (this.f10498b == null) {
            this.f10498b = t10;
        } else {
            this.f10500d.get().dispose();
            onError(new IndexOutOfBoundsException("More than one element received"));
        }
    }

    @Override
    public boolean isCancelled() {
        return Ge.d.b(this.f10500d.get());
    }

    @Override
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override
    public void onError(Throwable th2) {
        De.c cVar;
        if (this.f10499c != null) {
            Ye.a.Y(th2);
            return;
        }
        this.f10499c = th2;
        do {
            cVar = this.f10500d.get();
            if (cVar == this || cVar == Ge.d.DISPOSED) {
                Ye.a.Y(th2);
                return;
            }
        } while (!androidx.lifecycle.c.a(this.f10500d, cVar, this));
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
            Throwable th2 = this.f10499c;
            if (th2 == null) {
                return this.f10498b;
            }
            throw new ExecutionException(th2);
        }
        throw new CancellationException();
    }
}
