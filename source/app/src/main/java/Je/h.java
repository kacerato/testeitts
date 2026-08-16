package Je;

import Be.InterfaceC2356f;
import Be.N;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class h<T> extends CountDownLatch implements N<T>, InterfaceC2356f, Be.v<T> {

    public T f10465b;

    public Throwable f10466c;

    public De.c f10467d;

    public volatile boolean f10468e;

    public h() {
        super(1);
    }

    @Override
    public void a() {
        countDown();
    }

    @Override
    public void b(T t10) {
        this.f10465b = t10;
        countDown();
    }

    public boolean c(long j10, TimeUnit timeUnit) {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.e.b();
                if (!await(j10, timeUnit)) {
                    i();
                    return false;
                }
            } catch (InterruptedException e10) {
                i();
                throw ExceptionHelper.f(e10);
            }
        }
        Throwable th2 = this.f10466c;
        if (th2 == null) {
            return true;
        }
        throw ExceptionHelper.f(th2);
    }

    public T d() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.e.b();
                await();
            } catch (InterruptedException e10) {
                i();
                throw ExceptionHelper.f(e10);
            }
        }
        Throwable th2 = this.f10466c;
        if (th2 == null) {
            return this.f10465b;
        }
        throw ExceptionHelper.f(th2);
    }

    @Override
    public void e(De.c cVar) {
        this.f10467d = cVar;
        if (this.f10468e) {
            cVar.dispose();
        }
    }

    public T f(T t10) {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.e.b();
                await();
            } catch (InterruptedException e10) {
                i();
                throw ExceptionHelper.f(e10);
            }
        }
        Throwable th2 = this.f10466c;
        if (th2 != null) {
            throw ExceptionHelper.f(th2);
        }
        T t11 = this.f10465b;
        return t11 != null ? t11 : t10;
    }

    public Throwable g() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.e.b();
                await();
            } catch (InterruptedException e10) {
                i();
                return e10;
            }
        }
        return this.f10466c;
    }

    public Throwable h(long j10, TimeUnit timeUnit) {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.e.b();
                if (!await(j10, timeUnit)) {
                    i();
                    throw ExceptionHelper.f(new TimeoutException(ExceptionHelper.e(j10, timeUnit)));
                }
            } catch (InterruptedException e10) {
                i();
                throw ExceptionHelper.f(e10);
            }
        }
        return this.f10466c;
    }

    public void i() {
        this.f10468e = true;
        De.c cVar = this.f10467d;
        if (cVar != null) {
            cVar.dispose();
        }
    }

    @Override
    public void onError(Throwable th2) {
        this.f10466c = th2;
        countDown();
    }
}
