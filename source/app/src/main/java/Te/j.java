package Te;

import Be.InterfaceC2367q;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class j<T> extends CountDownLatch implements InterfaceC2367q<T>, Future<T>, hn.d {

    public T f24863b;

    public Throwable f24864c;

    public final AtomicReference<hn.d> f24865d;

    public j() {
        super(1);
        this.f24865d = new AtomicReference<>();
    }

    @Override
    public void a() {
        hn.d dVar;
        if (this.f24863b == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        do {
            dVar = this.f24865d.get();
            if (dVar == this || dVar == Ue.j.CANCELLED) {
                return;
            }
        } while (!androidx.lifecycle.c.a(this.f24865d, dVar, this));
        countDown();
    }

    @Override
    public boolean cancel(boolean z10) {
        hn.d dVar;
        Ue.j jVar;
        do {
            dVar = this.f24865d.get();
            if (dVar == this || dVar == (jVar = Ue.j.CANCELLED)) {
                return false;
            }
        } while (!androidx.lifecycle.c.a(this.f24865d, dVar, jVar));
        if (dVar != null) {
            dVar.cancel();
        }
        countDown();
        return true;
    }

    @Override
    public T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            io.reactivex.internal.util.e.b();
            await();
        }
        if (!isCancelled()) {
            Throwable th2 = this.f24864c;
            if (th2 == null) {
                return this.f24863b;
            }
            throw new ExecutionException(th2);
        }
        throw new CancellationException();
    }

    @Override
    public void h(T t10) {
        if (this.f24863b == null) {
            this.f24863b = t10;
        } else {
            this.f24865d.get().cancel();
            onError(new IndexOutOfBoundsException("More than one element received"));
        }
    }

    @Override
    public void i(long j10) {
    }

    @Override
    public boolean isCancelled() {
        return this.f24865d.get() == Ue.j.CANCELLED;
    }

    @Override
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override
    public void j(hn.d dVar) {
        Ue.j.k(this.f24865d, dVar, Long.MAX_VALUE);
    }

    @Override
    public void onError(Throwable th2) {
        hn.d dVar;
        do {
            dVar = this.f24865d.get();
            if (dVar == this || dVar == Ue.j.CANCELLED) {
                Ye.a.Y(th2);
                return;
            }
            this.f24864c = th2;
        } while (!androidx.lifecycle.c.a(this.f24865d, dVar, this));
        countDown();
    }

    @Override
    public void cancel() {
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
            Throwable th2 = this.f24864c;
            if (th2 == null) {
                return this.f24863b;
            }
            throw new ExecutionException(th2);
        }
        throw new CancellationException();
    }
}
