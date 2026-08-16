package Le;

import Be.AbstractC2362l;
import cf.AbstractC4183b;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;

public final class C2698c<T> implements Iterable<T> {

    public final hn.b<? extends T> f12619b;

    public static final class a<T> extends AbstractC4183b<Be.A<T>> implements Iterator<T> {

        public final Semaphore f12620c = new Semaphore(0);

        public final AtomicReference<Be.A<T>> f12621d = new AtomicReference<>();

        public Be.A<T> f12622e;

        @Override
        public void a() {
        }

        @Override
        public void h(Be.A<T> a10) {
            if (this.f12621d.getAndSet(a10) == null) {
                this.f12620c.release();
            }
        }

        @Override
        public boolean hasNext() {
            Be.A<T> a10 = this.f12622e;
            if (a10 != null && a10.g()) {
                throw ExceptionHelper.f(this.f12622e.d());
            }
            Be.A<T> a11 = this.f12622e;
            if ((a11 == null || a11.h()) && this.f12622e == null) {
                try {
                    io.reactivex.internal.util.e.b();
                    this.f12620c.acquire();
                    Be.A<T> andSet = this.f12621d.getAndSet(null);
                    this.f12622e = andSet;
                    if (andSet.g()) {
                        throw ExceptionHelper.f(andSet.d());
                    }
                } catch (InterruptedException e10) {
                    dispose();
                    this.f12622e = Be.A.b(e10);
                    throw ExceptionHelper.f(e10);
                }
            }
            return this.f12622e.h();
        }

        @Override
        public T next() {
            if (!hasNext() || !this.f12622e.h()) {
                throw new NoSuchElementException();
            }
            T e10 = this.f12622e.e();
            this.f12622e = null;
            return e10;
        }

        @Override
        public void onError(Throwable th2) {
            Ye.a.Y(th2);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public C2698c(hn.b<? extends T> bVar) {
        this.f12619b = bVar;
    }

    @Override
    public Iterator<T> iterator() {
        a aVar = new a();
        AbstractC2362l.a3(this.f12619b).N3().l6(aVar);
        return aVar;
    }
}
